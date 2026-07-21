{
    if(_EmissionEnable){
        if(_EmissionUsePhaseAdd){
            half3 newColor = _EmissionUseBaseCol ? max(sd.lightColor, saturate(sd.lightColor * _EmissionBoost * _EmissionColor)) : (_EmissionBoost * _EmissionColor);
            
            if(_EmissionUseTex)
            {
                newColor *= SCSample(_EmissionTex, sampler_BaseTexture, sd.uv);
            }
            
            sd.add += _EmissionUseMask ? newColor * sd.mask[_EmissionMaskChannel] : newColor;
        }
    }
}