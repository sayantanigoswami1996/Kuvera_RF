*** Keywords ***

Verify PreLogin Tax Harvesting Page
    Wait For Element Visibility  ${KU_W_feature_taxHarvestingLink}
    Click Element  ${KU_W_feature_taxHarvestingLink}
    Verify Login And Signup On Prelogin
    Wait For Element Visibility  ${KU_W_feature_th_screenTitle}   
    Verify Element And Text  ${KU_W_feature_th_screenTitle}  ${e_feature_th_TitleText} 
    Verify Element And Text  ${KU_W_feature_th_screenContent}  ${e_feature_th_subTitleText} 
    Verify Login On Prelogin And Refer Friend On Postlogin  ${KU_W_button}  ${e_feature_th_subscribeBtnText}  ${KU_W_feature_th_coinImage1}  ${KU_W_postlogin_feature_getCoinText}

    # Tax Harvesting Definition
    Scroll Untill View  ${KU_W_feature_whatIsTHTitle}
    Verify Element And Text  ${KU_W_feature_whatIsTHTitle}  ${e_feature_whatIsTHTitleText}
    Verify Element And Text  ${KU_W_feature_th_definition}  ${e_feature_th_definitionText}
    Verify Page Contains Link  ${KU_W_feature_th_learnMoreLink}  ${e_feature_th_learnMoreLnkTxt} 
    Scroll Untill View  ${KU_W_feature_th_learnMoreLink}
    Sleep  2s
    Wait For Element Visibility    ${KU_W_feature_th_learnMoreLink}
    Click Element  ${KU_W_feature_th_learnMoreLink}
    Switch To Window Verify Title And Close  ${e_feature_th_learnMoreTitle}
    Sleep  3s
    Reload Page
    Wait For Element Visibility  ${KU_W_feature_th_assumptions}
    Verify Element And Text  ${KU_W_feature_th_assumptions}  ${e_feature_th_assumptionText} 
    Verify Element And Text  ${KU_W_feature_whatIsTHTitle}  ${e_feature_whatIsTHTitleText}

    # Table Content
    Scroll Untill View  ${KU_W_feature_th_satusIconimage}
    Verify Page Contains Image  ${KU_W_feature_th_satusIconimage}
    Verify Element And Text  ${KU_W_feature_withTHTitle}  ${e_feature_withTHTitleText}
    Verify Element And Text  ${KU_W_feature_withoutTHTitle}  ${e_feature_withoutTHTitleText}
    Scroll Untill View  ${KU_W_feature_tHTableRow1} 
    Verify Element And Text  ${KU_W_feature_tHTableRow1}  ${e_feature_th_tableRow1Text}
    Scroll Untill View  ${KU_W_feature_tHTableRow2} 
    Verify Element And Text  ${KU_W_feature_tHTableRow2}  ${e_feature_th_tableRow2Text}
    Scroll Untill View  ${KU_W_feature_tHTableRow3}
    Verify Element And Text  ${KU_W_feature_tHTableRow3}  ${e_feature_th_tableRow3Text}
    Scroll Untill View  ${KU_W_feature_tHTableSumupRow} 
    Verify Element And Text  ${KU_W_feature_tHTableSumupRow}  ${e_feature_th_tableSumupRowText}

    # Work Card Reading
    Scroll Untill View  ${KU_W_feature_th_workCardHeading1}
    Verify Element And Text  ${KU_W_feature_th_workCardHeading1}  ${e_feature_th_workCardTitleText1}
    Verify Element And Text  ${KU_W_feature_th_workCardDesc1}  ${e_feature_th_workCardDescText1}
    Verify Element And Text  ${KU_W_feature_th_workCardHeading2}  ${e_feature_th_workCardTitleText2}
    Verify Element And Text  ${KU_W_feature_th_workCardDesc2}  ${e_feature_th_workCardDescText2}
    Verify Element And Text  ${KU_W_feature_th_workCardHeading3}  ${e_feature_th_workCardTitleText3}
    Verify Element And Text  ${KU_W_feature_th_workCardDesc3}  ${e_feature_th_workCardDescText3}
    Verify Login On Prelogin And Refer Friend On Postlogin  ${KU_W_feature_th_subscribe2Btn}  ${e_feature_th_subscribeBtnText}  ${KU_W_feature_th_coinImage2}  ${KU_W_postlogin_feature_getCoinText}

    # Pricing
    Verify Element And Text  ${KU_W_feature_th_pricingTite}  ${e_feature_th_pricingTitleText}
    Verify Page Contains Image  ${KU_W_feature_th_pricingcoinIcon}
    Verify Element And Text  ${KU_W_feature_th_pricingcoinAmt}  ${e_feature_th_coinAmount}
    Verify Element And Text  ${KU_W_feature_th_pricingPerYear}  ${e_feature_th_yearText}
    Verify Page Contains Image  ${KU_W_feature_th_pricingcheckIcon1}
    Verify Element And Text  ${KU_W_feature_th_pricingcheckDesc1}  ${e_feature_th_checkDescText1} 
    Verify Page Contains Image  ${KU_W_feature_th_pricingcheckIcon2}
    Verify Element And Text  ${KU_W_feature_th_pricingcheckDesc2}  ${e_feature_th_checkDescText2} 
    Verify Page Contains Image  ${KU_W_feature_th_pricingcheckIcon3}
    Verify Element And Text  ${KU_W_feature_th_pricingcheckDesc3}  ${e_feature_th_checkDescText3}

    # Start Harvesting Today
    Verify Element And Text  ${KU_W_feature_th_startHarvestTitle}  ${e_feature_th_startHarvestText}
    Verify Login On Prelogin And Refer Friend On Postlogin  ${KU_W_feature_th_subscribe3Btn}  ${e_feature_th_subscribeBtnText}  ${KU_W_feature_th_coinImage3}  ${KU_W_postlogin_feature_getCoinText}


Verify Login On Prelogin And Refer Friend On Postlogin
    [Arguments]  ${buttonTitle}  ${buttonText}  ${coinImage}  ${navigatedPage}
    ${isLoginButtonVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_login}
    IF  ${isLoginButtonVisible}
        Scroll Untill View  ${buttonTitle}
        Verify Element And Text  ${buttonTitle}  ${buttonText}
        Verify Page Contains Image  ${coinImage}
        Click Button  ${buttonTitle}
        Verify Login Page
    ELSE
        Wait And Click  ${buttonTitle}
        Verify Page Contains Element  ${navigatedPage}
        Go Back
    END 