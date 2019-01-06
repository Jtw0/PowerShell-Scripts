$data = [System.Convert]::FromBase64String('GZip base64 encoded string here')
$ms = New-Object System.IO.MemoryStream
$ms.Write($data, 0, $data.Length)
$ms.Seek(0,0) | Out-Null
$sr = New-Object System.IO.StreamReader(New-Object System.IO.Compression.GZipStream($ms, [System.IO.Compression.CompressionMode]::Decompress))

$plaintext = $sr.ReadToEnd()
Write-Host "String says:  $plaintext"
