# By Tom Chantler - https://tomssl.com/2016/12/20/how-to-get-azure-webjobs-to-run-indefinitely-for-free
$progressPreference = "silentlyContinue"
$website = (Get-Item Env:WEBSITE_SITE_NAME).value
$username = "`$${website}"
$password = (Get-Item Env:CUSTOMCONNSTR_SecretThing).value
$base64AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(("{0}:{1}" -f $username,$password)))
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url = "https://${website}.scm.azurewebsites.net/api/diagnostics/runtime"
$keepalive = Invoke-RestMethod -Uri $url -Headers @{Authorization=("Basic {0}" -f $base64AuthInfo)} -Method GET
