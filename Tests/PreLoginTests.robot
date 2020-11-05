*** Settings ***
Library     OperatingSystem
Library     JSONLibrary
Library     JsonValidator
Resource    ../Resources/Utils/Common.robot

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
    ${h0} =           Get Json Values    ${header0}
    Log To Console              ${h0}

*** Variables ***
${header0}    $.MenuHeaders[0]
${header1}    $.MenuHeaders[1]
${header2}    $.MenuHeaders[2]
${header3}    $.MenuHeaders[3]
${header4}    $.MenuHeaders[4]
