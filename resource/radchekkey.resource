*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Keywords ***
OpenSite
    [Documentation]    Method for opening Browser
    Open Browser    ${url}    ${brw}        
    Maximize Browser Window
    Wait Until Element Is Visible    id:ez-accept-all    timeout=5
    Click Button    id:ez-accept-all
    Wait Until Element Is Visible     id:cookieChoiceDismiss    timeout=7  
    Click Link    xpath://*[@id="cookieChoiceDismiss"]
    Scroll Element Into View    xpath://*[@id="post-body-3077692503353518311"]/div[1]/div/div/h2[2]/div[1]/div/div[25]/div[1]/span

Input first and last name
    [Documentation]    method for input firstname and lastname
    Input Text    name:firstname    ${first}
    Input Text    name:lastname    ${last}

Select Field
    Select Radio Button    sex    ${gender}
    Select Radio Button    exp    ${yoe}

    Input Text    id:datepicker    ${dt}

    Select Checkbox    id:profession-1
    Select Checkbox    id:tool-2
    Select Checkbox    id:tool-0

    Scroll Element Into View    xpath://*[@id="submit"]

    Click Element    xpath://*[@id="continents"]
    Click Element    xpath://*[@id="continents"]/option[5]
    Click Element    xpath://*[@id="selenium_commands"]/option[4]
    Click Button    id:submit

*** Variables *** ***

${url}    https://www.techlistic.com/p/selenium-practice-form.html
${brw}    chrome
${first}    kalyani
${last}    Joshi
${gender}    Female
${yoe}    3
${dt}    11-01-1990
${continent}      Europe  