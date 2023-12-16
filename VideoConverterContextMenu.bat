@echo off

setlocal enabledelayedexpansion

:: Set the directory where your batch file is located
set "batchDir=%~dp0"

:: Set the path to the icon
set "iconPath=!batchDir!icon.ico,0"

:: Define file extensions
set "fileExtensions=.webm .avi .mp4 .mov"

:: Loop through each file extension and create registry entries
for %%A in (%fileExtensions%) do (
    rem Convert to MP4 entries
    if "%%A" neq ".mp4" (
        reg add "HKCU\Software\Classes\SystemFileAssociations\%%~A\shell\ConvertToMP4" /ve /d "Convert to MP4" /f >nul
        reg add "HKCU\Software\Classes\SystemFileAssociations\%%~A\shell\ConvertToMP4\command" /ve /d "\"!batchDir!convert_2.bat\" \"%%1\" mp4" /f >nul
        reg add "HKCU\Software\Classes\SystemFileAssociations\%%~A\shell\ConvertToMP4" /v "Icon" /d "!iconPath!" /f >nul
    )

    rem Convert to AVI entries
    if "%%A" neq ".avi" (
        reg add "HKCU\Software\Classes\SystemFileAssociations\%%~A\shell\ConvertToAVI" /ve /d "Convert to AVI" /f >nul
        reg add "HKCU\Software\Classes\SystemFileAssociations\%%~A\shell\ConvertToAVI\command" /ve /d "\"!batchDir!convert_2.bat\" \"%%1\" avi" /f >nul
        reg add "HKCU\Software\Classes\SystemFileAssociations\%%~A\shell\ConvertToAVI" /v "Icon" /d "!iconPath!" /f >nul
    )

    rem Convert to MOV entries
    if "%%A" neq ".mov" (
        reg add "HKCU\Software\Classes\SystemFileAssociations\%%~A\shell\ConvertToMOV" /ve /d "Convert to MOV" /f >nul
        reg add "HKCU\Software\Classes\SystemFileAssociations\%%~A\shell\ConvertToMOV\command" /ve /d "\"!batchDir!convert_2.bat\" \"%%1\" mov" /f >nul
        reg add "HKCU\Software\Classes\SystemFileAssociations\%%~A\shell\ConvertToMOV" /v "Icon" /d "!iconPath!" /f >nul
    )

    rem Convert to WebM entries
    if "%%A" neq ".webm" (
        reg add "HKCU\Software\Classes\SystemFileAssociations\%%~A\shell\ConvertToWebM" /ve /d "Convert to WebM" /f >nul
        reg add "HKCU\Software\Classes\SystemFileAssociations\%%~A\shell\ConvertToWebM\command" /ve /d "\"!batchDir!convert_2.bat\" \"%%1\" webm" /f >nul
        reg add "HKCU\Software\Classes\SystemFileAssociations\%%~A\shell\ConvertToWebM" /v "Icon" /d "!iconPath!" /f >nul
    )
)

endlocal
