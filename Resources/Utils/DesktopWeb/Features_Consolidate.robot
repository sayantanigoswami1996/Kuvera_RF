*** Settings ***

Library     SeleniumLibrary
Resource    ../../../AppLocators/DesktopWeb/MenuNavigationLocators.robot
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot
Resource    ../../../Resources/Utils/DesktopWeb/Common.robot

*** Keywords ***

Verify PreLogin Consolidate Page
        Wait For Element Visibility  ${KU_W_feature_consolidateLink}
        Click Element  ${KU_W_feature_consolidateLink}
        Verify Language Switch Login And Signup Link
        Wait For Element Visibility  ${KU_W_feature_cd_pageHeader}  
        Verify Element And Text  ${KU_W_feature_cd_pageHeader}  ${e_feature_cd_pageHeaderText}
        Verify Element And Text  ${KU_W_feature_cd_pageSubHeader}  ${e_feature_cd_subHeaderText}

        # Set A Goal
        Scroll Untill View  ${KU_W_feature_setAGoalTitle}
        Verify Element And Text  ${KU_W_feature_setAGoalTitle}  ${e_feature_cd_setAGoalTitleText}
        Verify Element And Text  ${KU_W_feature_setAGoalSubTitle}  ${e_feature_cd_setAGoalSubTitle} 
        Verify Element And Text  ${KU_W_feature_setAGoalDesc}  ${e_feature_cd_setAGoalDescText}
        Verify Page Contains Link  ${KU_W_feature_goalBasedInvestingLink}  ${e_feature_cd_goalBsdInvestingLinkText}
        Sleep   2s
        Wait For Element Visibility  ${KU_W_feature_goalBasedInvestingLink}
        Click Element  ${KU_W_feature_goalBasedInvestingLink}
        Switch To Window Verify Title And Close  ${e_feature_cd_financialSuccessTitleText}  
        Sleep  3s
        Wait For Element Visibility  ${KU_W_feature_setAGoalBtn}
        Verify Element And Text  ${KU_W_feature_setAGoalBtn}  ${e_feature_cd_setAGoalBtnText} 
        Click Button  ${KU_W_feature_setAGoalBtn} 
        Wait For Element Visibility  ${KU_W_feature_sg_screenTitle}
        Verify Element And Text  ${KU_W_feature_sg_screenTitle}  ${e_feature_sg_screenTitle}
        Go Back

        # Save Tax Goal 
        Scroll Untill View  ${KU_W_feature_saveTaxGoalTitle}
        Verify Element And Text  ${KU_W_feature_saveTaxGoalTitle}  ${e_feature_cd_saveTaxGoalTitleText}
        Verify Element And Text  ${KU_W_feature_saveTaxGoalSubTitle}  ${e_feature_cd_saveTaxSubTitleText}  
        Verify Element And Text  ${KU_W_feature_saveTaxGoalDesc}  ${e_feature_cd_saveTaxGoalDescText}
        Verify Page Contains Link  ${KU_W_feature_ELSSLink}  ${e_feature_cd_ELSSLinkText}
        Sleep   2s
        Wait For Element Visibility    ${KU_W_feature_ELSSLink} 
        Click Element  ${KU_W_feature_ELSSLink} 
        Switch To Window Verify Title And Close  ${e_feature_cd_ELSSTitleText}  
        Sleep   2s
        Verify Element And Text  ${KU_W_feature_saveTaxGoalBtn}   ${e_feature_cd_saveTaxBtnText} 
        Wait For Element Visibility  ${KU_W_feature_saveTaxGoalBtn} 
        Click Button  ${KU_W_feature_saveTaxGoalBtn}  
        Wait For Element Visibility  ${KU_W_feature_saveTaxPageTitle} 
        Verify Element And Text  ${KU_W_feature_saveTaxPageTitle}   ${e_feature_cd_saveTaxPageText}
        Go Back

        # Beat Inflation
        Scroll Untill View  ${KU_W_feature_beatInflationTitle} 
        Verify Element And Text  ${KU_W_feature_beatInflationTitle}   ${e_feature_cd_beatInflationTitleText}
        Verify Element And Text  ${KU_W_feature_beatInflationSubTitle}   ${e_feature_cd_beatInflationSubText}  
        Verify Element And Text  ${KU_W_feature_beatInflationDesc}  ${e_feature_cd_beatInflationDescText}
        Verify Page Contains Link  ${KU_W_feature_inflationLink}  ${e_feature_cd_inflationLinkText}
        Wait For Element Visibility  ${KU_W_feature_inflationLink}
        Sleep   2s
        Click Element  ${KU_W_feature_inflationLink} 
        Switch To Window Verify Title And Close  ${e_feature_cd_inflationScreenTitle} 
        Sleep   2s
        Wait For Element Visibility  ${KU_W_feature_startInvestingBtn}
        Verify Element And Text  ${KU_W_feature_startInvestingBtn}  ${e_feature_cd_startInvestingBtnText} 
        Wait For Element Visibility  ${KU_W_feature_startInvestingBtn}  
        Click Button  ${KU_W_feature_startInvestingBtn}   
        Wait For Element Visibility   ${KU_W_feature_investScreenTab}
        Verify Page Contains Element   ${KU_W_feature_investScreenTab}
        Go Back
        
        # Today's Value 
        Scroll Untill View  ${KU_W_feature_todaysValueTitle} 
        Verify Element And Text  ${KU_W_feature_todaysValueTitle}  ${e_feature_cd_todaysValueTitleText}
        Verify Element And Text  ${KU_W_feature_todaysValueSubTitle}  ${e_feature_cd_todaysValueSubTitleText} 
        # Kuvera
        Verify Element And Text  ${KU_W_feature_kuveraTitle}  ${e_feature_cd_kuveraTitleText}
        Verify Page Contains Element  ${KU_W_feature_kuveraBar}
        Verify Element And Text  ${KU_W_feature_greenText}  ${e_feature_cd_kuveraGreenText}
        Verify Element And Text  ${KU_W_feature_subText}  ${e_feature_cd_kuveraReturnText}
        # Fixed Deposit
        Verify Element And Text  ${KU_W_feature_FDTitle}   ${e_feature_cd_FDText}
        Verify Page Contains Element  ${KU_W_feature_FDLightGreenBar}
        Verify Page Contains Element  ${KU_W_feature_FDLightGreyBar} 
        Verify Element And Text  ${KU_W_feature_FDOffgreenText}  ${e_feature_cd_FDOffGreenText} 
        Verify Element And Text  ${KU_W_feature_FDSubText}  ${e_feature_cd_FDReturnText} 
        # Savings Account
        Verify Element And Text  ${KU_W_feature_savingAcntTitle}  ${e_feature_cd_SAText}
        Verify Page Contains Element  ${KU_W_feature_SALightGreenBar}
        Verify Page Contains Element  ${KU_W_feature_SALightGreyBar} 
        Verify Element And Text  ${KU_W_feature_SAOffgreenText}   ${e_feature_cd_SAOffGreenText}
        Verify Element And Text  ${KU_W_feature_SASubText}   ${e_feature_cd_SAReturnText}

        # Family Account
        Scroll Untill View  ${KU_W_feature_familyAcntTitle} 
        Verify Element And Text  ${KU_W_feature_familyAcntTitle}  ${e_feature_cd_familyAcntTitleText}
        Verify Element And Text  ${KU_W_feature_familyAcntSubTitle}  ${e_feature_cd_familyAcntSubTitleText}  
        Verify Element And Text  ${KU_W_feature_familyAcntDesc}  ${e_feature_cd_familyAcntDescText}
        Verify Element And Text  ${KU_W_feature_familyAcntBtn}  ${e_feature_cd_familyAcntBtnText} 
        Wait For Element Visibility   ${KU_W_feature_familyAcntBtn}
        Sleep  1s
        Click Button  ${KU_W_feature_familyAcntBtn}
        Verify Login Page

        # Switch Today
        Scroll Untill View  ${KU_W_feature_switchTodayTitle}
        Verify Element And Text  ${KU_W_feature_switchTodayTitle}  ${e_feature_cd_switchTodayTitleText}
        Verify Element And Text  ${KU_W_feature_switchTodaySubTitle}  ${e_feature_cd_switchTodaySubTitleText} 
        Verify Element And Text  ${KU_W_feature_switchTodayDesc1}   ${e_feature_cd_switchTodayDesc1Text}
        Verify Element And Text  ${KU_W_feature_switchTodayDesc2}  ${e_feature_cd_switchTodayDesc2Text}
        Verify Element And Text  ${KU_W_feature_switchTodayBtn}   ${e_feature_cd_switchTodayBtnText}
        Wait For Element Visibility   ${KU_W_feature_switchTodayBtn} 
        Sleep  1s
        Click Button  ${KU_W_feature_switchTodayBtn} 
        Verify Login Page

        # Automated Tracking
        Scroll Untill View  ${KU_W_feature_autdTrackingTitle} 
        Verify Element And Text  ${KU_W_feature_autdTrackingTitle}  ${e_feature_cd_autdTrackingTitleText}
        Verify Element And Text  ${KU_W_feature_autdTrackingSubTitle}  ${e_feature_cd_autdTrackingSubTitleText} 
        Verify Element And Text  ${KU_W_feature_autdTrackingDesc}  ${e_feature_cd_autdTrackingDescText}
        Verify Element And Text  ${KU_W_feature_startImportingBtn}  ${e_feature_cd_startImportingBtnText} 
        Wait For Element Visibility  ${KU_W_feature_startImportingBtn} 
        Sleep  1s 
        Click Button  ${KU_W_feature_startImportingBtn}  
        Verify Login Page
        
        # Manage Account
        Scroll Untill View  ${KU_W_feature_manageAcntTitle} 
        Verify Element And Text  ${KU_W_feature_manageAcntTitle}  ${e_feature_cd_manageAcntTitleText}
        Verify Element And Text  ${KU_W_feature_manageAcntSubTitle}  ${e_feature_cd_manageAcntSubTitleText} 
        Verify Element And Text  ${KU_W_feature_manageAcntDesc1}  ${e_feature_cd_manageAcntDesc1Text}
        Verify Element And Text  ${KU_W_feature_manageAcntDesc2}  ${e_feature_cd_manageAcntDesc2Text}
        Verify Element And Text  ${KU_W_feature_manageTodayBtn}   ${e_feature_cd_manageTodayBtnText}  
        Wait For Element Visibility  ${KU_W_feature_manageTodayBtn} 
        Sleep  1s 
        Click Button  ${KU_W_feature_manageTodayBtn}  
        Verify Login Page