# my_skills — коллекция скиллов для Claude Code

Набор из **163 Agent Skills** для [Claude Code](https://claude.com/claude-code).
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
| `sec-*` | Безопасность: auth/API/Docker/файлы/AI-агенты, red-team плейбуки | `sec-testing-oauth2-implementation-flaws`, `sec-hardening-docker-containers-for-production`, `sec-detecting-indirect-prompt-injection` |
| `pd-*` | Продуктовый discovery: бриф, Lean Canvas, персоны, custdev, story map | `pd-brief-writing`, `pd-lean-canvas`, `pd-persona-interview` |
| `higgsfield-*` | Генерация изображений/видео | `higgsfield-generate`, `higgsfield-product-photoshoot` |
| прочее | UI/дизайн, БД, юр., продакт-роутер, security-оркестратор | `hallmark`, `supabase`, `general-counsel-advisor`, `product-manager`, `security-manager` |

Полный список — в папке [`skills/`](skills/).

## Заметки

- **`product-manager`** — скилл-роутер: помогает подобрать нужный скилл под задачу,
  а затем (Этап C) собрать под неё **мультиагентную бригаду** — дизайн → сборка по
  слайсам → параллельный контроль качества → адаптивный супервайзер. Конфиг —
  `favorites.md` (пустой шаблон, заполни под себя); готовые бригады —
  `orchestration-recipes.md`; справочник команд скиллов — `commands-cheatsheet.md`.
- **`security-manager`** — автономный red/blue оркестратор аудита безопасности:
  изучает код и задачу, подбирает `sec-*` плейбуки и гоняет волнами атакующих и
  защитных агентов (волна 1 — поиск дыр вширь, волна 2 — attack-graph и связывание
  дыр в цепочки), затем чинит и пишет отчёт.
- Многие скиллы здесь — **сторонние** (публичные коллекции разных авторов),
  собраны для удобной установки одним пакетом. Источники новых блоков:
  `sec-*` — из [Anthropic-Cybersecurity-Skills](https://github.com/mukul975/Anthropic-Cybersecurity-Skills)
  (Apache-2.0); `pd-*` — из [product_skills](https://github.com/yngchefcook/product_skills)
  (Academy of Yandex AI Studio). Каждый скилл сохраняет лицензию своего автора.
- Часть скиллов требует API-ключей внешних сервисов (Perplexity, Apify,
  Higgsfield, DataForSEO и т.п.) — ключи задаются у тебя в `.env`/окружении,
  в репозитории их нет.
