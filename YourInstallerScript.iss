; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "VideoConverter"
#define MyAppVersion "1.0"
#define MyAppPublisher "Your Publisher"
#define MyAppExeName "convert_2.bat"
#define MyAppIcon "C:\Users\Kevin\Desktop\Proyectos\ffmpegVideoConverter\icon.exe"
#define MyAppRegFile "C:\Users\Kevin\Desktop\Proyectos\ffmpegVideoConverter\VideoConverter_v3.reg"

[Setup]
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=Output
OutputBaseFilename=Setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Kevin\Desktop\Proyectos\ffmpegVideoConverter\VideoConverter_v3.reg"; DestDir: "{tmp}"

[Run]
Filename: "reg"; Parameters: "import ""{tmp}\VideoConverter_v3.reg"""