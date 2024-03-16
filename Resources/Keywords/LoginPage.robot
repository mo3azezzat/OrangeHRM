*** Settings ***
Library   SeleniumLibrary
Variables  C:\Users\hp\Pictures\robot project\OrangeHRM\Resources\Locators\LoginPage.py
Variables  c:\Users\hp\Pictures\robot project\OrangeHRM\Resources\TestData\LoginPage.py

*** Variables ***
${url}     https://opensource-demo.orangehrmlive.com/
${browser}   chrome
   

*** Keywords ***
login page
      Open Browser   ${url}  ${browser}
      Maximize Browser Window

Enter Valid username and Password
     Wait Until Page Contains Element    ${Username_Field}   timeout=10s
     Input Text    ${Username_Field}   ${valid_username}
     Wait Until Page Contains Element    ${Password_Field}   timeout=10s
     Input Password   ${Password_Field}   ${Valid_password}
     Sleep    3

Enter Invalid username and Password
     Wait Until Page Contains Element    ${Username_Field}  timeout=10s
     Input Text    ${Username_Field}   ${Invalid_username}
     Wait Until Page Contains Element    ${Password_Field}  timeout=10s
     Input Password   ${Password_Field}   ${Invalid_password}
     Sleep    3
CLick Login button     
     Click Button  ${loginbutton}
     Sleep    2

Check the Invaled Error message
    Page Should Contain Element    ${Invalid_error}  

Check that user is logged out
      Page Should Contain    Login
      Sleep    5

Close the Browser
    Close Browser


