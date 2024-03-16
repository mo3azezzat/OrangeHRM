*** Settings ***
Library  SeleniumLibrary
Resource  C:\Users\hp\Pictures\robot project\OrangeHRM\Resources\Keywords\LoginPage.robot
Resource  C:\Users\hp\Pictures\robot project\OrangeHRM\Resources\Keywords\Dashboard.robot
Resource  c:\Users\hp\Pictures\robot project\OrangeHRM\Resources\Keywords\LeavePage.robot

*** Test Cases ***
###Additional Cases###
Validlogin
   login page
   Enter Valid username and Password
   CLick Login button
   Check the Page title
   Close the Browser


Invalid Login
   login page
   Enter Invalid username and Password
   CLick Login button
   Check the Invaled Error message
   Close the Browser    