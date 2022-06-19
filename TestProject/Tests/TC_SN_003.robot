*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${url}          https://kumparan.com/
${browser}      chrome

*** Test Cases ***
Feeds
    open browser                ${url}      ${browser}
    maximize browser window
    sleep                       2
    click button                xpath://*[@id="onesignal-slidedown-cancel-button"]
    click element               xpath://*[@id="content"]/div/div/div[1]/div/div[2]/div[1]/div/div/a[1]/div/span
    click button                xpath://*[@id="content"]/div/div/div[2]/div/div[4]/div[3]/div/div/div[2]/div/div[1]/div[1]/div/a[2]/button
    sleep                       5
    close browser

*** Keywords ***

