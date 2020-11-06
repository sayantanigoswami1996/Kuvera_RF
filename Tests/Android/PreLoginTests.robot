*** Settings ***
Library     OperatingSystem
Library     JSONLibrary
Library     JsonValidator
Resource    ../../Resources/Utils/Android/Common.robot

#Suite Setup       Begin Mobile Test Kuvera
#Suite Teardown    Close Kuvera Application
#Test Setup        Launch the Application
#Test Teardown     Quit Kuvera Application

#robot -d Results Tests/PreLoginTests.robot
#robot -d Results -L Debug    -i order Tests


*** Test Cases ***

Menu Navigation
    [Tags]            TC01
    Begin Mobile Test Kuvera
    Skip Sliders
    Kuvera Logo Click
    Quit Kuvera Application
    # Move To Explore Funds
    ${h0} =           Get Json Values    ${header0}   Resources/TestData/Headers.json
    Log To Console              ${h0}

*** Variables ***
${header0}    $.MenuHeaders[0].Invest[0]

