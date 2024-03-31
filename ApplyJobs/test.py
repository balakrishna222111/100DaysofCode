from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time

url = "https://www.linkedin.com/login"

start_time = time.time()  # Start the timer

driver = webdriver.Chrome()
driver.get(url)

# Wait for the username input field to be visible
username = WebDriverWait(driver, 10).until(
    EC.visibility_of_element_located((By.ID, "username"))
)
username.send_keys("balakrishna222111@gmail.com")

# Similarly, wait for the password input field
password = WebDriverWait(driver, 10).until(
    EC.visibility_of_element_located((By.ID, "password"))
)
password.send_keys("lpassword1.")

# Submit the form
password.submit()

# Wait for the page to load after login
WebDriverWait(driver, 10).until(
    EC.presence_of_element_located((By.XPATH, '//*[@id="ember16"]/input'))
)

# Search for job listings
search_bar = driver.find_element_by_xpath('//*[@id="ember16"]/input')
search_bar.send_keys('devops engineer')
search_bar.submit()

# Wait for the job listings to load
WebDriverWait(driver, 10).until(
    EC.presence_of_element_located((By.CLASS_NAME, 'jobs-search-results'))
)

# Other actions you want to perform...

# Stop the timer
end_time = time.time()

# Calculate the elapsed time
elapsed_time = end_time - start_time
print("Elapsed Time:", elapsed_time, "seconds")

# Close the browser
driver.quit()
