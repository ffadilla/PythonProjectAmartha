*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  firefox
${baseUrl}  https://www.saucedemo.com/

*** Test Cases ***
LoginTest
    open browser    ${baseUrl}  ${browser}
    input text  id:user-name    standard_user
    input text  id:password     secret_sauce
    click element   id:login-button
    click element   id:add-to-cart-sauce-labs-fleece-jacket
    Page Should Contain Element     id:shopping_cart_container
    Element Text Should Be    css:.shopping_cart_badge    1
    
*** Keywords ***
