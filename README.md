# Windows-FFmpeg-context-menu
This is a tool for Windows I created to use FFmpeg with simple context menus for video files. Simply right click your .avi .mp4 .mov .webm files and you will be able to convert them into any of those other formats. It uses <strong>VideoConverterContextMenu.bat</strong> to modify the registry in order to add the context menus. Those context menus will execute the <strong>convert_2.bat</strong> that simply calls ffmpeg with different arguments for the different input and output file fomats so that the conversion is successful. I have also created a <strong>DELETE_VideoConverterContextMenu.bat</strong> to get rid of the context menus if you wish. If you want to see where the registry is being modified, go to this path on the registry:
Equipo\HKEY_CLASSES_ROOT\SystemFileAssociations\.webm (or the other file extensions)

![alt text](https://res.cloudinary.com/dionckchd/image/upload/v1702043070/kjjhac4njse1urbmvqvo.png)

NOTE: this assumes you have FFmpeg installed and you are able to use it anywhere (you have it on the PATH enviromental variable).
