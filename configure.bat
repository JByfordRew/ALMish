
call ./setup/generateSshKeys.bat
call ./setup/configureDockerCi.bat
call ./setup/openUI.bat

echo MANUAL STEP: Follow instructions to configure Gogs and TeamCity
pause

call ./setup/gitPushToGogs.bat
