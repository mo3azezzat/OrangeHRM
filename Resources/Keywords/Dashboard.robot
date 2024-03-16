*** Settings ***
Library   SeleniumLibrary
Variables  C:\Users\hp\Pictures\robot project\OrangeHRM\Resources\Locators\Dashboard.py

*** Keywords ***

Check the Page title
    Title Should Be    OrangeHRM
    Sleep    2


Click on Leave
    Click Element    ${Leave}
    Sleep    2     