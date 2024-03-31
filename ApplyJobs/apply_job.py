from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time
import json

# Constant variable for LinkedIn URL
LINKEDIN_URL = "https://www.linkedin.com/"

def load_credentials(filename):
    """
    Load credentials from a JSON file.

    Args:
        filename (str): Path to the JSON file.

    Returns:
        dict: Dictionary containing the credentials.
    """
    with open(filename, 'r') as file:
        data = json.load(file)
    return data

def login_to_linkedin(driver, credentials):
    """
    Log in to LinkedIn using provided credentials.

    Args:
        driver: Selenium WebDriver instance.
        credentials (dict): Dictionary containing username and password.
    """
    driver.get(LINKEDIN_URL +  "login")

    username = WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.ID, 'username')))
    username.send_keys(credentials["username"])

    password = WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.ID, 'password')))
    password.send_keys(credentials["password"])

    password.submit()

def search_for_jobs(driver):
    driver.get(LINKEDIN_URL + "jobs")

    search = WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.ID, 'jobs-search-box-keyword-id-ember29')))
    search.send_keys("devops engineer")
    search.send_keys(Keys.ENTER)

def easy_apply(driver):
    # Wait for the element with the specific aria-label attribute value
    easy_apply_button = WebDriverWait(driver, 10).until(EC.element_to_be_clickable((By.CSS_SELECTOR, 'button[aria-label="Easy Apply filter."')))
    # Click on the button
    easy_apply_button.click()

    time.sleep(10)

# Create a WebDriver instance
driver = webdriver.Chrome()

# Load credentials from a JSON file
credentials = load_credentials('credentials.json')

# Log in to LinkedIn
login_to_linkedin(driver, credentials)

# Search for jobs
search_for_jobs(driver)

easy_apply(driver)