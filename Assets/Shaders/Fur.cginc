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
	float4 uv : TEXCOORD0;
	float3 worldNormal : TEXCOORD1;
	float3 worldPos : TEXCOORD2;
};

float4 _Color;
sampler2D _MainTex;
float4 _MainTex_ST;
sampler2D _FurTex;
float4 _FurTex_ST;
float4 _Gravity;
float4 _RimColor;
float _RimPower;
float _FurShading;
float _FurLength;

v2f vert_base(a2v v)
{
	v2f o;

	o.vertex = UnityObjectToClipPos(v.vertex);
	o.uv.xy = TRANSFORM_TEX(v.uv, _MainTex);
	return o;
}

fixed4 frag_base(v2f i) : SV_Target
{
	fixed4 mainCol = tex2D(_MainTex, i.uv.xy);
	return mainCol * _Color;
}

v2f vert_fur(a2v v)
{
	v2f o;

	float3 gravity = _Gravity.xyz * _Gravity.w + v.normal;
	float3 normal = lerp(v.normal, gravity, FUR_OFFSET);

	v.vertex.xyz += normal * FUR_OFFSET * _FurLength * 0.01;
	o.vertex = UnityObjectToClipPos(v.vertex);
	o.uv.xy = TRANSFORM_TEX(v.uv, _MainTex);
	o.uv.zw = TRANSFORM_TEX(v.uv, _FurTex);
	o.worldNormal = UnityObjectToWorldNormal(normal);
	o.worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
	return o;
}

fixed4 frag_fur(v2f i) : SV_Target
{
	fixed4 mainCol = tex2D(_MainTex, i.uv.xy);
	fixed4 furCol = tex2D(_FurTex, i.uv.zw);
	
	float3 worldNormal = normalize(i.worldNormal);
	float3 worldView = normalize(_WorldSpaceCameraPos.xyz - i.worldPos);
	float occlusion = FUR_OFFSET * FUR_OFFSET + 0.04;
	float fresnel = 1 - max(0, dot(worldNormal, worldView));
	float rimLight = fresnel * occlusion;

	mainCol.rgb *= _Color;
	mainCol.rgb -= pow(1 - FUR_OFFSET, 3) * _FurShading;
	mainCol.rgb += _RimColor * pow(rimLight, _RimPower);

	float alpha = 1 - FUR_OFFSET * FUR_OFFSET;
	alpha = max(0, alpha);
	alpha *= step(FUR_OFFSET * FUR_OFFSET, furCol.r);
	mainCol.a = alpha;

	return mainCol;
}

#endif