@echo off
setlocal enableextensions

if not "%NR1_REDIRECTED%"=="1" if exist "%LOCALAPPDATA%\newrelic-cli\client\bin\nr1.cmd" (
  set NR1_REDIRECTED=1
  "%LOCALAPPDATA%\newrelic-cli\client\bin\nr1.cmd" %*
  goto:EOF
)

if not defined NR1_BINPATH set NR1_BINPATH="%~dp0nr1.cmd"
if exist "%~dp0..\bin\node.exe" (
  "%~dp0..\bin\node.exe" "%~dp0..\bin\run" %*
) else if exist "%LOCALAPPDATA%\oclif\node\node-14.15.1.exe" (
  "%LOCALAPPDATA%\oclif\node\node-14.15.1.exe" "%~dp0..\bin\run" %*
) else (
  node "%~dp0..\bin\run" %*
)
