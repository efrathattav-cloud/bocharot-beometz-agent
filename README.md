<div dir="rtl">

# סוכנת התוכן של "בוחרות באומץ"

סוכן AI שמקבל נושא שבועי ורגע אמיתי, ומייצר רצף של 7 תכנים לקהילת וואטסאפ של מאמנת מנטלית לנשים. התכנים כתובים בקול שלה ובמבנה **זיהוי → הבנה → בחירה → צעד**.

**התכנון המלא נמצא ב-[SPEC.md](SPEC.md).**

## איך זה עובד
הסוכנת היא Skill של Claude Code: תיקייה עם קובץ הוראות וקבצי זיכרון. כשפותחים את התיקייה ב-Claude Code (אפליקציית Claude, לשונית Code) וכותבים "נושא השבוע", Claude טוען את ההוראות, קורא את הזיכרון ומריץ את השלבים.

## הפעלה (Claude Code)
פותחים את התיקייה ב-Claude Code וכותבים:

```
נושא השבוע: <נושא>. רגע אמיתי: <משפט-שניים>
```

או `/bocharot-beometz`.

## קבצים
- [`SKILL.md`](.claude/skills/bocharot-beometz/SKILL.md) - הוראות ושלבי העבודה
- [`voice.md`](.claude/skills/bocharot-beometz/voice.md) - הקול
- [`structure.md`](.claude/skills/bocharot-beometz/structure.md) - 7 התכנים
- [`profile.md`](.claude/skills/bocharot-beometz/profile.md) - פרטים קבועים
- [`routine/weekly-task.md`](routine/weekly-task.md) - המשימה השבועית המתוזמנת (חמישי 10:00): טופס → Google Doc + טיוטת Gmail
- [`make/SETUP.md`](make/SETUP.md) - חלופה: מדריך בניית התרחיש ב-Make
- `weeks/` - ארכיון שבועי (מקומי בלבד, לא עולה לריפו בגלל סיפורים אישיים)

</div>
