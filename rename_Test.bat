@echo off
setlocal enabledelayedexpansion

set "mainFolderPath=C:\Users\Khataab\Desktop\CELC All Books Audios\2- Open Up New Edition Audios\Open Up New Listening Audios"
set "prefix=Pioner_Plus_"

for /r "%mainFolderPath%" %%F in (*) do (
    if not "%%~dpF"=="%mainFolderPath%" (
        set "filename=%%~nF"
        set "extension=%%~xF"
        set "newFilename=!prefix!!filename!!extension!"
        ren "%%F" "!newFilename!"
    )
)

endlocal