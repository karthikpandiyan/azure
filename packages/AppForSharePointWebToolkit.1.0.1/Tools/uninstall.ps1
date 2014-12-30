param($installPath, $toolsPath, $package, $project)

Import-Module (Join-Path $toolsPath common.ps1) -Force

try {

    # Indicates if current project is a VB project
    $IsVbProject = ($project.CodeModel.Language -eq [EnvDTE.CodeModelLanguageConstants]::vsCMLanguageVB)
    
    if ($IsVbProject) {

        # Remove added Imports for VB project
        $VbImports | ForEach-Object {
            if ($project.Object.Imports -contains $_) {
                $project.Object.Imports.Remove($_)
            }
        }
    }
    
    # Remove references
    Foreach ($spRef in $ReferencesToRemoveWhenUninstall) {
        $project.Object.References | Where-Object { $_.Name -eq $spRef } | ForEach-Object { $_.Remove() }
    }
    
} catch {

    Write-Host "Error uninstalling package: " + $_.Exception -ForegroundColor Red
    exit
}
# SIG # Begin signature block
# MIIhhgYJKoZIhvcNAQcCoIIhdzCCIXMCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCGslwdbWsYa5y8
# oNJXl+fAzH4dYzZaqebAKwRpd+Y7yqCCCzAwggS4MIIDoKADAgECAhMzAAAAFhEE
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
# aubUxt8jmpZ1xTGCFawwghWoAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMwEQYDVQQI
# EwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3Nv
# ZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25pbmcg
# UENBIDIwMTACEzMAAAAWEQS0iDiMvsMAAAAAABYwDQYJYIZIAWUDBAIBBQCggbIw
# GQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwGCisG
# AQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIE1wlj9r/FLtV2CKqdRN+liLW/A9YhrR
# E0L1FFo8O9L3MEYGCisGAQQBgjcCAQwxODA2oByAGgB1AG4AaQBuAHMAdABhAGwA
# bAAuAHAAcwAxoRaAFGh0dHA6Ly9taWNyb3NvZnQuY29tMA0GCSqGSIb3DQEBAQUA
# BIIBAC+LDjDD0hOICw/BDHmlUv9lR/MZ6eQVKNQOyrJK8LwOvXxx1Ttkz46rzghW
# QUReodUBMybFaXV4bovVB6+6vu68q4anEv5z/cR1HnJ7Z1Zq7frRZBcFDFrCbm0d
# nVdfuPtxnjmXRLX6gnMYGkITgE0nFZlXjJS+Ca0zbAzKgKFZPlt/xiYuX4C/VD3h
# k+1vZ3AvJ+DYI6YY6a54vhNUeMqrEW0K+itLVmJqezFGIPE/67XpXaLw7PLDg2tH
# dkaVOTej2pJ1OHOPIPLP2AmQ5bQ6YBKzF8f6LWnoMYMRxom+kXCz1mKR4CifFgmO
# NW6u3EH56Jqj52on3cilt1etHnihghMyMIITLgYKKwYBBAGCNwMDATGCEx4wghMa
# BgkqhkiG9w0BBwKgghMLMIITBwIBAzEPMA0GCWCGSAFlAwQCAQUAMIIBPQYLKoZI
# hvcNAQkQAQSgggEsBIIBKDCCASQCAQEGCisGAQQBhFkKAwEwMTANBglghkgBZQME
# AgEFAAQgTd06jtqA4XlK9IypLX3TERTc6D77j942tkpDIj/3STACBlBkYOfEeRgT
# MjAxMjExMTkwNTQ4MzguMDU5WjAHAgEBgAIB9KCBuaSBtjCBszELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjENMAsGA1UECxMETU9QUjEnMCUGA1UE
# CxMebkNpcGhlciBEU0UgRVNOOkI4RUMtMzBBNC03MTQ0MSUwIwYDVQQDExxNaWNy
# b3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNloIIOxzCCBnEwggRZoAMCAQICCmEJgSoA
# AAAAAAIwDQYJKoZIhvcNAQELBQAwgYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpX
# YXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQg
# Q29ycG9yYXRpb24xMjAwBgNVBAMTKU1pY3Jvc29mdCBSb290IENlcnRpZmljYXRl
# IEF1dGhvcml0eSAyMDEwMB4XDTEwMDcwMTIxMzY1NVoXDTI1MDcwMTIxNDY1NVow
# fDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMd
# TWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwggEiMA0GCSqGSIb3DQEBAQUA
# A4IBDwAwggEKAoIBAQCpHQ28dxGKOiDs/BOX9fp/aZRrdFQQ1aUKAIKF++18aEss
# X8XD5WHCdrc+Zitb8BVTJwQxH0EbGpUdzgkTjnxhMFmxMEQP8WCIhFRDDNdNuDgI
# s0Ldk6zWczBXJoKjRQ3Q6vVHgc2/JGAyWGBG8lhHhjKEHnRhZ5FfgVSxz5NMksHE
# pl3RYRNuKMYa+YaAu99h/EbBJx0kZxJyGiGKr0tkiVBisV39dx898Fd1rL2KQk1A
# UdEPnAY+Z3/1ZsADlkR+79BL/W7lmsqxqPJ6Kgox8NpOBpG2iAg16HgcsOmZzTzn
# L0S6p/TcZL2kAcEgCZN4zfy8wMlEXV4WnAEFTyJNAgMBAAGjggHmMIIB4jAQBgkr
# BgEEAYI3FQEEAwIBADAdBgNVHQ4EFgQU1WM6XIoxkPNDe3xGG8UzaFqFbVUwGQYJ
# KwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwCwYDVR0PBAQDAgGGMA8GA1UdEwEB/wQF
# MAMBAf8wHwYDVR0jBBgwFoAU1fZWy4/oolxiaNE9lJBb186aGMQwVgYDVR0fBE8w
# TTBLoEmgR4ZFaHR0cDovL2NybC5taWNyb3NvZnQuY29tL3BraS9jcmwvcHJvZHVj
# dHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3JsMFoGCCsGAQUFBwEBBE4wTDBK
# BggrBgEFBQcwAoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9N
# aWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcnQwgaAGA1UdIAEB/wSBlTCBkjCBjwYJ
# KwYBBAGCNy4DMIGBMD0GCCsGAQUFBwIBFjFodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vUEtJL2RvY3MvQ1BTL2RlZmF1bHQuaHRtMEAGCCsGAQUFBwICMDQeMiAdAEwA
# ZQBnAGEAbABfAFAAbwBsAGkAYwB5AF8AUwB0AGEAdABlAG0AZQBuAHQALiAdMA0G
# CSqGSIb3DQEBCwUAA4ICAQAH5ohRDeLG4Jg/gXEDPZ2joSFvs+umzPUxvs8F4qn+
# +ldtGTCzwsVmyWrf9efweL3HqJ4l4/m87WtUVwgrUYJEEvu5U4zM9GASinbMQEBB
# m9xcF/9c+V4XNZgkVkt070IQyK+/f8Z/8jd9Wj8c8pl5SpFSAK84Dxf1L3mBZdmp
# tWvkx872ynoAb0swRCQiPM/tA6WWj1kpvLb9BOFwnzJKJ/1Vry/+tuWOM7tiX5rb
# V0Dp8c6ZZpCM/2pif93FSguRJuI57BlKcWOdeyFtw5yjojz6f32WapB4pm3S4Zz5
# Hfw42JT0xqUKloakvZ4argRCg7i1gJsiOCC1JeVk7Pf0v35jWSUPei45V3aicaoG
# ig+JFrphpxHLmtgOR5qAxdDNp9DvfYPw4TtxCd9ddJgiCGHasFAeb73x4QDf5zEH
# pJM692VHeOj4qEir995yfmFrb3epgcunCaw5u+zGy9iCtHLNHfS4hQEegPsbiSpU
# ObJb2sgNVZl6h3M7COaYLeqN4DMuEin1wC9UJyH3yKxO2ii4sanblrKnQqLJzxlB
# TeCG+SqaoxFmMNO7dDJL32N79ZmKLxvHIa9Zta7cRDyXUHHXodLFVeNp3lfB0d4w
# wP3M5k37Db9dT+mdHhk4L7zPWAUu7w2gUDXa7wknHNWzfjUeCLraNtvTX4/edIhJ
# EjCCBNEwggO5oAMCAQICCmEH1FUAAAAAAA4wDQYJKoZIhvcNAQELBQAwfDELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9z
# b2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwHhcNMTIwMTA5MjEzNTMxWhcNMTMwNDA5
# MjE0NTMxWjCBszELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAO
# BgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEN
# MAsGA1UECxMETU9QUjEnMCUGA1UECxMebkNpcGhlciBEU0UgRVNOOkI4RUMtMzBB
# NC03MTQ0MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNlMIIB
# IjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAweiiiavCaSU5yAO7J7LMoFhy
# zUv4QGcC85Sl6EdWInsgnJ4/uPz92BPkJqKQ7+S9iEplO1iwcoUEiARNaVXKHaxz
# g/vjTPVeJrFRZwdt7mDhCISPS/Jmzo1gPxiQ89ySBo5u9eCyW35wKULrQhWmxVXz
# Hr3ZvcsT2eqwdL97m4xWCbmIZSSUTMqApPPv8se3fU23u6A/U6J5jWzxubjJ5HXU
# XttdreRWpTihDFQ7KcsEyB4MrRJP8qXec6sZ9HUC0HTUB+GRWWqbJRiYCyjH13Vi
# aapBfos7kYb/pPTqtveVi5nDphrsi+jxsygf7gyFNBKBUwfIyW9vAqZ86Be0DwID
# AQABo4IBGzCCARcwHQYDVR0OBBYEFMbW5nU1U+/wnbjYtEvuXlMBCGPZMB8GA1Ud
# IwQYMBaAFNVjOlyKMZDzQ3t8RhvFM2hahW1VMFYGA1UdHwRPME0wS6BJoEeGRWh0
# dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1RpbVN0
# YVBDQV8yMDEwLTA3LTAxLmNybDBaBggrBgEFBQcBAQROMEwwSgYIKwYBBQUHMAKG
# Pmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljVGltU3RhUENB
# XzIwMTAtMDctMDEuY3J0MAwGA1UdEwEB/wQCMAAwEwYDVR0lBAwwCgYIKwYBBQUH
# AwgwDQYJKoZIhvcNAQELBQADggEBAI0KBSOJ6bP7QV7OBc3Qqr9NuRE/A3XEtCto
# Oz7ZTYBcGswSypS0o+c2jD54GkUSz8eNIK/HNwpipKCvYqp9KTUgw66SS/r2uF5L
# X3RmrPKhLXA4cdGYNlu/BuX+LeyJ2KXql1BCgrU1+xB4fxhe7baUWx9o5rN8N2/4
# P8L5b4Wlw2clhOvZuKCjtO5YJqk6yH0ESwyoE0ZtnsZaYOcIcZEblJidE2CtM702
# fe0IaCLIMOffLMQr9T+4gVlPq+1svCAGEQVMMDkoR1BU37nOc9+Q82n/qBMTgnvQ
# G9ogqcFQ5skb/6SCon+aXmEWujxcUQfTqh0ixjkd346o0uBTH9yhggN5MIICYQIB
# ATCB46GBuaSBtjCBszELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjENMAsGA1UECxMETU9QUjEnMCUGA1UECxMebkNpcGhlciBEU0UgRVNOOkI4RUMt
# MzBBNC03MTQ0MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNl
# oiUKAQEwCQYFKw4DAhoFAAMVAIMU1+AB1G7ZyJUzKxZvn3EmZVMnoIHCMIG/pIG8
# MIG5MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMQ0wCwYDVQQL
# EwRNT1BSMScwJQYDVQQLEx5uQ2lwaGVyIE5UUyBFU046QjAyNy1DNkY4LTFEODgx
# KzApBgNVBAMTIk1pY3Jvc29mdCBUaW1lIFNvdXJjZSBNYXN0ZXIgQ2xvY2swDQYJ
# KoZIhvcNAQEFBQACBQDUU/qFMCIYDzIwMTIxMTE5MDAyMzMzWhgPMjAxMjExMjAw
# MDIzMzNaMHcwPQYKKwYBBAGEWQoEATEvMC0wCgIFANRT+oUCAQAwCgIBAAICGWcC
# Af8wBwIBAAICF4YwCgIFANRVTAUCAQAwNgYKKwYBBAGEWQoEAjEoMCYwDAYKKwYB
# BAGEWQoDAaAKMAgCAQACAxbjYKEKMAgCAQACAwehIDANBgkqhkiG9w0BAQUFAAOC
# AQEAToHBwrj638LjmaM4uQe6JcB9hHFhaRESBnaAeodA/yh7hM2zvXaI3XonKViC
# u3JTHa4Gd7H2YRSZkHqSbzo/DtwjzfyifSMtjVa9GoWfde1e2M1XLuaap9ujX5M6
# L5H8cpqvxB/2cE6kRBm2ElOWBywIrjnWYPXyYbxf1KEnItyartKRWzNgJ6Ks8Dd3
# 0E1RyCAmhPG4uINpzvRunk42EVuzqd6meNOyYnqYYauNkaQbbXQWGlJDE98CjuBZ
# 9giKLj2Dkdv658gHl+HQpiiUmMSny33nLeiu63YhD8zg7qDssosPtbRIUgCJ7xA/
# 3o0QgMlm30hoU9sg+O1bLhMotDGCAuMwggLfAgEBMIGKMHwxCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1l
# LVN0YW1wIFBDQSAyMDEwAgphB9RVAAAAAAAOMA0GCWCGSAFlAwQCAQUAoIIBKTAa
# BgkqhkiG9w0BCQMxDQYLKoZIhvcNAQkQAQQwLwYJKoZIhvcNAQkEMSIEIIFJjWGR
# CK+i/aUHFtqQ5EDZCUFzgAAeNUt5c5MZr99FMIHZBgsqhkiG9w0BCRACDDGByTCB
# xjCBwzCBqAQUgxTX4AHUbtnIlTMrFm+fcSZlUycwgY8wgYCkfjB8MQswCQYDVQQG
# EwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwG
# A1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQg
# VGltZS1TdGFtcCBQQ0EgMjAxMAIKYQfUVQAAAAAADjAWBBS5oRPwFdvS3Xc0rn7j
# 4z2c4gfysjANBgkqhkiG9w0BAQsFAASCAQBAU6WiYO3PcY+/AqtI5DHFTV6kQAu4
# NQTKcxoT4Fb7BJOoERwcfI9RjoadX4G140T//OCC5YkNUVU4m//g1LpgvZXnNeSV
# Wje3xMXy18Tv6Ru1kONmjaKxf+UZO8qCqpn4OugrwspXNeilEDWYJhf+SCnNuiJU
# P5eS4n1jQn3jaD3QjYWmLYcCoR+a9oeDDTEp+KT3PD4BODxAXc9u/k9S/KfrwmR7
# Pihbwz+6Vxhz3i5Dx166fG3sLC8zpuD9Hs48JNZaUd4ZPe7WPx8I/zyWZX55quEQ
# RDfjokEFV2XmF0o8No2WQ+vsQo7HNJ5EItmFovNcrM6+iBm2ZoBfwPRC
# SIG # End signature block
