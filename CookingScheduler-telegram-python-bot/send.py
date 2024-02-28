import pywhatkit,datetime,os,telebot
import pandas as pd

BOT_TOKEN = os.environ.get('BOT_TOKEN')

bot = telebot.TeleBot(BOT_TOKEN)

def get_current_day():
    """
    Get the current day of the week.
    
    Returns:
 
        str: The current day of the week (e.g., "Monday", "Tuesday", etc.).
    """
    current_date = datetime.datetime.now()
    current_day = current_date.strftime("%A")
    return current_day

def find_element(df, column_name, value_to_find):
    """
    Find rows where a specific value is present in a column of the DataFrame.
    
    Args:
        df (pandas.DataFrame): The DataFrame to search in.
        column_name (str): The name of the column to search in.
        value_to_find (any): The value to find in the specified column.
    
    Returns:
        pandas.DataFrame: Rows where the specified value is present in the column.
    """
    result = df[df[column_name] == value_to_find]

    return result

@bot.message_handler(commands=['start'])
def send_welcome(message):
    fileName = "/Users/balu/Downloads/Daily Shifts.xlsx"
    require_cols = [0,2, 4]
    dataframe =  pd.read_excel(fileName,usecols = require_cols)
    Week=dataframe.columns[0]
    current_day = get_current_day()
    result = find_element(dataframe,Week,current_day)
    result = f"Today is: {current_day}. Afternoon cooking person names are: {result.values[0][1]}. Night cooking person names are: {result.values[0][2]}"
    bot.reply_to(message, result)


bot.infinity_polling()

# Defining the Phone Number and Message
# message = "Hello"

# Sending the WhatsApp Message
# pywhatkit.sendwhatmsg_instantly(phone_number, message,10,30)