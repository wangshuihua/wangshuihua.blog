@echo off
cd \
d:
cd git\blog
@echo 亲爱的小宝贝儿，快来写一篇博客吧！
@echo ^<3^<3^<3^<3^<3^<3^<3^<3
@echo ============================================
@echo 1. 新建一篇文章
@echo =============================================
set title=
set /p title=请输入文章标题（URL）：
@echo 正在新建标题为“%title%”的文章...
call hexo new %title%
@echo 新建成功！
@echo ============================================
@echo 2. 打开编辑文章“%title%”
@echo ============================================
PAUSE
call "D:\Program Files\Sublime Text 3\SublimeText.exe" "D:\git\blog\source\_posts\%title%.md"
@echo ============================================
@echo 3. 编译并发布文章
@echo ============================================
PAUSE
call hexo d -g
@echo 发布成功！
@echo ============================================
@echo 4. 打开网站看看效果
@echo ============================================
PAUSE
call "C:\Program Files\Google\Chrome\Application\chrome.exe" "http://wangshuihua.com"
@echo ============================================
@echo 5. 大功告成
@echo ============================================
echo 【按任意键退出】
pause>nul
exit
