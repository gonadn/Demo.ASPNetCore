$cert = New-SelfSignedCertificate -Subject "CN=BaneNorMBA" -CertStoreLocation "Cert:\CurrentUser\My" -KeyExportPolicy Exportable -KeySpec Signature -KeyLength 2048 -KeyAlgorithm RSA -HashAlgorithm SHA256
Export-Certificate -Cert $cert -FilePath "C:\adnan cert\BaneNorMBADev.cer"
$mypwd = ConvertTo-SecureString -String "BnMBA2021!" -Force -AsPlainText
Export-PfxCertificate -Cert $cert -FilePath "C:\BaneNorMBADev.pfx" -Password $mypwd