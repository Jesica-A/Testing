require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

driver.get('https://www.demoblaze.com/index.html')
driver.manage.window.maximize

title= 'ContactoDemoblaze'

driver.manage.timeouts.implicit_wait = 500
contact_text = driver.find_element(link_text:'Contact')
contact_text.click
sleep(1)

driver.manage.timeouts.implicit_wait = 500
input_email = driver.find_element(id: 'recipient-email')
input_email.click
input_email.send_keys('jess@mail.com')
sleep(1)

driver.manage.timeouts.implicit_wait = 500
input_name = driver.find_element(id:'recipient-name')
input_name.click
input_name.send_keys('Jesica')
sleep(1)

driver.manage.timeouts.implicit_wait = 500
input_mensaje = driver.find_element(id:'message-text')
input_mensaje.click
input_mensaje.send_keys('Probando automatizar con Ruby')
sleep(1)

driver.manage.timeouts.implicit_wait = 500
button_send = driver.find_element(xpath:'//*[@id="exampleModal"]/div/div/div[3]/button[2]')
button_send.click
sleep(3)
driver.switch_to().alert().accept()
sleep(3)


driver.quit