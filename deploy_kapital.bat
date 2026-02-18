@echo off
REM --- Guardar cambios pendientes en stash ---
git stash

REM --- Cambiar a la rama principal y compilar con base href correcto ---
git checkout main
flutter build web --base-href /Kapital_App/

REM --- Cambiar a gh-pages ---
git checkout gh-pages

REM --- Copiar build a la raíz de gh-pages ---
xcopy build\web . /E /H /C /I /Y

REM --- Commit con fecha y hora ---
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do set DATE=%%a-%%b-%%c
for /f "tokens=1-2 delims=: " %%a in ('time /t') do set TIME=%%a-%%b
git add .
git commit -m "Deploy Kapital web build (%DATE% %TIME%)"
git push origin gh-pages --force

REM --- Volver a la rama principal y recuperar stash ---
git checkout main
git stash pop

echo.
echo ✅ Deploy completado en %DATE% %TIME%. Tu app ya está publicada en GitHub Pages.
pause
