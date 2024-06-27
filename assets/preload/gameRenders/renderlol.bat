@echo off

echo hello there!
echo PS: this will only work if you have ffmpeg installed and are using the classic rendering mode.

echo enter the name of the song you'd like to render! (this is the folder that you'll use)
set /p "renderFolder="

echo.
echo what would you like to name your rendered video?
set /p "renderName="

echo.
echo Starting...
echo.

ffmpeg -r 60 -i "%~dp0%renderFolder%\%%07d.jpg" "%renderName%.mp4"

pause