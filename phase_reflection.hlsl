{
    if(_MetRoughEnable){
        half roughnessSample = SCSample(_RoughnessMap, sampler_BaseTexture, sd.uv).r;
        sd.roughness -= saturate(sd.roughness * roughnessSample * (_RoughnessMapIntensity * 10));

        half metallicSample = SCSample(_MetallicMap, sampler_BaseTexture, sd.uv).r;
        half metallic = saturate(metallicSample * _MetallicMapIntensity);

        half3 viewDir = normalize(vertex.V);
        half NdotV = saturate(dot(sd.N, viewDir));

        half3 f0 = lerp(half3(0.04, 0.04, 0.04), sd.col.rgb, metallic);
        half3 fresnel = f0 + (half3(1.0, 1.0, 1.0) - f0) * pow(1.0 - NdotV, 5.0);

        half reflectionFactor = metallic * (1.0 - sd.roughness);
        half3 specColor = fresnel * reflectionFactor;

        sd.postadd.r += sd.lightColor.r * specColor.r;
        sd.postadd.g += sd.lightColor.g * specColor.g;
        sd.postadd.b += sd.lightColor.b * specColor.b;
    }
}