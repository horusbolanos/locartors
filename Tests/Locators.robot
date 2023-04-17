*** Settings ***
Library  SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/locators.robot

*** Variables ***

*** Test Cases ***
Should be able to search for product
    open Browser  http://www.amazon.com  chrome
    sleep  3s
    Input Text  id=twotabsearchtextbox  Ferrari 458
    sleep  3s
    Click Button  css=#nav-search-submit-button
    Click Button  xpath=//*[@id="nav-search-submit-button"]
    Sleep  3s
    Click link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[2]/div/div/div/div/div[3]/div[1]/h2/a


*** Keywords ***


