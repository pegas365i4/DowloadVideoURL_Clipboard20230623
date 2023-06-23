# DowloadVideoURL_Clipboard20230623
Код скачивает Видео по URL ссылке из Буфера обмена (МОЖЕТ ОБРАБАТЫВАТЬ СПИСКИ ССЫЛОК)
Если ссылки скопированы как в текстовом файле друг за другом по строчке, то они с качаются друг за другом ВСЕ!!!
## Программа улучшена до DowloadVideoURL_Clipboard20230624.bat:
- Теперь файлы скачиваются в папку DownloadVideos
- И после загрузки папка DownloadVideos открывается в проводнике.
- Если использовать ярлык бат файла, то не придется искать куда скачиваются видео файлы!
- Добавил файл PreviewDownloadedVideos_20230624.bat чтобы просматривать видео которые скачал в папку

## Пример работы файла OLD-DowloadVideoURL_Clipboard20230623.bat:
[![Демонстрация](https://i9.ytimg.com/vi/UUFdeIof-M0/mqdefault.jpg?sqp=CJTx16QG-oaymwEmCMACELQB8quKqQMa8AEB-AHUBoAC4AOKAgwIABABGGUgZShlMA8%3D&rs=AOn4CLDCUrnOGqfqEYzGUW48viAibxiugQ&retry=5)](https://youtu.be/UUFdeIof-M0)

## Более подробное описание OLD-DowloadVideoURL_Clipboard20230623.bat:
Данный код является скриптом командной строки, написанным для операционной системы Windows. Он выполняет следующие действия:

1. `@echo off`: Эта команда отключает вывод команд в командной строке. Таким образом, в процессе выполнения скрипта не будет отображаться вывод каждой команды.

2. `for /f "usebackq tokens=*" %%A in ('powershell.exe -command "Get-Clipboard"') do (...)`: Это цикл команды `for`, который выполняет следующие действия:
   - `for /f`: Это формат команды `for`, предназначенный для обработки вывода других команд.
   - `"usebackq tokens=*"`: Это параметры команды `for`, которые указывают командной строке использовать обратные кавычки (```) в качестве ограничителей и прочитать все токены (части строки).
   - `%%A`: Это переменная, в которую будут сохраняться полученные строки в процессе выполнения цикла.
   - `powershell.exe -command "Get-Clipboard"`: Это команда, запускающая PowerShell и вызывающая команду `Get-Clipboard`, которая получает содержимое буфера обмена Windows.

3. `yt-dlp.exe "%%A" --write-subs --sub-langs "en" -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best"`: Внутри цикла команды `for`, полученная строка из буфера обмена (`%%A`) используется в качестве аргумента для вызова внешней программы `yt-dlp.exe`. Данный исполняемый файл (yt-dlp.exe) является командной утилитой для загрузки видео с различных платформ, таких как YouTube. В данном случае, скрипт запускает yt-dlp.exe с переданными аргументами:
   - `"%%A"`: Это URL-адрес видео, полученный из буфера обмена, который указывает yt-dlp.exe, какое видео нужно загрузить.
   - `--write-subs`: Этот флаг указывает yt-dlp.exe сохранить субтитры видео.
   - `--sub-langs "en"`: Этот флаг указывает yt-dlp.exe загружать только субтитры на английском языке.
   - `-f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best"`: Этот флаг указывает yt-dlp.exe выбрать наилучшее доступное качество видео в формате MP4, включая наилучший доступный поток видео и аудио. 

Таким образом, в результате выполнения данного кода, скрипт получает URL-адрес видео из буфера обмена, использует yt-dlp.exe для загрузки видео с субтитрами на английском языке в формате MP4 и сохраняет его на компьютере.
