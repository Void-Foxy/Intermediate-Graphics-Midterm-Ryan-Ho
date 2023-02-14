Shader "Custom/NormalMap"
{
	Properties{
		_Color("Color", Color) = (1,1,1,1)//change to import a new color
			 _myDiffuse("Diffuse Texture", 2D) = "white" {}
			 _myBump("Bump Texture", 2D) = "bump" {}
			 _mySlider("Bump Amount", Range(0,10)) = 1
	}
		SubShader{
			CGPROGRAM
				#pragma surface surf Lambert
			
			fixed4 _Color;
				sampler2D _myDiffuse;
				sampler2D _myBump;
				half _mySlider;

				struct Input {
						float2 uv_myDiffuse;
						float2 uv_myBump;
				};

				void surf(Input IN, inout SurfaceOutput o) {
						o.Albedo = tex2D(_myDiffuse, IN.uv_myDiffuse).rgb * _Color.rgb;//texutre is multiplied by color to be able to change the resulting end color without swapping materials 
						o.Normal = UnpackNormal(tex2D(_myBump, IN.uv_myBump));
						o.Normal *= float3(_mySlider,_mySlider,1);
				}
					ENDCG
			 }

				 Fallback "Diffuse"
}
