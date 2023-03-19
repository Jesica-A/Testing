require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

driver.get('https://www.demoblaze.com/index.html')

title= 'categoriasdemoblaze'

driver.manage.window.maximize
driver.manage.timeouts.implicit_wait = 500

phone = driver.find_element(link_text:'Phones')
phone.click
sleep(3)

driver.execute_script("window.scrollTo(1000, document.body.scrollHeight);")
sleep(3)
driver.execute_script("window.scrollBy(1, 0);")
sleep(3)

laptos = driver.find_element(link_text:'Laptops')
laptos.click
sleep(3)

driver.execute_script("window.scrollTo(1000, document.body.scrollHeight);")
sleep(3)
driver.execute_script("window.scrollBy(1, 0);")
sleep(3)

monitors = driver.find_element(link_text:'Monitors')
monitors.click
sleep(3)

driver.quit