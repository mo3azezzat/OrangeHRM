*** Settings ***
Library  SeleniumLibrary
Resource  C:\Users\hp\Pictures\robot project\OrangeHRM\Resources\Keywords\LoginPage.robot
Resource  C:\Users\hp\Pictures\robot project\OrangeHRM\Resources\Keywords\Dashboard.robot
Resource  C:\Users\hp\Pictures\robot project\OrangeHRM\Resources\Keywords\LeavePage.robot

*** Test Cases ***
OrangeHRM task
  login page
  Enter Valid username and Password
  CLick Login button 
  Check the Page title
  Click on Leave
  Check the Leave Page Header
  Click on Apply Button
  Check the Apply page
  Click on Profile Button
  CLick on Logout Button
  Check that user is logged out
  Close the Browser



