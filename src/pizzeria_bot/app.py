import asyncio
from aiogram import Bot, Dispatcher, types


bot = Bot(token="7655939470:AAE2zBFIFfMv_iRjKZqpAKQ6XAFpBVpfX6g")
dp = Dispatcher()






async def main():
    await dp.start_polling(bot)


asyncio.run(main())