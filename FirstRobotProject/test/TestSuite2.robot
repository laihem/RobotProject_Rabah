*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***
MyFirstTest
    Log    Hello World...  
   
FirstSeleniumTest
    
    Open Browser                     https://google.com                             chrome
    Set Browser Implicit Wait        20
    Input Text                       name=q                                         Automation Testing
    Press Keys                       name=q                                         ENTER    
    Close Browser
    Log                              Test Completed   
    
SampleLoginTest
    [Documentation]                  This is a sample login test
    Open Browser                     ${URL}     chrome
    Set Browser Implicit Wait        10
    Input Text                       id=txtUsername                                    &{LOGINDATA}[username]                    # @{CREDENTIALS}[0]  
    Input Password                   id=txtPassword                                    &{LOGINDATA}[password]                    # @{CREDENTIALS}[1]
    Click Button                     id=btnLogin    
    Click Element                    id=welcome   
    Click Element                    link=Logout
    Log                              Test completed    
    Log                              This test was executed by %{username} on %{os}                               #variables environnement equivalent a 
                                                                                                                  #echo %username%    echo %os%
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}      username=Admin    password=admin123