Shader "Unlit/Fur_Simple"
{
    Properties
    {
		_Color ("Color", Color) = (1, 1, 1, 1)
        _MainTex ("Main Texture", 2D) = "white" {}
		_FurTex ("Fur Texture", 2D) = "white" {}
		_Gravity("Gravity (xyz: direction, w: strength)", Vector) = (0, -1, 0, 1)
		_RimColor("Rim Color", Color) = (1, 1, 1, 1)
		_RimPower("Rim Power", Float) = 1
		_FurShading ("Fur Shading", Float) = 1
		_FurLength ("Fur Length", Float) = 1
		_FurDensity ("Fur Density", Float) = 1
    }
    SubShader
    {
		Tags {"RenderType" = "Transparent" "Queue" = "Transparent"}
		Blend SrcAlpha OneMinusSrcAlpha
        LOD 100

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0
			#pragma vertex vert_base
			#pragma fragment frag_base
			#include "Fur.cginc"
			ENDCG
		}

        Pass
        {
            CGPROGRAM
			#define FUR_OFFSET 0.05
            #pragma vertex vert_fur
            #pragma fragment frag_fur
            #include "Fur.cginc"
            ENDCG
        }

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.1
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.15
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.2
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.25
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.3
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.35
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.4
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.45
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.5
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.55
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.6
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.65
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.7
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.75
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.8
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.85
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.9
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 0.95
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#define FUR_OFFSET 1
			#pragma vertex vert_fur
			#pragma fragment frag_fur
			#include "Fur.cginc"
			ENDCG
		}
    }
}
