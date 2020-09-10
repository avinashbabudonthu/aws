@echo off
cd /d %cd%
echo -----------------------------------------------
echo %cd%
echo -----------------------------------------------
git status
git add .
git commit -m "aws %date% %time%"
git push
pause