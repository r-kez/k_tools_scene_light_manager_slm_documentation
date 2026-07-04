@echo off
cd /d "%~dp0"
echo ====================================================
echo Scene Light Manager Doc Setup and Push (GitHub Actions Version)
echo ====================================================
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
    echo Done! Code pushed successfully. GitHub Actions will now build and deploy the site.
)
pause
