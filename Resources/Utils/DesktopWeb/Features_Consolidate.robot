*** Settings ***

Library     SeleniumLibrary
Resource    ../../../AppLocators/DesktopWeb/MenuNavigationLocators.robot
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot
Resource    ../../../Resources/Utils/DesktopWeb/Common.robot

*** Keywords ***
Verify PreLogin Consolidate Page

        # Click Element  ${KU_W_featureLink}
        Wait For Element Visbility  ${KU_W_feature_consolidateLink}
        Click Element  ${KU_W_feature_consolidateLink}
        Verify Language Switch Login And Signup Link
        Wait For Element Visbility  ${KU_W_feature_cd_pageHeader}  
        Verify Element And Text  ${KU_W_feature_cd_pageHeader}  ${e_feature_cd_pageHeaderText}
        Verify Element And Text  ${KU_W_feature_cd_pageSubHeader}  ${e_feature_cd_subHeaderText}

        # Set A Goal
        Scroll Untill View  ${KU_W_feature_setAGoalTitle}
        Verify Element And Text  ${KU_W_feature_setAGoalTitle}  ${e_feature_cd_setAGoalTitleText}
        Verify Element And Text  ${KU_W_feature_setAGoalSubTitle}  ${e_feature_cd_setAGoalSubTitle} 
        Verify Element And Text  ${KU_W_feature_setAGoalDesc}  ${e_feature_cd_setAGoalDescText}
        Verify Page Contains Link  ${KU_W_feature_goalBasedInvestingLink}  ${e_feature_cd_goalBsdInvestingLinkText}
        Wait For Element Visbility    ${KU_W_feature_goalBasedInvestingLink}
        Click Element  ${KU_W_feature_goalBasedInvestingLink}
        Switch To Window Verify Title And Close  ${e_feature_cd_financialSuccessTitleText}  
        Verify Element And Text  ${KU_W_feature_setAGoalBtn}  ${e_feature_cd_setAGoalBtnText} 
        Click Button  ${KU_W_feature_setAGoalBtn} 
        Sleep  1s
        Verify Element And Text  ${KU_W_feature_sg_screenTitle}  ${e_feature_sg_screenTitle}
        Go Back

        # Save Tax Goal 
        Scroll Untill View  ${KU_W_feature_saveTaxGoalTitle}
        Verify Element And Text  ${KU_W_feature_saveTaxGoalTitle}  ${e_feature_cd_saveTaxGoalTitleText}
        Verify Element And Text  ${KU_W_feature_saveTaxGoalSubTitle}  ${e_feature_cd_saveTaxSubTitleText}  
        Verify Element And Text  ${KU_W_feature_saveTaxGoalDesc}  ${e_feature_cd_saveTaxGoalDescText}
        Verify Page Contains Link  ${KU_W_feature_ELSSLink}  ${e_feature_cd_ELSSLinkText}
        Sleep   3s
        Wait For Element Visbility    ${KU_W_feature_ELSSLink} 
        Click Element  ${KU_W_feature_ELSSLink} 
        Switch To Window Verify Title And Close  ${e_feature_cd_ELSSTitleText}  
        Sleep   3s
        Verify Element And Text  ${KU_W_feature_saveTaxGoalBtn}   ${e_feature_cd_saveTaxBtnText} 
        Wait For Element Visbility  ${KU_W_feature_saveTaxGoalBtn} 
        Click Button  ${KU_W_feature_saveTaxGoalBtn}  
        Sleep  1s
        Verify Element And Text  ${KU_W_feature_saveTaxPageTitle}   ${e_feature_cd_saveTaxPageText}
        Go Back