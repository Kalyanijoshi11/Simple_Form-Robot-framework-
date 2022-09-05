*** Settings ***
Library    SeleniumLibrary
Resource    ../resource/radchekkey.resource


*** Test Cases ***
TestRadioCheckbox
    [Documentation]    Sign-Up selenium Automation Form

    OpenSite
    Input first and last name 
    Select Field
    Close Browser




    
    
