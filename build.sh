#!/bin/bash

# Build script for Vercel deployment
# Creates public folder and copies all necessary files

echo "🔨 Building for Vercel deployment..."

# Create public directory
mkdir -p public

# Copy HTML lessons
echo "📝 Copying HTML lessons..."
cp -r lessons/*.html public/ 2>/dev/null || true

# Copy Markdown lessons
echo "📚 Copying Markdown lessons..."
mkdir -p public/lessons
cp -r lessons/*.md public/lessons/ 2>/dev/null || true

# Copy main documentation files
echo "📖 Copying documentation..."
cp README.md public/ 2>/dev/null || true
cp MISSION.md public/ 2>/dev/null || true
cp 30-DAY-ROADMAP.md public/ 2>/dev/null || true
cp LESSONS-INDEX.md public/ 2>/dev/null || true
cp NOTES.md public/ 2>/dev/null || true
cp RESOURCES.md public/ 2>/dev/null || true

# Copy assets
echo "🎨 Copying assets..."
mkdir -p public/assets
cp -r assets/* public/assets/ 2>/dev/null || true

# Create index.html for root access
echo "🏠 Creating index.html..."
cat > public/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HSK1 30-Day Learning System</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: #333;
            line-height: 1.6;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        .container {
            background: white;
            border-radius: 10px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.2);
            padding: 50px;
            max-width: 800px;
            text-align: center;
        }
        h1 {
            color: #667eea;
            font-size: 2.5em;
            margin-bottom: 20px;
        }
        p {
            color: #555;
            font-size: 1.1em;
            margin-bottom: 15px;
        }
        .cta-buttons {
            display: flex;
            gap: 15px;
            justify-content: center;
            margin-top: 30px;
            flex-wrap: wrap;
        }
        .btn {
            display: inline-block;
            padding: 15px 30px;
            background: #667eea;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s;
            font-weight: bold;
        }
        .btn:hover {
            background: #764ba2;
        }
        .btn.secondary {
            background: #ccc;
            color: #333;
        }
        .btn.secondary:hover {
            background: #aaa;
        }
        .features {
            margin: 40px 0;
            text-align: left;
        }
        .features h2 {
            color: #667eea;
            margin-bottom: 20px;
        }
        .features ul {
            margin-left: 20px;
        }
        .features li {
            margin-bottom: 10px;
            color: #555;
        }
        .emoji {
            font-size: 1.5em;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🚀 HSK1 30-Day Learning System</h1>
        <p>Master Chinese in just 30 days with our comprehensive, interactive lessons</p>

        <div class="cta-buttons">
            <a href="DAY-01-Pinyin-Introduction.html" class="btn">📅 Start Day 1</a>
            <a href="README.md" class="btn secondary">📖 Read Guide</a>
        </div>

        <div class="features">
            <h2>What's Inside:</h2>
            <ul>
                <li><span class="emoji">📝</span> 5 Interactive HTML Lessons (Days 1-5)</li>
                <li><span class="emoji">📚</span> 7 Comprehensive Markdown Lessons</li>
                <li><span class="emoji">📅</span> Complete 30-Day Roadmap with Daily Tasks</li>
                <li><span class="emoji">🎯</span> Clear Learning Objectives & Success Metrics</li>
                <li><span class="emoji">🎓</span> Practice Exercises & Homework for Each Day</li>
                <li><span class="emoji">🌟</span> Multiple Learning Paths (Linear, Skills-Based, Accelerated)</li>
            </ul>
        </div>

        <div class="features">
            <h2>Quick Navigation:</h2>
            <ul>
                <li><span class="emoji">🎤</span> <a href="DAY-01-Pinyin-Introduction.html" style="color: #667eea; text-decoration: none; font-weight: bold;">Day 1: Pinyin & Tones</a></li>
                <li><span class="emoji">🔤</span> <a href="DAY-02-Tone-1-Deep-Dive.html" style="color: #667eea; text-decoration: none; font-weight: bold;">Day 2: Tone 1 Deep Dive</a></li>
                <li><span class="emoji">🎵</span> <a href="DAY-03-Tone-2-Deep-Dive.html" style="color: #667eea; text-decoration: none; font-weight: bold;">Day 3: Tone 2 Deep Dive</a></li>
                <li><span class="emoji">📊</span> <a href="DAY-04-Tone-3-Deep-Dive.html" style="color: #667eea; text-decoration: none; font-weight: bold;">Day 4: Tone 3 Deep Dive</a></li>
                <li><span class="emoji">⬇️</span> <a href="DAY-05-Tone-4-Deep-Dive.html" style="color: #667eea; text-decoration: none; font-weight: bold;">Day 5: Tone 4 Deep Dive</a></li>
            </ul>
        </div>

        <p style="margin-top: 40px; color: #999; font-size: 0.9em;">
            Built with ❤️ for Chinese learners | Generated with Claude Code
        </p>
    </div>
</body>
</html>
EOF

echo "✅ Build complete! Public folder ready for deployment."
echo "📁 Public folder contents:"
ls -la public/

exit 0
