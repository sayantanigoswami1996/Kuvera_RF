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
    Verify Login And Signup On Prelogin
    Sleep  2s
    ${isElementVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_remit_screenTitleDesc}
    Run Keyword If   ${isElementVisible}  Log To Console  Continue
    ...    ELSE  Click Element  ${KU_W_remit_Link}
    Wait For Element Visibility  ${KU_W_remit_screenTitle}
    Verify Element And Text  ${KU_W_remit_screenTitle}  ${e_remit_screenTitle}
    Sleep  3s
    Wait For Element Visibility  ${KU_W_remit_screenTitleDesc}
    Verify Element And Text  ${KU_W_remit_screenTitleDesc}  ${e_remit_screenTitleDesc}
    Verify Transfer Now  ${KU_W_remit_transferNowTopBtn}
    Verify Gold Banner  ${KU_W_remit_bannerLogo}  ${KU_W_remit_bannerTitle}
    Scroll Untill View  ${KU_W_remit_whyTransferWise}
    Scroll Untill View  ${KU_W_remit_knowMoreBtn}
    @{actualListItems} =  Get WebElements  ${KU_W_remit_whyTransferWiseList}
    Compare Lists  ${actualListItems}  ${e_remit_whyTransferWiseList}
    Click Element  ${KU_W_remit_knowMoreBtn}
    Switch To Window Verify Title And Close  ${e_remit_transferWiseCross-borderTitle}
    # Verify Third party - Transferwise redirection
    Switch To Frame  ${KU_W_remit_calculator_iFrame}
    Sleep  2s
    Click Button  Send money
    Scroll Untill View  ${KU_W_remit_calculatorTarget}
    Verify Page Contains Element  ${KU_W_remit_calculatorTarget}
    Switch To Window Verify Title And Close  ${e_remit_transferWiseSignUpTitle}
    Sleep  2s
    Scroll Untill View  ${KU_W_remit_transferNoBottomBtn}
    Verify Transfer Now  ${KU_W_remit_transferNoBottomBtn}    