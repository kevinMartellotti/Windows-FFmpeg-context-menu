@echo off

:: Define file extensions
set "fileExtensions=.webm .avi .mp4 .mov"

:: Loop through each file extension and remove the 'shell' subkey
for %%A in (%fileExtensions%) do (
    reg delete "HKCU\Software\Classes\SystemFileAssociations\%%~A\shell" /f >nul
)

echo File associations have been reset.
