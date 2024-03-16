*** Settings ***
Library   SeleniumLibrary
Variables  C:\Users\hp\Pictures\robot project\OrangeHRM\Resources\Locators\LeavePage.py
Variables  C:\Users\hp\Pictures\robot project\OrangeHRM\Resources\Locators\Logout.py

*** Keywords ***
Check the Leave Page Header
    Page Should Contain Element    ${Header}
    Sleep    2 


Click on Apply Button
    Click Element    ${Apply}
    Sleep    2 

Check the Apply page
    Page Should Contain    Leave List
    Sleep    2 
Click on Profile Button
    Click Element    ${Profile}
    Sleep    2

CLick on Logout Button
    Click Element    ${logout_button}
    Sleep    2