*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem    
Suite Teardown    Close All Browsers
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
    Set Environment Variable    no_proxy    127.0.0.1
    Open Browser    ${URL}    ${browser}
    Set Browser Implicit Wait    5
    Maximize Browser Window
    Sleep    2
    LoginKeyword
    Sleep    2    
    Close Browser    
    Log    test completed by %{username} on %{os} Operating system
    Log    End    
    

  


*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
${browser}    chrome
@{credentials}    Admin    admin123
&{credentialsMap}    userName=Admin    password=admin123


*** Keywords ***
LoginKeyword
    Input Text    id=txtUsername    ${credentials}[0]
    Input Text    id=txtPassword    ${credentialsMap}[password]
    Click Button    name=Submit  

