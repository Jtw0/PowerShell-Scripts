$enc=[System.Convert]::FromBase64String('Base64 Encoded string');
$readString=[System.Text.Encoding]::ASCII.GetString($enc) ;
"Script Says:  $readString"
