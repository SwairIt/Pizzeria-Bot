#!/bin/bash

################# Определим корень проекта ###########################

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
MAIN="$PROJECT_ROOT/src/pizzeria_bot/app.py"
ENV_FILE="$PROJECT_ROOT/.env"

echo "Запуск бота 'Пиццерия Тайги'..."

################# Проверка на наличие app.py ###########################

if [ ! -f "$MAIN" ]; then
    echo "❌ Ошибка: Не найден файл $MAIN"
    exit 1
fi

################# Проверка на наличие .env ###########################

if [ ! -f "$ENV_FILE" ]; then
    echo "Не найден файл .env по пути $ENV_FILE"
    echo "Создай его, иначе переменные окружения не загрузятся."
else
    echo "Найден .env файл"
fi

################# Запуск ###########################

echo "Запускаем через Poetry..."
cd "$PROJECT_ROOT"
poetry run python3 "$MAIN"
