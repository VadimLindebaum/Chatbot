import telebot
import requests

API_URL = "http://localhost:8000"
BOT_TOKEN = "YOUR_TELEGRAM_BOT_TOKEN"

bot = telebot.TeleBot(BOT_TOKEN)

@bot.message_handler(func=lambda msg: True)
def handle_message(message):
    user_text = message.text
    response = requests.get(f"{API_URL}/faq/search", params={"q": user_text})

    if response.status_code == 200:
        answer = response.json().get("answer", "Vabandust, ma ei leidnud vastust.")
    else:
        answer = "Tekkis viga serveriga suhtlemisel."

    bot.send_message(message.chat.id, answer)

bot.polling()
