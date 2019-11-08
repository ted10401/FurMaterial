#ifndef FUR_INCLUDED
#define FUR_INCLUDED

#include "UnityCG.cginc"

struct a2v
{
	float4 vertex : POSITION;
	float3 normal : NORMAL;
	float4 color : COLOR;
	float2 uv : TEXCOORD0;
};

struct v2f
{
	float4 vertex : SV_POSITION;
	float2 uv_main : TEXCOORD0;
	float2 uv_fur : TEXCOORD0;
};

sampler2D _MainTex;
float4 _MainTex_ST;
sampler2D _FurTex;
float4 _FurTex_ST;
float _FurLength;
float _FurDensity;

v2f vert_base(a2v v)
{
	v2f o;

	o.vertex = UnityObjectToClipPos(v.vertex);
	o.uv_main = TRANSFORM_TEX(v.uv, _MainTex);
	return o;
}

fixed4 frag_base(v2f i) : SV_Target
{
	fixed4 mainCol = tex2D(_MainTex, i.uv_main);
	return mainCol;
}

v2f vert_fur(a2v v)
{
	v2f o;

	v.vertex.xyz += v.normal * FUR_OFFSET * _FurLength * 0.01;
	o.vertex = UnityObjectToClipPos(v.vertex);
	o.uv_main = TRANSFORM_TEX(v.uv, _MainTex);
	o.uv_fur = TRANSFORM_TEX(v.uv, _FurTex);
	return o;
}

fixed4 frag_fur(v2f i) : SV_Target
{
	fixed4 mainCol = tex2D(_MainTex, i.uv_main);
	fixed4 furCol = tex2D(_FurTex, i.uv_fur);
	mainCol.a = clamp(furCol - FUR_OFFSET * FUR_OFFSET * _FurDensity, 0, 1);

	return mainCol;
}

#endif