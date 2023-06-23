@echo off
REM https://github.com/pegas365i4/DowloadVideoURL_Clipboard20230624.git
REM Код скачивает Видео по URL ссылке из Буфера обмена (МОЖЕТ ОБРАБАТЫВАТЬ СПИСКИ ССЫЛОК):
REM Если ссылки скопированы как в текстовом файле друг за другом по строчке, то они с качаются друг за другом ВСЕ!!!
for /f "usebackq tokens=*" %%A in (`powershell.exe -command "Get-Clipboard"`) do (
    yt-dlp.exe "%%A" --write-subs --sub-langs "en" -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" -o "\DownloadVideos\%%(title)s.%%(ext)s"
)
REM start "" "%~dp0" ОТКРЫВАЕТ текущую папку
REM открываем папку DownloadVideos куда скачался файл:
start "" "%~dp0DownloadVideos"

