*** Settings ***
Library     SeleniumLibrary
Resource    ../config/baseUrlAndNavigate.robot
Library     RequestsLibrary

*** Variables ***
${baseBrowser}  firefox

*** Test Cases ***
navigateToAboutMenu

    openBrowserAndNavigate
    userLogin
    click element   id:react-burger-menu-btn
    click element   id:about_sidebar_link
    ${response}     GET  https://saucelabs.com/
    Should Be Equal As Numbers    ${response.status_code}    200
    ${title}    Get Title
    Should Be Equal As Strings    ${title}    Sauce Labs: Cross Browser Testing, Selenium Testing & Mobile Testing
    Capture Page Screenshot
    Close Browser