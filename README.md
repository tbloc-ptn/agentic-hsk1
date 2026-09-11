# 🚀 Agentic HSK1 - 30-Day Chinese Learning System

A comprehensive, interactive 30-day roadmap to master HSK1 (Hanyu Shuiping Kaoshi Level 1) Chinese proficiency exam.

**Live Demo:** [Deploy to Vercel] (Auto-deploys on develop branch updates)

---

## 📚 What's Included

### Roadmap & Planning
- **30-DAY-ROADMAP.md** - Complete daily breakdown for all 30 days
- **MISSION.md** - Your learning goal: Pass HSK1 in 3 months
- **LESSONS-INDEX.md** - Master navigation guide for all lessons
- **NOTES.md** - Teaching notes and progress tracking

### 7 Comprehensive Markdown Lessons
1. **LESSON-01: Pinyin & The Four Tones** - Foundation of Chinese pronunciation
2. **LESSON-02: Radicals 101** - Learn 5 core radicals and character structure
3. **LESSON-03: Basic Greetings** - 10 essential phrases for interaction
4. **LESSON-04: Numbers 1-10** - Count and use numbers in sentences
5. **LESSON-05: Core Verbs & Sentence Structure** - Build simple sentences
6. **LESSON-06: Family Members & Descriptions** - Talk about people
7. **LESSON-07: 30-Day Review & Integration** - Assessment and consolidation

### 5 Interactive HTML Lessons (Days 1-5)
- **DAY-01-Pinyin-Introduction.html** - Overview of pinyin system
- **DAY-02-Tone-1-Deep-Dive.html** - Master Tone 1 (High Flat)
- **DAY-03-Tone-2-Deep-Dive.html** - Master Tone 2 (Rising)
- **DAY-04-Tone-3-Deep-Dive.html** - Master Tone 3 (Low Dipping)
- **DAY-05-Tone-4-Deep-Dive.html** - Master Tone 4 (Falling)

*More interactive lessons for Days 6-30 coming soon!*

---

## 🎯 Quick Start

### 1. **Choose Your Learning Path**
- **Linear Path:** Follow LESSON-01 through LESSON-07 in order
- **Skills-Based Path:** Focus on specific skills (tones, characters, speaking, etc.)
- **Accelerated Path:** For those with language learning experience

See **LESSONS-INDEX.md** for detailed learning paths.

### 2. **Follow the 30-Day Roadmap**
- **30-45 minutes daily** (can be split into two sessions)
- Follow the daily tasks in **30-DAY-ROADMAP.md**
- Track progress with daily checkpoints

### 3. **Set Up Learning Tools**
- **Anki** - Create spaced-repetition flashcard decks (instructions in each lesson)
- **Mandarin.com** - Tone listening exercises
- **Hanzi Writer** - Character stroke order practice
- **ChinesePod** - Audio lessons and dialogues
- **Easy Chinese (YouTube)** - Native speaker videos

### 4. **Start with Day 1**
```bash
Open: lessons/DAY-01-Pinyin-Introduction.html
Time: 45 minutes
Focus: Understand what pinyin is and introduce the 4 tones
```

---

## 📖 Lesson Breakdown

### Week 1: Pinyin Mastery (Days 1-7)
**Goal:** Master all 4 tones; identify tones by sound

- Day 1: Introduction to Pinyin & Tones
- Day 2: Tone 1 (High) Deep Dive
- Day 3: Tone 2 (Rising) Deep Dive
- Day 4: Tone 3 (Low Dipping) Deep Dive
- Day 5: Tone 4 (Falling) Deep Dive
- Day 6-7: Tone combinations & sandhi

### Week 2: Character Structure (Days 8-14)
**Goal:** Learn 20 characters; understand 5 radicals

- Learn radicals: 人, 木, 水, 火, 心
- Practice stroke order
- Create character flashcards
- Recognize characters in context

### Week 3: Greetings & Numbers (Days 15-21)
**Goal:** Hold basic conversations; count naturally

- 10 essential greetings
- Numbers 1-10
- Simple questions & answers
- Greeting dialogues

### Week 4: Verbs & Integration (Days 22-30)
**Goal:** Build sentences; describe family; consolidate learning

