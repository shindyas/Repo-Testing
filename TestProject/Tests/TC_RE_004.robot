*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${url}          https://kumparan.com/
${browser}      chrome

*** Test Cases ***
Register Google+
    open browser                ${url}      ${browser}
    maximize browser window
    sleep                       3
    click button                xpath://*[@id="onesignal-slidedown-cancel-button"]
    click button                xpath://*[@id="content"]/div/div/div[1]/div/div[1]/nav/div/div/div[3]/button
    click link                  xpath://*[@id="content"]/div/div/div[2]/div/div[5]/a
    click button                xpath://*[@id="content"]/div/div/div[2]/div/div[5]/button[2]
    input text                  xpath://*[@id="identifierId"]
    click button                xpath://*[@id="identifierNext"]/div/button
    sleep                       5
    click element               xpath://*[@id="content"]/div[2]/a

*** Keywords ***

