*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

openBrowserAndNavigate
    open browser    ${baseUrl}  ${baseBrowser}
    maximize browser window

userLogin
    input text  id:user-name    standard_user
    input text  id:password     secret_sauce
    click element   id:login-button