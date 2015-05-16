@echo off
cd \
d:
cd git\blog\source\_posts
call dir /p
:RETRY
@echo ============================================
set /p delfile=输入要删除的文件名（不带.md）：
call del %delfile%^.md
@echo ============================================
@echo 已删除“%delfile%^.md”
@echo ============================================
set /p choice=是否还要删除其他文章？（yes/no）：
if "%choice%"=="yes" goto RETRY
if "%choice%"=="y" goto RETRY
echo 【按任意键退出】
pause>nul
exit