// Unity built-in shader source. Copyright (c) 2016 Unity Technologies. MIT license (see license.txt)

#ifndef UNITY_STANDARD_CORE_FORWARD_INCLUDED_FUR
#define UNITY_STANDARD_CORE_FORWARD_INCLUDED_FUR

#if defined(UNITY_NO_FULL_STANDARD_SHADER)
#   define UNITY_STANDARD_SIMPLE 1
#endif

#include "UnityStandardConfigFabric.cginc"

#if UNITY_STANDARD_SIMPLE
    #include "UnityStandardCoreForwardSimpleFabric.cginc"
    VertexOutputBaseSimple vertBase (VertexInput v) { return vertForwardBaseSimple(v); }
    VertexOutputForwardAddSimple vertAdd (VertexInput v) { return vertForwardAddSimple(v); }
    half4 fragBase (VertexOutputBaseSimple i) : SV_Target { return fragForwardBaseSimpleInternal(i); }
    half4 fragAdd (VertexOutputForwardAddSimple i) : SV_Target { return fragForwardAddSimpleInternal(i); }

	VertexOutputForwardBase vertBaseFur_Layer1(VertexInput v) { return vertForwardBaseSimpleFur(v, 1); }
	VertexOutputForwardBase vertBaseFur_Layer2(VertexInput v) { return vertForwardBaseSimpleFur(v, 2); }
	VertexOutputForwardBase vertBaseFur_Layer3(VertexInput v) { return vertForwardBaseSimpleFur(v, 3); }
	VertexOutputForwardBase vertBaseFur_Layer4(VertexInput v) { return vertForwardBaseSimpleFur(v, 4); }
	VertexOutputForwardBase vertBaseFur_Layer5(VertexInput v) { return vertForwardBaseSimpleFur(v, 5); }
	VertexOutputForwardBase vertBaseFur_Layer6(VertexInput v) { return vertForwardBaseSimpleFur(v, 6); }
	VertexOutputForwardBase vertBaseFur_Layer7(VertexInput v) { return vertForwardBaseSimpleFur(v, 7); }
	VertexOutputForwardBase vertBaseFur_Layer8(VertexInput v) { return vertForwardBaseSimpleFur(v, 8); }
	VertexOutputForwardBase vertBaseFur_Layer9(VertexInput v) { return vertForwardBaseSimpleFur(v, 9); }
	VertexOutputForwardBase vertBaseFur_Layer10(VertexInput v) { return vertForwardBaseSimpleFur(v, 10); }
	VertexOutputForwardBase vertBaseFur_Layer11(VertexInput v) { return vertForwardBaseSimpleFur(v, 11); }
	VertexOutputForwardBase vertBaseFur_Layer12(VertexInput v) { return vertForwardBaseSimpleFur(v, 12); }
	VertexOutputForwardBase vertBaseFur_Layer13(VertexInput v) { return vertForwardBaseSimpleFur(v, 13); }
	VertexOutputForwardBase vertBaseFur_Layer14(VertexInput v) { return vertForwardBaseSimpleFur(v, 14); }
	VertexOutputForwardBase vertBaseFur_Layer15(VertexInput v) { return vertForwardBaseSimpleFur(v, 15); }
	VertexOutputForwardBase vertBaseFur_Layer16(VertexInput v) { return vertForwardBaseSimpleFur(v, 16); }
	VertexOutputForwardBase vertBaseFur_Layer17(VertexInput v) { return vertForwardBaseSimpleFur(v, 17); }
	VertexOutputForwardBase vertBaseFur_Layer18(VertexInput v) { return vertForwardBaseSimpleFur(v, 18); }
	VertexOutputForwardBase vertBaseFur_Layer19(VertexInput v) { return vertForwardBaseSimpleFur(v, 19); }
	VertexOutputForwardBase vertBaseFur_Layer20(VertexInput v) { return vertForwardBaseSimpleFur(v, 20); }
	half4 fragBaseFur_Layer1(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 1); }
	half4 fragBaseFur_Layer2(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 2); }
	half4 fragBaseFur_Layer3(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 3); }
	half4 fragBaseFur_Layer4(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 4); }
	half4 fragBaseFur_Layer5(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 5); }
	half4 fragBaseFur_Layer6(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 6); }
	half4 fragBaseFur_Layer7(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 7); }
	half4 fragBaseFur_Layer8(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 8); }
	half4 fragBaseFur_Layer9(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 9); }
	half4 fragBaseFur_Layer10(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 10); }
	half4 fragBaseFur_Layer11(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 11); }
	half4 fragBaseFur_Layer12(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 12); }
	half4 fragBaseFur_Layer13(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 13); }
	half4 fragBaseFur_Layer14(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 14); }
	half4 fragBaseFur_Layer15(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 15); }
	half4 fragBaseFur_Layer16(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 16); }
	half4 fragBaseFur_Layer17(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 17); }
	half4 fragBaseFur_Layer18(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 18); }
	half4 fragBaseFur_Layer19(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 19); }
	half4 fragBaseFur_Layer20(VertexOutputBaseSimple i) : SV_Target{ return fragForwardBaseSimpleInternalFur(i, 20); }
