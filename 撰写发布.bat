@echo off
cd \
d:
cd git\blog
@echo �װ���С������������дһƪ���Ͱɣ�
@echo ^<3^<3^<3^<3^<3^<3^<3^<3
@echo ============================================
@echo 1. �½�һƪ����
@echo =============================================
set title=
set /p title=���������±��⣨URL����
@echo �����½�����Ϊ��%title%��������...
call hexo new %title%
@echo �½��ɹ���
@echo ============================================
@echo 2. �򿪱༭���¡�%title%��
@echo ============================================
PAUSE
call "D:\Program Files\Sublime Text 3\SublimeText.exe" "D:\git\blog\source\_posts\%title%.md"
@echo ============================================
@echo 3. ���벢��������
@echo ============================================
PAUSE
call hexo d -g
@echo �����ɹ���
@echo ============================================
@echo 4. ����վ����Ч��
@echo ============================================
PAUSE
call "C:\Program Files\Google\Chrome\Application\chrome.exe" "http://wangshuihua.com"
@echo ============================================
@echo 5. �󹦸��
@echo ============================================
echo ����������˳���
pause>nul
exit
