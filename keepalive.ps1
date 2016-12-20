# By Tom Chantler - https://tomssl.com/2016/12/20/how-to-get-azure-webjobs-to-run-indefinitely-for-free/
$progressPreference = "silentlyContinue"
$result = Invoke-WebRequest -Uri ("https://microsoft.com") -Method Get -UseBasicParsing
