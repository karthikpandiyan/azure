# SharePoint references that need to remove when uninstall
$ReferencesToRemoveWhenUninstall = @(
    @("Microsoft.SharePoint.Client"),
    @("Microsoft.SharePoint.Client.Runtime")
)

# SharePoint references that need to be copy local
$CopyLocalReferences = @(
    @("Microsoft.IdentityModel"),
    @("Microsoft.IdentityModel.Extensions"),
    @("Microsoft.SharePoint.Client"),
    @("Microsoft.SharePoint.Client.Runtime")
)

# Imports needed for VB project
$VbImports = @(
    "Microsoft.SharePoint.Client"
)

Export-ModuleMember -Variable @( 'ReferencesToRemoveWhenUninstall', 'CopyLocalReferences', 'VbImports' )
# SIG # Begin signature block
# MIIhgAYJKoZIhvcNAQcCoIIhcTCCIW0CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBzeEkSK+dB6UDh
# z8LUwz3EonW/K6M8lJX+C8wFQ7VbRaCCCzAwggS4MIIDoKADAgECAhMzAAAAFhEE
# tIg4jL7DAAAAAAAWMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTAwHhcNMTIwODMwMTc0OTAzWhcNMTMxMTMwMTc0OTAzWjCBgzEL
# MAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1v
# bmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjENMAsGA1UECxMETU9Q
# UjEeMBwGA1UEAxMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMIIBIjANBgkqhkiG9w0B
# AQEFAAOCAQ8AMIIBCgKCAQEAoFCfHU6UugcK3L6WSeE9oAbvlb75vVYqW5zvHhEu
# xtbhLbJvzDMtnh6ksYIWymQxqYomgfTjLvIeDhzI4Vnh1CM9ZXf/6uW3s40I9hLX
# b0lXpIXjBB7QQqinstswChXRyTVtf7yGXqU+tpBkBSQcPqBxaAox937Ulektm8pl
# BXoUAgwJ9rPdcV0mH1oLLwm6ZzJsnBXYnDyJ6Ec676YU30I+IR67MeIs0VT26oCS
# K5M0d22SZyY2wSox23gTSauTldxsqgwAccDNzd1j7ZFXl6+MKoTF3g11ZYzg0R9B
# O7u1ktJpOXWYAExsTD0YQwPOZjucXU5ReJFCO37QWuBfQwIDAQABo4IBJzCCASMw
# HwYDVR0lBBgwFgYIKwYBBQUHAwMGCisGAQQBgjc9BgEwHQYDVR0OBBYEFGvZ8Xb4
# o3g0pPdGnifxsLlszzamMB8GA1UdIwQYMBaAFOb8X3u7IgBY5HJOtfQhdCMy5u+s
# MFYGA1UdHwRPME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kv
# Y3JsL3Byb2R1Y3RzL01pY0NvZFNpZ1BDQV8yMDEwLTA3LTA2LmNybDBaBggrBgEF
# BQcBAQROMEwwSgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9w
# a2kvY2VydHMvTWljQ29kU2lnUENBXzIwMTAtMDctMDYuY3J0MAwGA1UdEwEB/wQC
# MAAwDQYJKoZIhvcNAQELBQADggEBAFJC8724+Xy7MrKL26QtkBCpQrdInr35S1zM
# IWCkvYCXYy4qifab1rwikgFznoP78otrvTBa7O0wPu7I4X+oNyn3TB+t3iPXKm0l
# CtEwPkPxqrVFOKtuROPQoQMz11o05SExK44oLnjtZXIHh7X+vBbErC9ky6LNyeoH
# anVi68zmZqk8wTI5xdHAbGv6BTwrbbP7R/26vByAXRKG1Cva0iwoMn1XBYQngR/w
# QWVSAfBqr3kNuO3AY6dE1vmeAlVFDnheXNsAeullJHMSeLZQ+TYmSJQE7dhA1eE9
# QzcfmEWdLOM22nMwVJdqHiBcE/kO2Iwwtus+dYSl62OSCi1JS7YwggZwMIIEWKAD
# AgECAgphDFJMAAAAAAADMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzET
# MBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMV
# TWljcm9zb2Z0IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBD
# ZXJ0aWZpY2F0ZSBBdXRob3JpdHkgMjAxMDAeFw0xMDA3MDYyMDQwMTdaFw0yNTA3
# MDYyMDUwMTdaMH4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAw
# DgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24x
# KDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTAwggEiMA0G
# CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDpDmRQeWe1xOP9CQBMnpSs91Zo6kTY
# z8VYT6mldnxtRbrTOZK0pB75+WWC5BfSj/1EnAjoZZPOLFWEv30I4y4rqEErGLei
# S25JTGsVB97R0sKJHnGUzbV/S7SvCNjMiNZrF5Q6k84mP+zm/jSYV9UdXUn2siou
# 1YW7WT/4kLQrg3TKK7M7RuPwRknBF2ZUyRy9HcRVYldy+Ge5JSA03l2mpZVeqyiA
# zdWynuUDtWPTshTIwciKJgpZfwfs/w7tgBI1TBKmvlJb9aba4IsLSHfWhUfVELnG
# 6Krui2otBVxgxrQqW5wjHF9F4xoUHm83yxkzgGqJTaNqZmN4k9Uwz5UfAgMBAAGj
# ggHjMIIB3zAQBgkrBgEEAYI3FQEEAwIBADAdBgNVHQ4EFgQU5vxfe7siAFjkck61
# 9CF0IzLm76wwGQYJKwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwCwYDVR0PBAQDAgGG
# MA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAU1fZWy4/oolxiaNE9lJBb186a
# GMQwVgYDVR0fBE8wTTBLoEmgR4ZFaHR0cDovL2NybC5taWNyb3NvZnQuY29tL3Br
# aS9jcmwvcHJvZHVjdHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3JsMFoGCCsG
# AQUFBwEBBE4wTDBKBggrBgEFBQcwAoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L3BraS9jZXJ0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcnQwgZ0GA1UdIASB
# lTCBkjCBjwYJKwYBBAGCNy4DMIGBMD0GCCsGAQUFBwIBFjFodHRwOi8vd3d3Lm1p
# Y3Jvc29mdC5jb20vUEtJL2RvY3MvQ1BTL2RlZmF1bHQuaHRtMEAGCCsGAQUFBwIC
# MDQeMiAdAEwAZQBnAGEAbABfAFAAbwBsAGkAYwB5AF8AUwB0AGEAdABlAG0AZQBu
# AHQALiAdMA0GCSqGSIb3DQEBCwUAA4ICAQAadO9XTyl7xBaFeLhQ0yL8CZ2sgpf4
# NP8qLJeVEuXkv8+/k8jjNKnbgbjcHgC+0jVvr+V/eZV35QLU8evYzU4eG2Giwloj
# GvCMqGJRRWcI4z88HpP4MIUXyDlAptcOsyEp5aWhaYwik8x0mOehR0PyU6zADzBp
# f/7SJSBtb2HT3wfV2XIALGmGdj1R26Y5SMk3YW0H3VMZy6fWYcK/4oOrD+Brm5XW
# fShRsIlKUaSabMi3H0oaDmmp19zBftFJcKq2rbtyR2MX+qbWoqaG7KgQRJtjtrJp
# iQbHRoZ6GD/oxR0h1Xv5AiMtxUHLvx1MyBbvsZx//CJLSYpuFeOmf3Zb0VN5kYWd
# 1dLbPXM18zyuVLJSR2rAqhOV0o4R2plnXjKM+zeF0dx1hZyHxlpXhcK/3Q2PjJst
# 67TuzyfTtV5p+qQWBAGnJGdzz01Ptt4FVpd69+lSTfR3BU+FxtgL8Y7tQgnRDXbj
# I1Z4IiY2vsqxjG6qHeSF2kczYo+kyZEzX3EeQK+YZcki6EIhJYocLWDZN4lBiSoW
# D9dhPJRoYFLv1keZoIBA7hWBdz6c4FMYGlAdOJWbHmYzEyc5F3iHNs5Ow1+y9T1H
# U7bg5dsLYT0q15IszjdaPkBCMaQfEAjCVpy/JF1RAp1qedIX09rBlI4HeyVxRKsG
# aubUxt8jmpZ1xTGCFaYwghWiAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMwEQYDVQQI
# EwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3Nv
# ZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25pbmcg
# UENBIDIwMTACEzMAAAAWEQS0iDiMvsMAAAAAABYwDQYJYIZIAWUDBAIBBQCggaww
# GQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwGCisG
# AQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIOnv1EI0m7CfHgr8HzgOHVZP26J+9/g2
# brtBSmPxXHtCMEAGCisGAQQBgjcCAQwxMjAwoBaAFABjAG8AbQBtAG8AbgAuAHAA
# cwAxoRaAFGh0dHA6Ly9taWNyb3NvZnQuY29tMA0GCSqGSIb3DQEBAQUABIIBAIym
# jQb7AEcuvGlEw/DEc9sdeyAGUCkMvOOil46e4RJWwtvO5Uk9pzDLqq8Iu1Ka4Jqa
# OA9KIAer5rdjmPvceJZ9frfFEQvnhRkJ8PKmyYfxE8focSk76HDO/OPuVeaaURiR
# b7gvJjP5MTHuYu3eFfPJX3DbG/4bhHqTpso/huDBSjSTmkvRok2b+vDkEZLCE6T/
# o/D7mJHtbE88+t6k9aeQLZKci94NONMpqf/4kfQpcTHrtLXdXXXiYoyPimDKsoU3
# gvEqUS8GS0XunmTSRBTUV2TyhQOXkm/ZgcVdHw//iee5uf5AwaJNxMGoAfMVI5h/
# 4bVQkfCLDPc3q9GwiTahghMyMIITLgYKKwYBBAGCNwMDATGCEx4wghMaBgkqhkiG
# 9w0BBwKgghMLMIITBwIBAzEPMA0GCWCGSAFlAwQCAQUAMIIBPQYLKoZIhvcNAQkQ
# AQSgggEsBIIBKDCCASQCAQEGCisGAQQBhFkKAwEwMTANBglghkgBZQMEAgEFAAQg
# dNI5zwLNsdMHTDe2g//QY3yfoUn31Bj3Z72IC8QYursCBlBkYOfEhxgTMjAxMjEx
# MTkwNTQ4MzguNDI4WjAHAgEBgAIB9KCBuaSBtjCBszELMAkGA1UEBhMCVVMxEzAR
# BgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1p
# Y3Jvc29mdCBDb3Jwb3JhdGlvbjENMAsGA1UECxMETU9QUjEnMCUGA1UECxMebkNp
# cGhlciBEU0UgRVNOOkI4RUMtMzBBNC03MTQ0MSUwIwYDVQQDExxNaWNyb3NvZnQg
# VGltZS1TdGFtcCBTZXJ2aWNloIIOxzCCBnEwggRZoAMCAQICCmEJgSoAAAAAAAIw
# DQYJKoZIhvcNAQELBQAwgYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5n
# dG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9y
# YXRpb24xMjAwBgNVBAMTKU1pY3Jvc29mdCBSb290IENlcnRpZmljYXRlIEF1dGhv
# cml0eSAyMDEwMB4XDTEwMDcwMTIxMzY1NVoXDTI1MDcwMTIxNDY1NVowfDELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9z
# b2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAw
# ggEKAoIBAQCpHQ28dxGKOiDs/BOX9fp/aZRrdFQQ1aUKAIKF++18aEssX8XD5WHC
# drc+Zitb8BVTJwQxH0EbGpUdzgkTjnxhMFmxMEQP8WCIhFRDDNdNuDgIs0Ldk6zW
# czBXJoKjRQ3Q6vVHgc2/JGAyWGBG8lhHhjKEHnRhZ5FfgVSxz5NMksHEpl3RYRNu
# KMYa+YaAu99h/EbBJx0kZxJyGiGKr0tkiVBisV39dx898Fd1rL2KQk1AUdEPnAY+
# Z3/1ZsADlkR+79BL/W7lmsqxqPJ6Kgox8NpOBpG2iAg16HgcsOmZzTznL0S6p/Tc
# ZL2kAcEgCZN4zfy8wMlEXV4WnAEFTyJNAgMBAAGjggHmMIIB4jAQBgkrBgEEAYI3
# FQEEAwIBADAdBgNVHQ4EFgQU1WM6XIoxkPNDe3xGG8UzaFqFbVUwGQYJKwYBBAGC
# NxQCBAweCgBTAHUAYgBDAEEwCwYDVR0PBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8w
# HwYDVR0jBBgwFoAU1fZWy4/oolxiaNE9lJBb186aGMQwVgYDVR0fBE8wTTBLoEmg
# R4ZFaHR0cDovL2NybC5taWNyb3NvZnQuY29tL3BraS9jcmwvcHJvZHVjdHMvTWlj
# Um9vQ2VyQXV0XzIwMTAtMDYtMjMuY3JsMFoGCCsGAQUFBwEBBE4wTDBKBggrBgEF
# BQcwAoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9NaWNSb29D
# ZXJBdXRfMjAxMC0wNi0yMy5jcnQwgaAGA1UdIAEB/wSBlTCBkjCBjwYJKwYBBAGC
# Ny4DMIGBMD0GCCsGAQUFBwIBFjFodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vUEtJ
# L2RvY3MvQ1BTL2RlZmF1bHQuaHRtMEAGCCsGAQUFBwICMDQeMiAdAEwAZQBnAGEA
# bABfAFAAbwBsAGkAYwB5AF8AUwB0AGEAdABlAG0AZQBuAHQALiAdMA0GCSqGSIb3
# DQEBCwUAA4ICAQAH5ohRDeLG4Jg/gXEDPZ2joSFvs+umzPUxvs8F4qn++ldtGTCz
# wsVmyWrf9efweL3HqJ4l4/m87WtUVwgrUYJEEvu5U4zM9GASinbMQEBBm9xcF/9c
# +V4XNZgkVkt070IQyK+/f8Z/8jd9Wj8c8pl5SpFSAK84Dxf1L3mBZdmptWvkx872
# ynoAb0swRCQiPM/tA6WWj1kpvLb9BOFwnzJKJ/1Vry/+tuWOM7tiX5rbV0Dp8c6Z
# ZpCM/2pif93FSguRJuI57BlKcWOdeyFtw5yjojz6f32WapB4pm3S4Zz5Hfw42JT0
# xqUKloakvZ4argRCg7i1gJsiOCC1JeVk7Pf0v35jWSUPei45V3aicaoGig+JFrph
# pxHLmtgOR5qAxdDNp9DvfYPw4TtxCd9ddJgiCGHasFAeb73x4QDf5zEHpJM692VH
# eOj4qEir995yfmFrb3epgcunCaw5u+zGy9iCtHLNHfS4hQEegPsbiSpUObJb2sgN
# VZl6h3M7COaYLeqN4DMuEin1wC9UJyH3yKxO2ii4sanblrKnQqLJzxlBTeCG+Sqa
# oxFmMNO7dDJL32N79ZmKLxvHIa9Zta7cRDyXUHHXodLFVeNp3lfB0d4wwP3M5k37
# Db9dT+mdHhk4L7zPWAUu7w2gUDXa7wknHNWzfjUeCLraNtvTX4/edIhJEjCCBNEw
# ggO5oAMCAQICCmEH1FUAAAAAAA4wDQYJKoZIhvcNAQELBQAwfDELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRp
# bWUtU3RhbXAgUENBIDIwMTAwHhcNMTIwMTA5MjEzNTMxWhcNMTMwNDA5MjE0NTMx
# WjCBszELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcT
# B1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjENMAsGA1UE
# CxMETU9QUjEnMCUGA1UECxMebkNpcGhlciBEU0UgRVNOOkI4RUMtMzBBNC03MTQ0
# MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNlMIIBIjANBgkq
# hkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAweiiiavCaSU5yAO7J7LMoFhyzUv4QGcC
# 85Sl6EdWInsgnJ4/uPz92BPkJqKQ7+S9iEplO1iwcoUEiARNaVXKHaxzg/vjTPVe
# JrFRZwdt7mDhCISPS/Jmzo1gPxiQ89ySBo5u9eCyW35wKULrQhWmxVXzHr3ZvcsT
# 2eqwdL97m4xWCbmIZSSUTMqApPPv8se3fU23u6A/U6J5jWzxubjJ5HXUXttdreRW
# pTihDFQ7KcsEyB4MrRJP8qXec6sZ9HUC0HTUB+GRWWqbJRiYCyjH13ViaapBfos7
# kYb/pPTqtveVi5nDphrsi+jxsygf7gyFNBKBUwfIyW9vAqZ86Be0DwIDAQABo4IB
# GzCCARcwHQYDVR0OBBYEFMbW5nU1U+/wnbjYtEvuXlMBCGPZMB8GA1UdIwQYMBaA
# FNVjOlyKMZDzQ3t8RhvFM2hahW1VMFYGA1UdHwRPME0wS6BJoEeGRWh0dHA6Ly9j
# cmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1RpbVN0YVBDQV8y
# MDEwLTA3LTAxLmNybDBaBggrBgEFBQcBAQROMEwwSgYIKwYBBQUHMAKGPmh0dHA6
# Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljVGltU3RhUENBXzIwMTAt
# MDctMDEuY3J0MAwGA1UdEwEB/wQCMAAwEwYDVR0lBAwwCgYIKwYBBQUHAwgwDQYJ
# KoZIhvcNAQELBQADggEBAI0KBSOJ6bP7QV7OBc3Qqr9NuRE/A3XEtCtoOz7ZTYBc
# GswSypS0o+c2jD54GkUSz8eNIK/HNwpipKCvYqp9KTUgw66SS/r2uF5LX3RmrPKh
# LXA4cdGYNlu/BuX+LeyJ2KXql1BCgrU1+xB4fxhe7baUWx9o5rN8N2/4P8L5b4Wl
# w2clhOvZuKCjtO5YJqk6yH0ESwyoE0ZtnsZaYOcIcZEblJidE2CtM702fe0IaCLI
# MOffLMQr9T+4gVlPq+1svCAGEQVMMDkoR1BU37nOc9+Q82n/qBMTgnvQG9ogqcFQ
# 5skb/6SCon+aXmEWujxcUQfTqh0ixjkd346o0uBTH9yhggN5MIICYQIBATCB46GB
# uaSBtjCBszELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNV
# BAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjENMAsG
# A1UECxMETU9QUjEnMCUGA1UECxMebkNpcGhlciBEU0UgRVNOOkI4RUMtMzBBNC03
# MTQ0MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNloiUKAQEw
# CQYFKw4DAhoFAAMVAIMU1+AB1G7ZyJUzKxZvn3EmZVMnoIHCMIG/pIG8MIG5MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMQ0wCwYDVQQLEwRNT1BS
# MScwJQYDVQQLEx5uQ2lwaGVyIE5UUyBFU046QjAyNy1DNkY4LTFEODgxKzApBgNV
# BAMTIk1pY3Jvc29mdCBUaW1lIFNvdXJjZSBNYXN0ZXIgQ2xvY2swDQYJKoZIhvcN
# AQEFBQACBQDUU/qFMCIYDzIwMTIxMTE5MDAyMzMzWhgPMjAxMjExMjAwMDIzMzNa
# MHcwPQYKKwYBBAGEWQoEATEvMC0wCgIFANRT+oUCAQAwCgIBAAICGWcCAf8wBwIB
# AAICF4YwCgIFANRVTAUCAQAwNgYKKwYBBAGEWQoEAjEoMCYwDAYKKwYBBAGEWQoD
# AaAKMAgCAQACAxbjYKEKMAgCAQACAwehIDANBgkqhkiG9w0BAQUFAAOCAQEAToHB
# wrj638LjmaM4uQe6JcB9hHFhaRESBnaAeodA/yh7hM2zvXaI3XonKViCu3JTHa4G
# d7H2YRSZkHqSbzo/DtwjzfyifSMtjVa9GoWfde1e2M1XLuaap9ujX5M6L5H8cpqv
# xB/2cE6kRBm2ElOWBywIrjnWYPXyYbxf1KEnItyartKRWzNgJ6Ks8Dd30E1RyCAm
# hPG4uINpzvRunk42EVuzqd6meNOyYnqYYauNkaQbbXQWGlJDE98CjuBZ9giKLj2D
# kdv658gHl+HQpiiUmMSny33nLeiu63YhD8zg7qDssosPtbRIUgCJ7xA/3o0QgMlm
# 30hoU9sg+O1bLhMotDGCAuMwggLfAgEBMIGKMHwxCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFBDQSAyMDEwAgphB9RVAAAAAAAOMA0GCWCGSAFlAwQCAQUAoIIBKTAaBgkqhkiG
# 9w0BCQMxDQYLKoZIhvcNAQkQAQQwLwYJKoZIhvcNAQkEMSIEIHgYSG9hpwmpWEC/
# tI0SM75Fdgu41j/0ZWju3/v/xC2JMIHZBgsqhkiG9w0BCRACDDGByTCBxjCBwzCB
# qAQUgxTX4AHUbtnIlTMrFm+fcSZlUycwgY8wgYCkfjB8MQswCQYDVQQGEwJVUzET
# MBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMV
# TWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1T
# dGFtcCBQQ0EgMjAxMAIKYQfUVQAAAAAADjAWBBS5oRPwFdvS3Xc0rn7j4z2c4gfy
# sjANBgkqhkiG9w0BAQsFAASCAQAAjk0fSuqHoNV3mbD3zuq4alEU1XTgX0YnudBX
# GPeANDUeGRUccgA8XNhSwvJXW1WHeFtf/bQaNHap4opvWl0RQrZbpRxeldyaCDMA
# yC3gfbI6Fqv3HVVhosS5+cd084oSS7/me7iuNyaUGaUgStHK3fF7HqCjo7aJP4/+
# lR6NLlEXQzV5FdIwc2O8FAsN7kkI1dpASooLpDvk/bIJ0I+cMUZwiapEkXcLj4zd
# cXVRMGhy83XDEcZiYpjq04jfYEF9EFvwFJ7W7tutakaZJLOS6XLU7VBpDqGH6VAr
# mSJ3Rhv0F0GcWJnEj1Lj+OTBP0ubCL0C/odsTbC3K9uvnru+
# SIG # End signature block
