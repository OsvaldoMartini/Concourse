$concoursePath = 'C:\Users\TAAMAOS2\Projects\Concourse\fly'
mkdir $concoursePath

# -- Sets User Env Variable -------------
[Environment]::SetEnvironmentVariable('PATH', "$ENV:PATH;${concoursePath}", 'USER')

# -- Sets System Env Variable -----------
# [Environment]::SetEnvironmentVariable("PATH", "$ENV:PATH;${concoursePath}", "MACHINE")

# -- Download fly.exe -------------------
$concourseURL = 'http://localhost:8080/api/v1/cli?arch=amd64&platform=windows'
Invoke-WebRequest $concourseURL -OutFile "${concoursePath}\fly.exe"