- 5 core verbs: 是, 有, 吃, 喝, 去
- Sentence structure (S+V+O)
- Family vocabulary & descriptions
- 30-Day checkpoint assessment

---

## 🎓 Learning Objectives

### By Day 30, You Will:
- ✅ Identify all 4 tones by sound with 90%+ accuracy
- ✅ Recognize 20+ Chinese characters
- ✅ Know 70+ HSK1 vocabulary words
- ✅ Greet people naturally in Chinese
- ✅ Count 1-10 and use numbers in sentences
- ✅ Describe yourself and your family
- ✅ Build simple S+V+O sentences
- ✅ Understand 70%+ of slow, clear Chinese speech
- ✅ Hold 2-3 minute conversations naturally

### By Day 60 (End of Month 2), You Will:
- Understand 60-70% of HSK1-level audio
- Read and comprehend simple 5-10 sentence stories
- Hold 2-3 minute conversations naturally
- Use 100+ HSK1 vocabulary words
- Explain your job, family, and daily routine
- Be ready to take the official HSK1 practice exam

### By Day 90 (Month 3), You Will:
- **Pass the HSK1 exam** with 150+ points (passing typically 120-150)
- Have a solid foundation to move to HSK2 (intermediate level)
- Be able to communicate in basic daily situations

---

## 🚀 GitHub Actions & Vercel Deployment

This repository automatically deploys to Vercel when you push to the `develop` branch.

### Setup (One-time):
1. Create Vercel account: https://vercel.com
2. Link GitHub repository
3. Add GitHub Secrets:
   - `VERCEL_TOKEN` - From Vercel dashboard
   - `VERCEL_ORG_ID` - From Vercel settings
   - `VERCEL_PROJECT_ID` - From Vercel project settings

### Deployment Workflow:
```
Push to develop branch → GitHub Actions triggered → Vercel deployment
```

View deployment status: `.github/workflows/deploy-vercel.yml`

---

## 📁 Project Structure

```
hsk1/
├── README.md                           # This file
├── 30-DAY-ROADMAP.md                   # Daily breakdown for 30 days
├── LESSONS-INDEX.md                    # Master navigation guide
├── MISSION.md                          # Learning goal & context
├── NOTES.md                            # Teaching notes
├── RESOURCES.md                        # External learning tools
├── vercel.json                         # Vercel deployment config
├── .github/
│   └── workflows/
│       └── deploy-vercel.yml           # GitHub Actions workflow
├── lessons/
│   ├── LESSON-01-Pinyin-and-Tones.md
│   ├── LESSON-02-Radicals-101.md
│   ├── LESSON-03-Basic-Greetings.md
│   ├── LESSON-04-Numbers-1-to-10.md
│   ├── LESSON-05-Core-Verbs-and-Sentence-Structure.md
│   ├── LESSON-06-Family-Members-and-Basic-Descriptions.md
│   ├── LESSON-07-30-Day-Review-and-Integration.md
│   ├── DAY-01-Pinyin-Introduction.html
│   ├── DAY-02-Tone-1-Deep-Dive.html
│   ├── DAY-03-Tone-2-Deep-Dive.html
│   ├── DAY-04-Tone-3-Deep-Dive.html
│   └── DAY-05-Tone-4-Deep-Dive.html
└── assets/
    └── lesson-styles.css               # Shared CSS styles
```

---

## 💡 Key Features

### 📝 Comprehensive Lessons
- Detailed explanations of each concept
- Multiple practice exercises per lesson
- Clear examples with pinyin and English translations
- Homework for each day

### 🎯 Daily Roadmap
- Specific tasks for each day (30-45 min)
- Clear learning objectives
- Progress checkpoints
- Weekly assessments

### 🌐 Interactive HTML
- Beautiful, responsive design
- Progress tracking
- Easy navigation between lessons
- Mobile-friendly interface

### 🎓 Flexible Learning Paths
- Linear (follow in order)
- Skills-based (focus on specific areas)
- Accelerated (for experienced learners)

### 📱 Tools & Resources
- Links to free learning platforms
- Anki flashcard templates
- Recording & comparison exercises
- Real conversation practice guides

