@echo off
echo.
echo.
echo ------------ ISSOFT ������б� PC ���ÿ� ���α׷� ------------

echo 1. �������� ���� (����)

powercfg /x monitor-timeout-dc 0
powercfg /x monitor-timeout-ac 0

powercfg /x disk-timeout-ac 0
powercfg /x disk-timeout-dc 0

powercfg /x standby-timeout-ac 0
powercfg /x standby-timeout-dc 0

powercfg /x hibernate-timeout-ac 0
powercfg /x hibernate-timeout-dc 0

explorer ms-settings:powersleep

echo 1. �������� ���� (����)
ping -n 3 127.0.0.1 >nul
echo.

echo 2. ������ ���÷��� 100% ���� (����)
explorer ms-settings:display
ping -n 2 127.0.0.1 > nul

SET TempVBSFile=%tmp%\~tmpSendKeysTemp.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
ECHO Wscript.Sleep 500                                    >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{TAB 4}{UP 1}"                      >>"%TempVBSFile%"
ECHO Wscript.Sleep 500                                    >>"%TempVBSFile%"

CSCRIPT //nologo "%TempVBSFile%"

echo 2. ������ ���÷��� 100% ���� (����)

ping -n 3 127.0.0.1 >nul

echo 3. ������Ʈ 7�������� �����ּ���
explorer ms-settings:windowsupdate-action

mmsys.cpl

start chrome https://interview2.korea.ac.kr/_rts
pause>null 