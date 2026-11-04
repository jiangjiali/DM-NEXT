@echo off
rem 关闭本地测试用 MySQL：先用 mysqladmin 正常关闭，失败再强制结束进程
setlocal
cd /d "%~dp0Bin"
if exist mysqladmin.exe (
    mysqladmin.exe --no-defaults -h 127.0.0.1 -P 8306 -u root shutdown >nul 2>&1
)
ping -n 4 127.0.0.1 >nul
tasklist /FI "IMAGENAME eq mysqld.exe" 2>nul | find /I "mysqld.exe" >nul
if errorlevel 1 (
    echo MySQL 已关闭
    goto :end
)
echo mysqladmin 未能关闭，强制结束 mysqld.exe ...
taskkill /F /IM mysqld.exe >nul 2>&1
ping -n 3 127.0.0.1 >nul
echo MySQL 已强制关闭
:end
endlocal