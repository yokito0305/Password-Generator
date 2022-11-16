@echo off
FOR /F "usebackq delims=" %%i in (`powershell -Command "& {[Environment]::GetFolderPath('MyDocuments')}"`) DO SET DOCUMENTSDIR=%%i

chcp 65001

echo 終止程序中...
@echo off
taskkill /f /im password_generator_win.exe

if exist "%DOCUMENTSDIR%\Password Generator\tmp" (

    echo 更新檔案中...
    @echo off

    xcopy /s "%DOCUMENTSDIR%\Password Generator\tmp"\* .\ /y/k
    rmdir /s/q "%DOCUMENTSDIR%\Password Generator\tmp"

    echo 更新完畢!
    @echo off
    exit

) else (
    echo 發生錯誤
    @echo off
)