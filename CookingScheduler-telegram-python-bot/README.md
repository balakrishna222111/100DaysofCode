# Telegram Bot for Daily Shifts

This Telegram bot fetches daily shift information from an Excel file and sends it to users upon command.

## Prerequisites

Before running the bot, make sure you have the following:

- Python 3.x installed
- Required Python packages (`pywhatkit`, `datetime`, `os`, `telebot`, `pandas`)
- Telegram bot token (get it from BotFather on Telegram)
- Excel file containing daily shift information (`Daily Shifts.xlsx` in this example)

## Usage

1. Clone the repository:

git clone <repository_url>
cd <repository_name>


2. Install the required packages:

pip install -r requirements.txt

3. Set up environment variables:

   - `BOT_TOKEN`: Your Telegram bot token

4. Run the bot:

python bot.py

5. Start the bot in Telegram and use the `/start` command to fetch daily shift information.

## Note

- Make sure the Excel file (`Daily Shifts.xlsx`) is in the correct path as specified in the script.
- Ensure the Excel file has the correct format and column names for the bot to work properly.

