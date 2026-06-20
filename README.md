# my_skills — коллекция скиллов для Claude Code

Набор из **125 Agent Skills** для [Claude Code](https://claude.com/claude-code).
Скилл = папка с `SKILL.md` (имя + описание + инструкции), которую Claude Code
подхватывает из `~/.claude/skills/`.

## Установка

```bash
git clone https://github.com/grisha123invent-official/my_skills.git
cd my_skills
bash install.sh
```

Скрипт скопирует все скиллы в `~/.claude/skills/`. Если там уже что-то лежит —
сделает бэкап в `~/.claude/skills.backup-<дата>`. После установки **перезапусти
Claude Code**.

### Вручную (без скрипта)

```bash
mkdir -p ~/.claude/skills
cp -R skills/* ~/.claude/skills/
```

### Поставить только нужные

```bash
cp -R skills/seo-audit skills/hallmark ~/.claude/skills/
```

## Что внутри (по префиксам)

| Префикс | О чём | Примеры |
|---|---|---|
| `ag-*` | Архитектура, бэкенд, LLM-инжиниринг, облака | `ag-backend-architect`, `ag-llm-evaluation`, `ag-nextjs-best-practices` |
| `ar-*` | Продуктивность, founder-coaching, метрики | `ar-founder-coach`, `ar-saas-metrics-coach` |
| `eng-*` | Инженерные практики (TDD, ревью, дебаг, релизы) | `eng-test-driven-development`, `eng-code-review-and-quality` |
| `mkt-*` | Маркетинг: контент, SEO, продажи, видео | `mkt-growth-engine`, `mkt-short-form-pipeline` |
| `seo-*` | SEO под все задачи (аудит, кластеры, тех-сео) | `seo-audit`, `seo-cluster`, `seo-technical` |
| `higgsfield-*` | Генерация изображений/видео | `higgsfield-generate`, `higgsfield-product-photoshoot` |
| прочее | UI/дизайн, БД, юр., продакт-роутер | `hallmark`, `supabase`, `general-counsel-advisor`, `product-manager` |

Полный список — в папке [`skills/`](skills/).

## Заметки

- **`product-manager`** — скилл-роутер: помогает подобрать нужный скилл под задачу.
  Его файл `favorites.md` — пустой шаблон, заполни под свои проекты и предпочтения.
- Многие скиллы здесь — **сторонние** (публичные коллекции разных авторов),
  собраны для удобной установки одним пакетом.
- Часть скиллов требует API-ключей внешних сервисов (Perplexity, Apify,
  Higgsfield, DataForSEO и т.п.) — ключи задаются у тебя в `.env`/окружении,
  в репозитории их нет.
