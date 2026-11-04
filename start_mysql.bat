@echo off
rem 启动本地测试用 MySQL。工作目录必须是 Bin（与原版服务端一致，my.ini 里的
rem datadir=..\Data\MySQL 是相对路径）。
setlocal
cd /d "%~dp0Bin"
rem InnoDB 需要一个可写的临时目录；不同机器默认 TEMP 不一定可用，
rem 显式指定到发布目录下的 tmp，避免 "Unable to create temporary file"
if not exist "%~dp0tmp" mkdir "%~dp0tmp"
if not exist mysqld.exe (
    echo [错误] 找不到 Bin\mysqld.exe
    pause
    exit /b 1
)
tasklist /FI "IMAGENAME eq mysqld.exe" 2>nul | find /I "mysqld.exe" >nul
if not errorlevel 1 (
    echo MySQL 已经在运行，无需重复启动
    goto :end
)
start "MySQL" /min mysqld.exe --defaults-file="%~dp0Bin\my.ini" --tmpdir="%~dp0tmp" --console
echo 正在等待 MySQL 监听 8306 端口 ...
for /L %%i in (1,1,40) do (
    ping -n 2 127.0.0.1 >nul
    netstat -an | find ":8306" | find "LISTENING" >nul
    if not errorlevel 1 goto :ok
)
echo [错误] MySQL 启动超时，请检查 Bin\my.ini 与 Data\MySQL 目录
goto :end
:ok
echo MySQL 已启动：127.0.0.1:8306
:end
endlocal