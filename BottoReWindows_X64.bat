@echo off
where git.exe >nul 2>&1 && echo: || echo git not installed
git clone https://github.com/SomnathDas/Whatsapp-Botto-Re || goto :error
cd Whatsapp-Botto-Re || goto :error
npm install || goto :error

echo ------Bot Nodejs dependancys Successfully Installed ------
echo ------Installing Required bin's                     ------
where mogrify.exe >nul 2>&1 && echo: || (echo `Downloading and Installing ImageMagic (Install it with Legacy components eg mogrify.exe or it wont work` && GOTO :installmagick )
:bin2
powershell -Command "Invoke-WebRequest https://imagemagick.org/download/binaries/ImageMagick-7.0.10-50-Q16-HDRI-x64-dll.exe -OutFile magicksetup.exe && ./magicksetup.exe"




GOTO EOF
:error
echo Failed with error #%errorlevel%.
exit /b %errorlevel%
:installmagick
powershell -Command "Invoke-WebRequest https://imagemagick.org/download/binaries/ImageMagick-7.0.10-50-Q16-HDRI-x64-dll.exe -OutFile magicksetup.exe && ./magicksetup.exe"
GOTO :bin2
:botstart
npm start
