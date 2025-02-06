*** Settings ***
Library  SeleniumLibrary
Resource  ../config/baseUrlAndNavigate.robot

*** Variables ***
${baseBrowser}  firefox
${baseUrl}  https://www.saucedemo.com/

*** Test Cases ***
addItemIntoCart

    openBrowserAndNavigate
    userLogin
    click element   id:add-to-cart-sauce-labs-fleece-jacket
    Page Should Contain Element     id:shopping_cart_container
    Element Text Should Be    css:.shopping_cart_badge    1
    Capture Page Screenshot