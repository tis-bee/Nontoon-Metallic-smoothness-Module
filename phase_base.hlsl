{
    sd.normalMapWithRoughness = 1;

    half roughnessTex = SCSample(_RoughnessMap, sampler_BaseTexture, sd.uv).r;
    half metallicTex = SCSample(_MetallicMap, sampler_BaseTexture, sd.uv).r;

    half metallic = saturate(metallicTex * _MetallicMapIntensity);


    sd.roughness -= saturate(_Roughness * roughnessTex * (_RoughnessMapIntensity * 10));

    sd.albedoAlpha.rgb = lerp(sd.albedoAlpha.rgb, sd.albedoAlpha.rgb * 0.15, metallic);
}