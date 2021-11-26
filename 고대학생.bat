@echo off
echo.
echo.
echo ------------ ISSOFT 고려대학교 PC 세팅용 프로그램 ------------

echo 1. 전원관리 설정 (시작)

powercfg /x monitor-timeout-dc 0
powercfg /x monitor-timeout-ac 0

powercfg /x disk-timeout-ac 0
powercfg /x disk-timeout-dc 0

powercfg /x standby-timeout-ac 0
powercfg /x standby-timeout-dc 0

powercfg /x hibernate-timeout-ac 0
powercfg /x hibernate-timeout-dc 0

explorer ms-settings:powersleep

echo 1. 전원관리 설정 (종료)
ping -n 3 127.0.0.1 >nul
echo.

echo 2. 윈도우 디스플레이 100% 설정 (시작)
explorer ms-settings:display
ping -n 2 127.0.0.1 > nul

SET TempVBSFile=%tmp%\~tmpSendKeysTemp.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
ECHO Wscript.Sleep 500                                    >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{TAB 4}{UP 1}"                      >>"%TempVBSFile%"
ECHO Wscript.Sleep 500                                    >>"%TempVBSFile%"

CSCRIPT //nologo "%TempVBSFile%"

echo 2. 윈도우 디스플레이 100% 설정 (종료)

ping -n 3 127.0.0.1 >nul

echo 3. 업데이트 7일중지를 눌러주세요
explorer ms-settings:windowsupdate-action

mmsys.cpl

start chrome https://interview2.korea.ac.kr/_rts
pause>null 