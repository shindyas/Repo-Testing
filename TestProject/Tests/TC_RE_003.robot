*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${url}          https://kumparan.com/
${browser}      chrome

*** Test Cases ***
Register Facebook
    open browser                ${url}      ${browser}
    maximize browser window
    sleep                       2
    click button                xpath://*[@id="onesignal-slidedown-cancel-button"]
    click button                xpath://*[@id="content"]/div/div/div[1]/div/div[1]/nav/div/div/div[3]/button
    click link                  xpath://*[@id="content"]/div/div/div[2]/div/div[5]/a
    click button                xpath://*[@id="content"]/div/div/div[2]/div/div[5]/button[1]
    sleep                       5
    click element               xpath://*[@id="mount_0_0_BD"]/div/div/div/div/div/div/div[1]/div[3]/div[3]/div
    click element               xpath://*[@id="content"]/div[2]/a

*** Keywords ***