#else
    #include "UnityStandardCoreFabric.cginc"
    VertexOutputForwardBase vertBase (VertexInput v) { return vertForwardBase(v); }
    VertexOutputForwardAdd vertAdd (VertexInput v) { return vertForwardAdd(v); }
    half4 fragBase (VertexOutputForwardBase i) : SV_Target { return fragForwardBaseInternal(i); }
    half4 fragAdd (VertexOutputForwardAdd i) : SV_Target { return fragForwardAddInternal(i); }

	VertexOutputForwardBase vertBaseFur_Layer1(VertexInput v) { return vertForwardBaseFur(v, 1); }
	VertexOutputForwardBase vertBaseFur_Layer2(VertexInput v) { return vertForwardBaseFur(v, 2); }
	VertexOutputForwardBase vertBaseFur_Layer3(VertexInput v) { return vertForwardBaseFur(v, 3); }
	VertexOutputForwardBase vertBaseFur_Layer4(VertexInput v) { return vertForwardBaseFur(v, 4); }
	VertexOutputForwardBase vertBaseFur_Layer5(VertexInput v) { return vertForwardBaseFur(v, 5); }
	VertexOutputForwardBase vertBaseFur_Layer6(VertexInput v) { return vertForwardBaseFur(v, 6); }
	VertexOutputForwardBase vertBaseFur_Layer7(VertexInput v) { return vertForwardBaseFur(v, 7); }
	VertexOutputForwardBase vertBaseFur_Layer8(VertexInput v) { return vertForwardBaseFur(v, 8); }
	VertexOutputForwardBase vertBaseFur_Layer9(VertexInput v) { return vertForwardBaseFur(v, 9); }
	VertexOutputForwardBase vertBaseFur_Layer10(VertexInput v) { return vertForwardBaseFur(v, 10); }
	VertexOutputForwardBase vertBaseFur_Layer11(VertexInput v) { return vertForwardBaseFur(v, 11); }
	VertexOutputForwardBase vertBaseFur_Layer12(VertexInput v) { return vertForwardBaseFur(v, 12); }
	VertexOutputForwardBase vertBaseFur_Layer13(VertexInput v) { return vertForwardBaseFur(v, 13); }
	VertexOutputForwardBase vertBaseFur_Layer14(VertexInput v) { return vertForwardBaseFur(v, 14); }
	VertexOutputForwardBase vertBaseFur_Layer15(VertexInput v) { return vertForwardBaseFur(v, 15); }
	VertexOutputForwardBase vertBaseFur_Layer16(VertexInput v) { return vertForwardBaseFur(v, 16); }
	VertexOutputForwardBase vertBaseFur_Layer17(VertexInput v) { return vertForwardBaseFur(v, 17); }
	VertexOutputForwardBase vertBaseFur_Layer18(VertexInput v) { return vertForwardBaseFur(v, 18); }
	VertexOutputForwardBase vertBaseFur_Layer19(VertexInput v) { return vertForwardBaseFur(v, 19); }
	VertexOutputForwardBase vertBaseFur_Layer20(VertexInput v) { return vertForwardBaseFur(v, 20); }
	half4 fragBaseFur_Layer1(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 1); }
	half4 fragBaseFur_Layer2(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 2); }
	half4 fragBaseFur_Layer3(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 3); }
	half4 fragBaseFur_Layer4(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 4); }
	half4 fragBaseFur_Layer5(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 5); }
	half4 fragBaseFur_Layer6(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 6); }
	half4 fragBaseFur_Layer7(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 7); }
	half4 fragBaseFur_Layer8(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 8); }
	half4 fragBaseFur_Layer9(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 9); }
	half4 fragBaseFur_Layer10(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 10); }
	half4 fragBaseFur_Layer11(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 11); }
	half4 fragBaseFur_Layer12(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 12); }
	half4 fragBaseFur_Layer13(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 13); }
	half4 fragBaseFur_Layer14(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 14); }
	half4 fragBaseFur_Layer15(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 15); }
	half4 fragBaseFur_Layer16(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 16); }
	half4 fragBaseFur_Layer17(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 17); }
	half4 fragBaseFur_Layer18(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 18); }
	half4 fragBaseFur_Layer19(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 19); }
	half4 fragBaseFur_Layer20(VertexOutputForwardBase i) : SV_Target{ return fragForwardBaseInternalFur(i, 20); }
#endif

#endif // UNITY_STANDARD_CORE_FORWARD_INCLUDED
