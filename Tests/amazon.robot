*** Settings ***
Documentation    Creating first robot test
Library  SeleniumLibrary


*** Variable ***


*** Test Cases ***
Opening Chrome Browser
    [Documentation]  Starting automaiton test
    [Tags]    Smoke
    open browser  http://amazon.in  gc
    wait until page contains  Hello
    input text  xpath=//*[@id='twotabsearchtextbox']  Fossil watch
    click button  id=nav-search-submit-button
    wait until page contains  results for "Fossil watch"
    click element  xpath=//*[@cel_widget_id='MAIN-SEARCH_RESULTS-3']
    ${handles}=  Get Window Handles
    switch window  ${Handles}[1]
    click button  xpath=//input[@id='add-to-cart-button']
    wait until page contains  Added to Cart
    close browser

*** Keywords ***
Provided precondition
    Setup system under test