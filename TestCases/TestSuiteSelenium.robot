*** Settings ***
Library    SeleniumLibrary    



*** Test Cases ***

SeleniumTest    
    Log    Begin    
    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    5
    Input Text    name=q    News
    Press Keys    name=q    ESCAPE
    Sleep    1    
    Click Element    name=btnK            
    Sleep    2
    Close Browser    