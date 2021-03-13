*** Settings ***
Library    SeleniumLibrary    
Suite Setup    Log    Suite Setup
Test Setup    Log    Test Setup
Test Teardown    Log   Test Teardown
Suite Teardown    Log   Suite Teardown

*** Test Cases ***
Test Case One
    [Documentation]    This is a Sample Test Case 001
    Log    Hi      
    
Test Case Two
    [Documentation]    This is a Sample Test Case 002
    Log    Hi      
    



