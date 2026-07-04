@echo off
echo ====================================================
echo Scene Light Manager Doc Setup and Push
echo ====================================================
echo.
echo Installing npm packages...
call npm install
if %ERRORLEVEL% neq 0 (
    echo Error during npm install. Make sure Node.js is installed.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo Building Astro project...
call npm run build
if %ERRORLEVEL% neq 0 (
    echo Error during npm build.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo Initializing Git repository...
git init
git remote add origin https://github.com/r-kez/k_tools_scene_light_manager_slm_documentation.git
git branch -M main
git add .
git commit -m "Initial commit of Scene Light Manager documentation website"

echo.
echo Pushing to GitHub...
git push -u origin main
if %ERRORLEVEL% neq 0 (
    echo.
    echo Error pushing to GitHub. Please check if the repository exists at:
    echo https://github.com/r-kez/k_tools_scene_light_manager_slm_documentation
    echo and that your Git credentials are set up correctly.
) else (
    echo.
    echo Done! Documentation has been set up and pushed successfully.
)
pause
