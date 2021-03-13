*** Settings ***
Library    SeleniumLibrary    



*** Test Cases ***
KeyWordTestCases
    [Documentation]    This is a Sample Test Case
    ...    % = Environment variables
    ...    @ = List
    ...    & = Map
    ...    $ = Scalar variables
    ...    
    [Tags]    Login
    Log    Begin
    Open Browser    ${URL}    ${browser}
    LoginKeyword
    Sleep    2    
    Close Browser    
    Log    test completed by %{username} on %{os} Operating system
    Log    End    
    

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
${browser}    Chrome
@{credentials}    Admin    admin123
&{credentialsMap}    userName=Admin    password=admin123


*** Keywords ***
LoginKeyword
    Input Text    id=txtUsername    ${credentials}[0]
    Input Text    id=txtPassword    ${credentialsMap}[password]
    Click Button    name=Submit  