---

## 🎤 Learning Tips

### Consistency is Key
**30 min daily > 3 hours once a week**
- Momentum matters more than intensity
- Daily practice builds neural pathways
- Missing days breaks the rhythm

### Say It Out Loud
- Don't just read or listen
- Speak every syllable
- Record yourself frequently
- Compare to native speakers

### Use Spaced Repetition
- Anki flashcards are your friend
- Review at strategic intervals
- Strengthen long-term memory
- Active recall beats passive reading

### Celebrate Small Wins
- Day 7: You master all 4 tones!
- Day 14: You recognize 20 characters!
- Day 21: You hold a basic conversation!
- Day 30: Complete assessment ready!

### Join a Community
- HelloTalk or Tandem for language exchange
- Find a study buddy
- Share progress on social media
- Accountability increases success

---

## 🏆 Success Metrics

### Week 1 (Days 1-7)
- [ ] Can identify all 4 tones by sound (90%+)
- [ ] Can write pinyin with correct tone marks
- [ ] Can pronounce all tones naturally

### Week 2 (Days 8-14)
- [ ] Can recognize 20+ characters
- [ ] Can identify 5 core radicals
- [ ] Can write 15+ characters from memory

### Week 3 (Days 15-21)
- [ ] Can greet people naturally
- [ ] Can count 1-10 smoothly
- [ ] Can hold 30-second conversation

### Week 4 (Days 22-30)
- [ ] Can build simple sentences (S+V+O)
- [ ] Can describe family with adjectives
- [ ] Pass Day 30 checkpoint assessment

---

## 📞 Support & Questions

### Getting Help
1. **Re-read the relevant lesson** - Most answers are there
2. **Check LESSONS-INDEX.md** - Find what you need
3. **Review the practice exercises** - Apply concepts
4. **Record and compare** - Check your pronunciation

### Troubleshooting
- **Tones feel weird?** - Completely normal! Most learners need 15-20 days
- **Characters too hard?** - Focus on radicals first, not individual strokes
- **Can't understand native speakers?** - Use 1.5x speed videos initially
- **Forgetting words?** - Use Anki daily, not weekly

---

## 🌟 What Makes This Different

- **30-Day Focus:** Perfect pace for rapid foundation building
- **Multiple Formats:** Markdown lessons + interactive HTML + daily roadmap
- **Flexible Paths:** Adapt to your learning style
- **Structured Yet Free:** Follow the path or customize it
- **Real-World Outcomes:** Prepare for actual HSK1 exam
- **Community-Driven:** Learn alongside other students
- **Continuous Improvement:** Lessons updated based on feedback

---

## 📊 Expected Progress

```
Day 1-7     ▓░░░░░░░░░░░░░░░░░░░░ 10% - Tones mastered
Day 8-14    ▓▓▓░░░░░░░░░░░░░░░░░░ 25% - Characters learned
Day 15-21   ▓▓▓▓▓▓░░░░░░░░░░░░░░░ 50% - Conversing naturally
Day 22-30   ▓▓▓▓▓▓▓▓▓▓▓░░░░░░░░░░ 100% - HSK1 ready!
```

---

## 🎁 Bonus Content

### Coming Soon
- Days 6-30 interactive HTML lessons
- Audio files for listening practice
- Video walkthroughs of key concepts
- Interactive tone practice games
- Mock HSK1 exam interface
- Community forum

---

## 📜 License

This project is open-source and available for educational use.

---

## 🚀 Ready to Start?

### Next Steps:
1. Open **LESSONS-INDEX.md** to choose your learning path
2. Start with **lessons/DAY-01-Pinyin-Introduction.html**
3. Commit to 30-45 minutes daily
4. Track your progress in **NOTES.md**
5. Join the learning community!

---

**你好! (Hello!) Welcome to your 30-day Chinese learning journey!**

坚持就是胜利! (Persistence is victory!)

---

**Project:** Agentic HSK1 Learning System  
**Status:** 🟢 Active Development  
**Last Updated:** 2026-09-11  
**Next Update:** Days 6-30 HTML lessons  

Generated with [Claude Code](https://claude.com/claude-code) 🤖
