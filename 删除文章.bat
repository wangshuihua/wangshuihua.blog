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
if "%choice%"=="n" goto GOON
:GOON
@echo ============================================
@echo ���±��뷢���С���
@echo ============================================
call hexo d -g
@echo ============================================
@echo ���벢�����ɹ���
@echo ===========================================
echo ����������˳���
pause>nul
exit