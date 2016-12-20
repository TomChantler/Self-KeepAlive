# By Tom Chantler - https://tomssl.com/2016/12/20/how-to-get-azure-webjobs-to-run-indefinitely-for-free/
$progressPreference = "silentlyContinue"
$websiteUrl = (Get-Item Env:WEBSITE_HOSTNAME).value
$result = Invoke-WebRequest -Uri ($websiteUrl) -Method Get -UseBasicParsing;
