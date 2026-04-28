bot.ru
import telebot

BOT_TOKEN = "8718736420:AAHLwCPdT4O4GtnwX2hxfLrc34hw1vgR9gM"

bot = telebot.TeleBot(BOT_TOKEN)

@bot.message_handler(commands=['start'])
def start(message):
    bot.send_message(message.chat.id, """
🌿 Привет! Я твой AI тренер и диетолог!

Что я умею:
🥗 /plan — рацион питания на неделю
💪 /workout — план тренировок
💳 /subscribe — подписка

Попробуй 3 дня бесплатно! 🎁
""")

@bot.message_handler(commands=['plan'])
def plan(message):
    bot.send_message(message.chat.id, """
🥗 Рацион питания на 3 дня:

День 1:
☀️ Завтрак: Овсянка с фруктами
🌤 Обед: Куриный суп + салат
🌙 Ужин: Рыба + овощи на пару
🍎 Перекус: Яблоко или орехи

День 2:
☀️ Завтрак: Яйца + тост
🌤 Обед: Греческий салат + курица
🌙 Ужин: Гречка + тушёные овощи
🍎 Перекус: Йогурт

День 3:
☀️ Завтрак: Творог с мёдом
🌤 Обед: Борщ + хлеб цельнозерновой
🌙 Ужин: Индейка + рис
🍎 Перекус: Банан
""")

@bot.message_handler(commands=['workout'])
def workout(message):
    bot.send_message(message.chat.id, """
💪 План тренировок на 3 дня:

День 1 — Кардио:
🔥 Бег 20 минут
🔥 Прыжки на скакалке 10 минут
🔥 Планка 3х60 секунд

День 2 — Верх тела:
💪 Отжимания 3х15
💪 Подтягивания 3х10
💪 Гантели на бицепс 3х12

День 3 — Низ тела:
🦵 Приседания 3х20
🦵 Выпады 3х15
🦵 Ягодичный мостик 3х20
""")

@bot.message_handler(commands=['subscribe'])
def subscribe(message):
    bot.send_message(message.chat.id, """
💳 Подписка NutriFit AI

✅ Персональный рацион
✅ План тренировок
✅ Поддержка 24/7

💰 Цена: 1990 тг/месяц

📱 Для оплаты напишите в WhatsApp:
+77758827344
""")

bot.polling()
