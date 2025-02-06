*** Settings ***
Library    SeleniumLibrary
Library    ../config/loginVar.py

*** Variables ***

*** Keywords ***

openBrowserAndNavigate
    ${variables}    loginVar.Get Variables
    ${baseUrl}      Set Variable    ${variables['baseUrl']}
    ${username}     Set Variable    ${variables['user']}
    ${password}     Set Variable    ${variables['pwd']}
    Open Browser    ${baseUrl}  ${baseBrowser}
    Maximize Browser Window

userLogin
    ${variables}    loginVar.Get Variables
    ${username}     Set Variable    ${variables['user']}
    ${password}     Set Variable    ${variables['pwd']}
    Input Text  id:user-name    ${username}
    Input Text  id:password     ${password}
    Click Element   id:login-button
