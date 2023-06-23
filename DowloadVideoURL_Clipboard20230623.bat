@echo off
REM Код скачивает Видео по URL ссылке из Буфера обмена (МОЖЕТ ОБРАБАТЫВАТЬ СПИСКИ ССЫЛОК):
REM Если ссылки скапированы как в текстовом файле друг за другом по строчке, то они скачаются друг за другом ВСЕ!!!
for /f "usebackq tokens=*" %%A in (`powershell.exe -command "Get-Clipboard"`) do (
    yt-dlp.exe "%%A" --write-subs --sub-langs "en" -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best"
)


