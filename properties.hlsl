SC_Box
SC_Texture2D(_RoughnessMap, "white", [SCCache], "Roughness Map", "")
SC_float(_RoughnessMapIntensity, 1, [SCRange(0, 1)], "Roughness Multiplier", "")

SC_Texture2D(_MetallicMap, "white", [SCCache], "Metallic Map", "")
SC_float(_MetallicMapIntensity, 1, [SCRange(0, 1)], "Metallic Multiplier", "")
SC_BoxEnd