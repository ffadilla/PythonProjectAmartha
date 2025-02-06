*** Settings ***
Library  SeleniumLibrary
Resource  ../config/baseUrlAndNavigate.robot

*** Variables ***
${baseBrowser}  firefox

*** Test Cases ***
addItemIntoCart

    openBrowserAndNavigate
    userLogin
    click element   id:add-to-cart-sauce-labs-fleece-jacket
    click element   id:shopping_cart_container
    Element Text Should Be  css:.inventory_item_name    Sauce Labs Fleece Jacket
    Page Should Contain Element     id:shopping_cart_container
    Element Text Should Be    css:.shopping_cart_badge    1
    Capture Page Screenshot