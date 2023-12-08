@echo off
setlocal enabledelayedexpansion

set input_file="%~1"
set output_format="%~2"

if not defined output_format (
    set output_format=avi
)

set output_file=!input_file:%~x1=!.!output_format!

if /i "%~x1"==".webm" (
    ffmpeg -i %input_file% -c:v libx264 -c:a aac -strict experimental %output_file%
) else if /i "%~x1"==".mp4" (
    ffmpeg -i %input_file% %output_file%
) else if /i "%~x1"==".avi" (
    echo !output_format! | findstr /i ".webm" >nul && (
        ffmpeg -i %input_file% -c:v libvpx -b:v 2000k -pix_fmt yuva420p -auto-alt-ref 0 %output_file%
    ) || (
        ffmpeg -i %input_file% -c:v copy -c:a copy %output_file%
    )
) else if /i "%~x1"==".mov" (
    ffmpeg -i %input_file% %output_file%
) else if /i "!output_format!"=="mov" (
    ffmpeg -i %input_file% %output_file%
) else (
    ffmpeg -i %input_file% -codec copy %output_file%
)

exit /b
