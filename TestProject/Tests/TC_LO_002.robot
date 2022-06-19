*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${url}          https://kumparan.com/
${browser}      chrome
${email}        shindyadelia123@gmail.com
${password}     satudualima

*** Test Cases ***
Login Email & Password Invalid
    open browser                ${url}      ${browser}
    maximize browser window
    sleep                       5
    click button                xpath://*[@id="onesignal-slidedown-cancel-button"]
    click button                xpath://*[@id="content"]/div/div/div[1]/div/div[1]/nav/div/div/div[3]/button
    input text                  xpath://*[@id="content"]/div/div/div[2]/div/div[2]/div[1]/div/div[1]/div/input     ${email}
    input text                  xpath://*[@id="content"]/div/div/div[2]/div/div[2]/div[2]/div/div[1]/div[1]/input  ${password}
    click button                xpath://*[@id="content"]/div/div/div[2]/div/div[2]/div[4]/button
    sleep                       5
    page should contain         Email atau Password Salah
    close browser

*** Keywords ***

