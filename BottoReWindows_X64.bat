@echo off
where git.exe >nul 2>&1 && echo: || echo git not installed
git clone https://github.com/SomnathDas/Whatsapp-Botto-Re || goto :error
cd Whatsapp-Botto-Re || goto :error
rem npm install || goto :error

echo ------Bot Nodejs dependancys Successfully Installed ------
:bin1
echo ------Installing Required bin's                     ------
where mogrify.exe >nul 2>&1 && echo: || (echo `Downloading and Installing ImageMagic (Install it with Legacy components eg mogrify.exe or it wont work` && GOTO :installmagick )
:bin2
powershell -Command "Invoke-WebRequest https://github.com/shubham8550/Botto-Re-Whats-app-Bot-installer-Scripts/raw/master/gif2webp.exe -OutFile gif2webp.exe"


echo ------[ DONE ]Botto re   Successfully Installed ------
echo ------[ note ] you can run bot using command  'npm start'

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
