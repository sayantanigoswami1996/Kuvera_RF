*** Settings ***
Library     OperatingSystem
Library     JSONLibrary
Library     JsonValidator
<<<<<<< HEAD
Resource    ../../Resources/Utils/Android/Common.robot
=======
Resource    ../Resources/Utils/Android/Common.robot
>>>>>>> KU_RF_PE_PHASE1

#Suite Setup       Begin Mobile Test Kuvera
#Suite Teardown    Close Kuvera Application
#Test Setup        Launch the Application
#Test Teardown     Quit Kuvera Application

#robot -d Results Tests/Android/PreLoginTests.robot
#robot -d Results -L Debug    -i order Tests


*** Test Cases ***

Menu Navigation
    [Tags]            TC01
    Begin Mobile Test Kuvera
    Skip Sliders
    Kuvera Logo Click
<<<<<<< HEAD
    Quit Kuvera Application
    # Move To Explore Funds
=======
   # Move To Explore Funds
>>>>>>> KU_RF_PE_PHASE1
    ${h0} =           Get Json Values    ${header0}   Resources/TestData/Headers.json
    Log To Console              ${h0}

*** Variables ***
${header0}    $.MenuHeaders[0].Invest[0]

