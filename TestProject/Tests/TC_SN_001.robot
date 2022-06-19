*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${url}          https://kumparan.com/
${browser}      chrome

*** Test Cases ***
Kumparan
    open browser                ${url}      ${browser}
    maximize browser window
    sleep                       2
    click button                xpath://*[@id="onesignal-slidedown-cancel-button"]
    click element               xpath://*[@id="content"]/div/div/div[1]/div/div[2]/div[1]/div/div/a[1]/div/span
    sleep                       5
    close browser

*** Keywords ***

