
@echo off

SET NEWLINE=^& echo.

FIND /C /I "mailhog" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1 mailhog>>%WINDIR%\System32\drivers\etc\hosts

FIND /C /I "gogs" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1 gogs>>%WINDIR%\System32\drivers\etc\hosts

FIND /C /I "teamcity-server" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1 teamcity-server>>%WINDIR%\System32\drivers\etc\hosts

start http://mailhog:8025
start http://gogs:3000
start http://teamcity-server:8111
