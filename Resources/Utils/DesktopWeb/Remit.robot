*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Resource    ../../../AppLocators/DesktopWeb/MenuNavigationLocators.robot
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot
Resource    ../../../Resources/Utils/DesktopWeb/Common.robot

***Keywords***
Verify Remit Page
    Click Link  ${KU_W_remit_Link}
    Verify Language Switch Login And Signup Link
    Wait For Element Visbility  ${KU_W_remit_screenTitle}
    Verify Element And Text  ${KU_W_remit_screenTitle}  ${e_remit_screenTitle} 
    Verify Element And Text  ${KU_W_remit_screenTitleDesc}  ${e_remit_screenTitleDesc}
    # Verify transerwise next steps 
    Click Button  ${KU_W_remit_transferNowBtn}
    Verify Element And Text  ${KU_W_transferWiseStepsModal}  Next steps
    Wait For Element Visbility  ${KU_W_transferWiseNextStepsContinueBtn}
    Click Element  ${KU_W_transferWiseNextStepsContinueBtn}
    Switch To Window Verify Title And Close  ${e_remit_transferWiseSignupTitle} 

    Scroll Untill View  ${KU_W_remit_whyTransferWise}
    Scroll Untill View  ${KU_W_remit_knowMoreBtn}
  
    Switch To Frame  ${KU_W_remit_calculator_iFrame}
    Sleep  3s
    Click Button  Send money
    Verify Page Contains Element  ${KU_W_remit_calculatorTarget}
    Switch To Window Verify Title And Close  ${e_remit_transferWiseSignupTitle} 
    Click Element  ${KU_W_remit_knowMoreBtn}
    Switch To Window Verify Title And Close  ${e_remit_transferWiseCross-borderTitle}

  #Scroll Untill View  ${KU_W_transferWiseVideo}

    #Compare Lists   ${actualWhyTranserNowList}  ${e_remit_whyTransferWiseList}