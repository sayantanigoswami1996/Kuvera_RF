*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Consolidate Page
    Click Element  ${KU_W_featureLink}
    Wait For Element Visibility  ${KU_W_feature_consolidateLink}
    Click Element  ${KU_W_feature_consolidateLink}
    Verify Language Switch Login And Signup Link
    Wait For Element Visibility  ${KU_W_feature_cd_pageHeader}  
    Verify Element And Text  ${KU_W_feature_cd_pageHeader}  ${e_feature_cd_pageHeaderText}
    Verify Element And Text  ${KU_W_feature_cd_pageSubHeader}  ${e_feature_cd_subHeaderText}
    
    # Set A Goal
    Scroll Untill View  ${KU_W_feature_setAGoalPageTitle}
    Verify Element And Text  ${KU_W_feature_setAGoalPageTitle}  ${e_feature_cd_setAGoalTitleText}
    Verify Element And Text  ${KU_W_feature_setAGoalPageSubTitle}  ${e_feature_cd_setAGoalSubTitle} 
    Verify Element And Text  ${KU_W_feature_setAGoalPageDesc}  ${e_feature_cd_setAGoalDescTitle}
    Verify Page Contains Link  ${KU_W_feature_goalBasedInvestingLink}  ${e_feature_cd_goalBsdInvestingLinkText}
    Click Link  ${KU_W_feature_goalBasedInvestingLink}
    Switch To Window Verify Title And Close  ${e_feature_cd_financialSuccessTitleText}  
    Verify Element And Text  ${KU_W_feature_setAGoalBtn}  ${e_feature_cd_setAGoalBtnText} 
    Click Button  ${KU_W_feature_setAGoalBtn} 
    Sleep  1s
    Verify Element And Text  ${KU_W_feature_sg_screenTitle}  ${e_feature_sg_screenTitle}
    Go Back
    
    # Save Tax Goal
    
    


    