@echo off
cd \
d:
cd git\blog\source\_posts
call dir /p
:RETRY
@echo ============================================
set /p delfile=����Ҫɾ�����ļ���������.md����
call del %delfile%^.md
@echo ============================================
@echo ��ɾ����%delfile%^.md��
@echo ============================================
set /p choice=�Ƿ�Ҫɾ���������£���yes/no����
if "%choice%"=="yes" goto RETRY
if "%choice%"=="y" goto RETRY
echo ����������˳���
pause>nul
exit