require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

driver.get('https://www.demoblaze.com/index.html')
driver.manage.window.maximize

title= 'SingUpDemoblaze'

sleep(1)
driver.manage.timeouts.implicit_wait = 500
singup = driver.find_element(id:'signin2')
singup.click
sleep(1)

driver.manage.timeouts.implicit_wait = 500
username = driver.find_element(id:'sign-username')
username.click
username.send_keys('pruebitaagc')
sleep(1)

driver.manage.timeouts.implicit_wait = 500
password = driver.find_element(id:'sign-password')
password.click
password.send_keys('contrapruebita')
sleep(1)
button_singup = driver.find_element(xpath:'//*[@id="signInModal"]/div/div/div[3]/button[2]')
button_singup.click
sleep(3)

driver.quit