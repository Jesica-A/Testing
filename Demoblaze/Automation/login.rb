require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

driver.get('https://www.demoblaze.com/index.html')
driver.manage.window.maximize

title= 'LoginDemoblaze'

driver.manage.timeouts.implicit_wait = 500
login = driver.find_element(id:'login2')
login.click
sleep(1)

driver.manage.timeouts.implicit_wait = 500
username = driver.find_element(id:'loginusername')
username.click
username.send_keys('pruebitaagc')
sleep(1)

driver.manage.timeouts.implicit_wait = 500
password_login = driver.find_element(id:'loginpassword')
password_login.click
password_login.send_keys('contrapruebita')
sleep(1)

driver.manage.timeouts.implicit_wait = 500
button_login = driver.find_element(xpath:'//*[@id="logInModal"]/div/div/div[3]/button[2]')
button_login.click
sleep(3)

driver.quit