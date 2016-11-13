@REM clean_msip.cmd - a file for cleaning up c:\Windows\Installer\(*.msi *.msp)

@echo off

cd/d %systemroot%\Installer

ECHO Extracting all available information from registry...
reg export HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData userdata.reg

ECHO Create file list of msi/msp files from registry list
type userdata.reg | findstr/ri "\.ms[ip]" >> userdata.txt

ECHO Deleting msi/msp files that don't appear in the list...
for %%i in (*.msi *.msp) do ( findstr/i %%i userdata.txt 1>nul || del/f/a/q %%i )

ECHO Clean up, deleting temporary files...
del/f/a userdata.reg userdata.txt *.tmp
