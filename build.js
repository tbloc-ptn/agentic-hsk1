#!/usr/bin/env node

/**
 * Build script for Vercel deployment
 * Creates public folder and copies all necessary files
 */

const fs = require('fs');
const path = require('path');

console.log('🔨 Building for Vercel deployment...\n');

// Create public directory
const publicDir = path.join(__dirname, 'public');
if (!fs.existsSync(publicDir)) {
  fs.mkdirSync(publicDir, { recursive: true });
  console.log('✅ Created public directory');
}

// Helper function to copy files
function copyFiles(source, dest, filePattern) {
  if (!fs.existsSync(source)) {
    console.log(`⚠️  Source directory not found: ${source}`);
    return;
  }

  if (!fs.existsSync(dest)) {
    fs.mkdirSync(dest, { recursive: true });
  }

  const files = fs.readdirSync(source);
  files.forEach(file => {
    const srcPath = path.join(source, file);
    const destPath = path.join(dest, file);

    if (fs.statSync(srcPath).isDirectory()) {
      fs.cpSync(srcPath, destPath, { recursive: true });
    } else if (!filePattern || filePattern.test(file)) {
      fs.copyFileSync(srcPath, destPath);
    }
  });
}

// Copy HTML lessons
console.log('📝 Copying HTML lessons...');
copyFiles(
  path.join(__dirname, 'lessons'),
  publicDir,
  /\.html$/
);

// Copy Markdown lessons
console.log('📚 Copying Markdown lessons...');
const lessonsDir = path.join(publicDir, 'lessons');
if (!fs.existsSync(lessonsDir)) {
  fs.mkdirSync(lessonsDir, { recursive: true });
}
copyFiles(
  path.join(__dirname, 'lessons'),
  lessonsDir,
  /\.md$/
);

// Copy main documentation files
console.log('📖 Copying documentation...');
const docsToCopy = [
  'README.md',
  'MISSION.md',
  '30-DAY-ROADMAP.md',
  'LESSONS-INDEX.md',
  'NOTES.md',
  'RESOURCES.md'
];

docsToCopy.forEach(file => {
  const srcPath = path.join(__dirname, file);
  if (fs.existsSync(srcPath)) {
    fs.copyFileSync(srcPath, path.join(publicDir, file));
  }
});

// Copy assets
console.log('🎨 Copying assets...');
const assetsSource = path.join(__dirname, 'assets');
const assetsDest = path.join(publicDir, 'assets');
if (fs.existsSync(assetsSource)) {
  fs.cpSync(assetsSource, assetsDest, { recursive: true });
}

// Create index.html landing page
console.log('🏠 Creating index.html...');
const indexHtml = `<!DOCTYPE html>
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
            border: none;
            cursor: pointer;
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
        a {
            color: #667eea;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
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
                <li><span class="emoji">🎤</span> <a href="DAY-01-Pinyin-Introduction.html">Day 1: Pinyin & Tones</a></li>
                <li><span class="emoji">🔤</span> <a href="DAY-02-Tone-1-Deep-Dive.html">Day 2: Tone 1 Deep Dive</a></li>
                <li><span class="emoji">🎵</span> <a href="DAY-03-Tone-2-Deep-Dive.html">Day 3: Tone 2 Deep Dive</a></li>
                <li><span class="emoji">📊</span> <a href="DAY-04-Tone-3-Deep-Dive.html">Day 4: Tone 3 Deep Dive</a></li>
                <li><span class="emoji">⬇️</span> <a href="DAY-05-Tone-4-Deep-Dive.html">Day 5: Tone 4 Deep Dive</a></li>
                <li><span class="emoji">📖</span> <a href="README.md">Full Documentation</a></li>
                <li><span class="emoji">📅</span> <a href="30-DAY-ROADMAP.md">30-Day Roadmap</a></li>
                <li><span class="emoji">🗺️</span> <a href="LESSONS-INDEX.md">Lessons Index</a></li>
            </ul>
        </div>

        <p style="margin-top: 40px; color: #999; font-size: 0.9em;">
            Built with ❤️ for Chinese learners | Generated with Claude Code
        </p>
    </div>
</body>
</html>`;

fs.writeFileSync(path.join(publicDir, 'index.html'), indexHtml);

console.log('\n✅ Build complete! Public folder ready for deployment.');
console.log('📁 Public folder structure:');
console.log(JSON.stringify(getDirectoryStructure(publicDir), null, 2));

/**
 * Helper function to get directory structure
 */
function getDirectoryStructure(dir, prefix = '') {
  const structure = {};

  try {
    const files = fs.readdirSync(dir);
    files.forEach(file => {
      const filePath = path.join(dir, file);
      if (fs.statSync(filePath).isDirectory()) {
        structure[file + '/'] = getDirectoryStructure(filePath, prefix + '  ');
      } else {
        structure[file] = 'file';
      }
    });
  } catch (e) {
    console.error(`Error reading directory: ${dir}`, e);
  }

  return structure;
}

console.log('\n🎉 Ready for deployment!');
