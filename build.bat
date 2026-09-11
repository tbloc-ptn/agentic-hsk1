@echo off
REM Build script for Vercel deployment (Windows)
REM Creates public folder and copies all necessary files

echo 🔨 Building for Vercel deployment...

REM Create public directory
if not exist "public" mkdir public

REM Copy HTML lessons
echo 📝 Copying HTML lessons...
if exist "lessons\*.html" copy lessons\*.html public\ >nul 2>&1

REM Copy Markdown lessons
echo 📚 Copying Markdown lessons...
if not exist "public\lessons" mkdir public\lessons
if exist "lessons\*.md" copy lessons\*.md public\lessons\ >nul 2>&1

REM Copy main documentation files
echo 📖 Copying documentation...
if exist "README.md" copy README.md public\ >nul 2>&1
if exist "MISSION.md" copy MISSION.md public\ >nul 2>&1
if exist "30-DAY-ROADMAP.md" copy 30-DAY-ROADMAP.md public\ >nul 2>&1
if exist "LESSONS-INDEX.md" copy LESSONS-INDEX.md public\ >nul 2>&1
if exist "NOTES.md" copy NOTES.md public\ >nul 2>&1
if exist "RESOURCES.md" copy RESOURCES.md public\ >nul 2>&1

REM Copy assets
echo 🎨 Copying assets...
if not exist "public\assets" mkdir public\assets
if exist "assets\*" xcopy assets public\assets\ /E /Y >nul 2>&1

REM Create index.html for root access
echo 🏠 Creating index.html...
(
echo ^<!DOCTYPE html^>
echo ^<html lang="en"^>
echo ^<head^>
echo     ^<meta charset="UTF-8"^>
echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
echo     ^<title^>HSK1 30-Day Learning System^</title^>
echo     ^<style^>
echo         * { margin: 0; padding: 0; box-sizing: border-box; }
echo         body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background: linear-gradient^(135deg, #667eea 0%%, #764ba2 100%%^); color: #333; line-height: 1.6; min-height: 100vh; display: flex; align-items: center; justify-content: center; padding: 20px; }
echo         .container { background: white; border-radius: 10px; box-shadow: 0 10px 40px rgba^(0,0,0,0.2^); padding: 50px; max-width: 800px; text-align: center; }
echo         h1 { color: #667eea; font-size: 2.5em; margin-bottom: 20px; }
echo         p { color: #555; font-size: 1.1em; margin-bottom: 15px; }
echo         .cta-buttons { display: flex; gap: 15px; justify-content: center; margin-top: 30px; flex-wrap: wrap; }
echo         .btn { display: inline-block; padding: 15px 30px; background: #667eea; color: white; text-decoration: none; border-radius: 5px; transition: background 0.3s; font-weight: bold; }
echo         .btn:hover { background: #764ba2; }
echo         .features { margin: 40px 0; text-align: left; }
echo         .features h2 { color: #667eea; margin-bottom: 20px; }
echo         .features ul { margin-left: 20px; }
echo         .features li { margin-bottom: 10px; color: #555; }
echo     ^</style^>
echo ^</head^>
echo ^<body^>
echo     ^<div class="container"^>
echo         ^<h1^>🚀 HSK1 30-Day Learning System^</h1^>
echo         ^<p^>Master Chinese in just 30 days with our comprehensive, interactive lessons^</p^>
echo         ^<div class="cta-buttons"^>
echo             ^<a href="DAY-01-Pinyin-Introduction.html" class="btn"^>📅 Start Day 1^</a^>
echo             ^<a href="README.md" class="btn"^>📖 Read Guide^</a^>
echo         ^</div^>
echo         ^<div class="features"^>
echo             ^<h2^>What's Inside:^</h2^>
echo             ^<ul^>
echo                 ^<li^>📝 5 Interactive HTML Lessons ^(Days 1-5^)^</li^>
echo                 ^<li^>📚 7 Comprehensive Markdown Lessons^</li^>
echo                 ^<li^>📅 Complete 30-Day Roadmap^</li^>
echo                 ^<li^>🎯 Clear Learning Objectives^</li^>
echo                 ^<li^>🎓 Practice Exercises for Each Day^</li^>
echo             ^</ul^>
echo         ^</div^>
echo     ^</div^>
echo ^</body^>
echo ^</html^>
) > public\index.html

echo.
echo ✅ Build complete! Public folder ready for deployment.
echo 📁 Public folder created with all assets.

exit /b 0
