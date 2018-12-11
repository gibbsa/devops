# Write your powershell commands here.

$json = get-content -path $env:BUILD_SourcesDirectory\artifacts\test.txt | out-string | convertfrom-json

Write-Host "##vso[task.setvariable variable=adminUsername;isOutput=true;]$json.parameters.adminUsername.value"

# Use the environment variables input below to pass secret variables to this script.
