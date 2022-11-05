@echo off

chcp 65001

echo 終止程序中...
taskkill /f /im password_generator_win.exe

if exist tmp (

    echo 更新檔案中...

    xcopy /s tmp\* .\ /y
    rmdir /s/q tmp

    echo 更新完畢!

) else (
    echo 發生錯誤
)

pause