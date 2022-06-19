*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${url}          https://kumparan.com/
${browser}      chrome
${email}        shindyadelia@gmail.com

*** Test Cases ***
Register Email Already Used
    open browser                ${url}      ${browser}
    maximize browser window
    sleep                       2
    click button                xpath://*[@id="onesignal-slidedown-cancel-button"]
    click button                xpath://*[@id="content"]/div/div/div[1]/div/div[1]/nav/div/div/div[3]/button
    click link                  xpath://*[@id="content"]/div/div/div[2]/div/div[5]/a
    input text                  xpath://*[@id="content"]/div/div/div[2]/div/div[2]/div/div[1]/div/input     ${email}
    click button                xpath://*[@id="content"]/div/div/div[2]/div/div[3]/button
    sleep                       5


*** Keywords ***

