![Пиццерия Тайги](https://github.com/SwairIt/Pizzeria-Bot/blob/main/assets/banner.png)

# 🍕 ПИЦЦЕРИЯ ТАЙГИ

> Лучшая пиццерия Таёжных Вод — Telegram-бот для приёма заказов с удобным меню, клавиатурами и локальной базой данных.

## Навигация

- [Установка](#установка)
- [Добавление .env файла](#добавление-env-файла)
- [Структура проекта](#структура-проекта)
- [Запуск](#запуск)

---

## Установка

1. **Склонируй репозиторий:**
```bash
git clone https://github.com/SwairIt/Pizzeria-Bot
cd pizzeria-bot
```

2. **Установи Poetry(если он не установлен)**:
```bash
pip install poetry
```

3. **Установи зависимости:**
```bash
poetry install
```

---

## Добавление .env файла

Создай файл `.env` по пути `pizzeria-bot/.env` со следующим содержимым:

```env
TOKEN=ваш_токен_бота
DB_LITE=sqlite+aiosqlite:///название_файла.db
```

---

## Структура проекта

```
pizzeria-bot/
├── .env                    # Переменные окружения
├── my_base.db              # SQLite база
├── poetry.lock
├── pyproject.toml
├── scripts/
│   └── starts_bot.sh       # Скрипт запуска
├── src/
│   └── pizzeria_bot/
│       ├── app.py          # Точка входа
│       ├── common/         # Тексты и команды
│       ├── database/       # Модели и ORM-запросы
│       ├── filters/        # Фильтры сообщений
│       ├── handlers/       # Обработчики команд
│       ├── kbds/           # Клавиатуры
│       ├── middliwares/    # Мидлвари(проверка на админа)
│       └── utils/          # Пагинация и утилиты
└── tests/                  # (опционально)
```

---

## Запуск

```bash
bash scripts/starts_bot.sh
```
