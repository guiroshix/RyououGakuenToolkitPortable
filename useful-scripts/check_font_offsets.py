import struct

# This script is useful to remap the offsets located in union_2529_0.h
# It creates a file named indices that contains the letter you want along the offset with it.

lista = [
    "aa",
    "Az",
    
    "ba",
    "Bz",
    
    "ca",
    "Cz",
    
    "da",
    "Dz",
    
    "ea",
    "Ez",
    
    "fa",
    "Fz",
    
    "ga",
    "Gz",
    
    "ha",
    "Hz",
    
    "ia",
    "Iz",
    
    "ja",
    "Jz",
    
    "ka",
    "Kz",
    
    "la",
    "Lz",
    
    "ma",
    "Mz",
    
    "na",
    "Nz",
    
    "oa",
    "Oz",
    
    "pa",
    "Pz",
    
    "qa",
    "Qz",
    
    "ra",
    "Rz",
    
    "sa",
    "Sz",
    
    "ta",
    "Tz",
    
    "ua",
    "Uz",
    
    "va",
    "Vz",
    
    "wa",
    "Wz",
    
    "xa",
    "Xz",
    
    "ya",
    "Yz",
    
    "za",
    "Zz",
    
    ]

def achar_linha(arquivo, texto):
    with open(arquivo, "r", encoding="utf-8") as f:
        for numero, linha in enumerate(f):
            if linha.strip() == texto:
                return struct.pack("<H", numero)

resultado = {}

for letra in lista:
    valor = achar_linha("english_font_strings.txt", letra)
    resultado[letra] = valor

with open("offsets.txt", "w") as f:
    for letra, valor in resultado.items():
        f.write(letra + ":" + valor.hex() + "\n" + "\n")
