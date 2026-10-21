#!/usr/bin/env bash
# בונה את ה-System prompt ל-Make מקבצי הסוכנת, כדי שיהיה מקור אמת אחד.
# להריץ אחרי כל שינוי ב-voice / structure / profile / SKILL, ולהדביק מחדש ב-Make.
set -euo pipefail
cd "$(dirname "$0")"
SKILL=../.claude/skills/bocharot-beometz
{
  cat make-mode.md
  echo
  sed '1,/^---$/{/^---$/!d};1,/^---$/d' "$SKILL/SKILL.md"   # בלי ה-frontmatter
  echo; echo "---"; echo
  cat "$SKILL/voice.md"
  echo; echo "---"; echo
  cat "$SKILL/structure.md"
  echo; echo "---"; echo
  cat "$SKILL/profile.md"
  if [ -f "$SKILL/course.md" ]; then echo; echo "---"; echo; cat "$SKILL/course.md"; fi
} > system-prompt.md
echo "system-prompt.md: $(wc -w < system-prompt.md) words"
