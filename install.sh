#!/usr/bin/env bash
#
# Установка скиллов в Claude Code.
# Копирует всё из ./skills в ~/.claude/skills/
#
# Использование:
#   git clone https://github.com/grisha123invent-official/my_skills.git
#   cd my_skills
#   bash install.sh
#
set -euo pipefail

SRC="$(cd "$(dirname "$0")" && pwd)/skills"
DEST="$HOME/.claude/skills"

if [ ! -d "$SRC" ]; then
  echo "❌ Не найдена папка skills/ рядом со скриптом ($SRC)"
  exit 1
fi

echo "📦 Источник:   $SRC"
echo "📂 Назначение: $DEST"
mkdir -p "$DEST"

# Бэкап существующих скиллов (если есть)
if [ -n "$(ls -A "$DEST" 2>/dev/null || true)" ]; then
  STAMP="$(date +%Y%m%d-%H%M%S)"
  BACKUP="$DEST.backup-$STAMP"
  echo "🛟 Найдены существующие скиллы → бэкап в: $BACKUP"
  cp -R "$DEST" "$BACKUP"
fi

COUNT=$(find "$SRC" -maxdepth 1 -mindepth 1 -type d | wc -l | tr -d ' ')
echo "⬇️  Копирую $COUNT скиллов…"

if command -v rsync >/dev/null 2>&1; then
  rsync -a "$SRC"/ "$DEST"/
else
  cp -R "$SRC"/. "$DEST"/
fi

echo "✅ Готово. Установлено скиллов: $COUNT"
echo "   Перезапусти Claude Code, чтобы они подхватились."
