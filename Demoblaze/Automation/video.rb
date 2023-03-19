require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

driver.get('https://www.demoblaze.com/index.html')

title= 'videodemoblaze'

driver.manage.window.maximize
driver.manage.timeouts.implicit_wait = 500

about = driver.find_element(xpath:'//*[@id="navbarExample"]/ul/li[3]/a')
about.click
sleep(1)

play = driver.find_element(xpath:'//*[@id="example-video"]/button')
play.click
sleep(1)

adelantar = driver.find_element(xpath:'//*[@id="example-video"]/div[4]/div[5]/div')
adelantar.click
sleep(20)

close = driver.find_element(xpath:'//*[@id="videoModal"]/div/div/div[3]/button')
close.click
sleep(5)

driver.quit