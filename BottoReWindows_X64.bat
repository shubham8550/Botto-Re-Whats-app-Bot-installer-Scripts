@echo off
CLS
where git.exe >nul 2>&1 && echo: || echo git not installed
git clone https://github.com/SomnathDas/Whatsapp-Botto-Re || echo Directory Exist Assuming you already cloned repo
cd Whatsapp-Botto-Re || goto :error
rem npm install || goto :error
echo node start > "Run.bat"
echo ------Bot Nodejs dependancys Successfully Installed ------
:bin1
echo ------Installing Required bin's                     ------
where mogrify.exe >nul 2>&1 && echo: || (echo `Downloading and Installing ImageMagic (Install it with Legacy components eg mogrify.exe or it wont work` && GOTO :installmagick )
:bin2
echo ------Installing gif2webp                  ------
powershell -Command "Invoke-WebRequest https://github.com/shubham8550/Botto-Re-Whats-app-Bot-installer-Scripts/raw/master/gif2webp.exe -OutFile gif2webp.exe"


echo ------[ DONE ]Botto re   Successfully Installed ------
echo ------[ note ] you can Start bot with `Run.bat` ------

ECHO.
ECHO 1 - Run Bot Now?
ECHO 2 - exit
ECHO.
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO botstart
IF %M%==2 GOTO EOF
GOTO EOF
:error
echo Failed with error #%errorlevel%.
exit /b %errorlevel%
:installmagick
powershell -Command "Invoke-WebRequest https://imagemagick.org/download/binaries/ImageMagick-7.0.10-50-Q16-HDRI-x64-dll.exe -OutFile magicksetup.exe"
magicksetup.exe
GOTO :bin2
:botstart
npm start
