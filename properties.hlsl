SC_uint(_EmissionEnable, 0, [SCInHeader][SCToggle][SCConstValue(1,pixel)], "", "")

SC_color(_EmissionColor, (1,1,1,1), [SCHDR], "Color", "")
SC_float(_EmissionBoost, 1, [SCRange(0,1)], "Emission Boost", "")
SC_uint(_EmissionUseBaseCol, 0, [SCToggle], "Use Base Color", "")

SC_Texture2D(_EmissionTex, "black", [SCCache], "Emission Texture", "")
SC_uint(_EmissionUseTex, 0, [SCToggle], "Use Texture", "")

SC_uint(_EmissionMaskChannel, 3, [SCCache][SCMaskChannel], "__MaskChannel", "")
SC_uint(_EmissionUseMask, 1, [SCToggle], "Use Mask", "")
SC_uint(_EmissionUsePhaseAdd, 0, [SCToggle], "Additive Shading", "")
