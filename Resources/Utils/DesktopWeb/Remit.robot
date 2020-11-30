*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Resource    ../../../AppLocators/DesktopWeb/MenuNavigationLocators.robot
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot
Resource    ../../../Resources/Utils/DesktopWeb/Common.robot

*** Keywords ***

Verify Transfer Now 
    [Arguments]  ${element}
    sleep  1s
    Click Button  ${element}
    Verify Element And Text  ${KU_W_transferWiseStepsModal}  Next steps
    Wait For Element Visibility  ${KU_W_transferWiseNextStepsContinueBtn}
    Click Element  ${KU_W_transferWiseNextStepsContinueBtn}
    Switch To Window Verify Title And Close  ${e_remit_transferWiseCross-borderTitle} 

Verify PreLogin Remit Page
    Wait For Element Visibility  ${KU_W_remit_Link}
    Click Element  ${KU_W_remit_Link}
    Verify Language Switch Login And Signup Link
    Wait For Element Visibility  ${KU_W_remit_screenTitle}
    Verify Element And Text  ${KU_W_remit_screenTitle}  ${e_remit_screenTitle} 
    Verify Element And Text  ${KU_W_remit_screenTitleDesc}  ${e_remit_screenTitleDesc}
    Verify Transfer Now  ${KU_W_remit_transferNowTopBtn}
    Scroll Untill View  ${KU_W_remit_whyTransferWise}
    Scroll Untill View  ${KU_W_remit_knowMoreBtn}
    @{actualListItems} =  Get WebElements  ${KU_W_remit_whyTransferWiseList} 
    Compare Lists  ${actualListItems}  ${e_remit_whyTransferWiseList}
    Click Element  ${KU_W_remit_knowMoreBtn}
    Switch To Window Verify Title And Close   ${e_remit_transferWiseCross-borderTitle}

    # Verify Third party - Transferwise redirection
    Switch To Frame  ${KU_W_remit_calculator_iFrame}
    Sleep  1s
    Click Button  Send money
    Scroll Untill View  ${KU_W_remit_calculatorTarget}
    Verify Page Contains Element  ${KU_W_remit_calculatorTarget}
    Switch To Window Verify Title And Close  ${e_remit_transferWiseSignUpTitle} 

    Scroll Untill View  ${KU_W_remit_transferNoBottomBtn}
    Verify Transfer Now   ${KU_W_remit_transferNoBottomBtn}