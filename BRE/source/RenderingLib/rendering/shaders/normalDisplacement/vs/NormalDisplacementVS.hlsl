struct VS_INPUT {
	float4 PosOS : POSITION;
	float2 TexCoord : TEXCOORD;
	float3 NormalOS : NORMAL;
	float3 TangentOS : TANGENT;
};

struct VS_OUTPUT {
	float4 PosOS : POSITION;
	float3 NormalOS : NORMAL;
	float2 TexCoord : TEXCOORD0;
	float3 TangentOS : TANGENT;
};

VS_OUTPUT main(const VS_INPUT IN) {
	VS_OUTPUT OUT = (VS_OUTPUT)0;

	// Pass through object space position
	OUT.PosOS = IN.PosOS;

	// Pass through local normal
	OUT.NormalOS = IN.NormalOS;

	// Pass through texture coordinates
	OUT.TexCoord = IN.TexCoord;

	// Pass throught tangent
	OUT.TangentOS = IN.TangentOS;

	return OUT;
}