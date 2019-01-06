Function Decryptor {
    Param (
        [Parameter(Mandatory=$True)]
        [System.Security.SecureString]$plaintext
    )
    Try {
        $mod = [System.Runtime.InteropServices.Marshal]::SecureStringToGlobalAllocUnicode($plaintext)
        [System.Runtime.InteropServices.Marshal]::PtrToStringUni($mod)
    }
    Finally {
        [System.Runtime.InteropServices.Marshal]::ZeroFreeGlobalAllocUnicode($mod)
    }
}

$EncryptedData = "Enter Encrypted DATA HERE"
#$key = [byte[]](Read-Host -Prompt "Key").ToCharArray()
$key = (Enter, the, key, here, 128, or, 256, bit)
$plaintext = ConvertTo-SecureString -String $EncryptedData -Key $key

Decryptor $plaintext
