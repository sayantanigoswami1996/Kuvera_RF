*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Footer 
    # About Us
    Scroll To About Us Section
    Verify Element And Text  ${KU_W_footer_aboutUs}  ${e_footer_aboutUs}
    Verify Element And Text  ${KU_W_footer_theTeam}  ${e_footer_theTeam}
    Wait For Element Visibility  ${KU_W_footer_whyKuvera}
    Verify Element And Text  ${KU_W_footer_whyKuvera}  ${e_footer_whyKuvera}
    Sleep  3s
    Verify The Team Page
    Verify Why Kuvera Page
    Verify Press Page
    Sleep  1s
    Wait Scroll And Click Element  ${KU_W_footer_fbIcon}
    Switch To Window
    Wait Scroll And Click Element  ${KU_W_footer_tweeterIcon}
    Switch To Window
    Verify Terms And Privacy Policy Page 
    Verify Switch To Direct Page
    # Save Taxes
    Wait Scroll And Click Element  ${KU_W_feature_saveTaxesLink}
    Wait For Element Visibility  ${KU_W_feature_st_screenTitle}  
    Verify Element And Text  ${KU_W_feature_st_screenTitle}  ${e_feature_st_screenTitleText}
    Scroll To About Us Section
    # Set a goal 
    Wait For Element Visibility  ${KU_W_footer_setAGoal}
    Click Element  ${KU_W_footer_setAGoal}
    Wait For Element Visibility  ${KU_W_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenTitle}  ${e_feature_sg_screenTitle}
    Go Back
    Scroll To About Us Section
    # Explore Funds
    Wait Scroll And Click Element  ${KU_W_footer_exploreFunds}
    Verify Screen Title  ${e_mutualFundPageTitle}
    # Verify Blog 
    Verify Blog
    Scroll To About Us Section
    # Google Play & App Store Links
    Wait Scroll And Click Element  ${KU_W_googlePlay}
    Sleep  1s
    Go Back
    Scroll To About Us Section
    Wait Scroll And Click Element  ${KU_W_appStore}
    Sleep  1s
    Go Back
    # GET FINANCE INSIGHTS
    Scroll To About Us Section
    Wait Scroll And Click Element  ${KU_W_getFinanceInsights}
    Verify Element And Text  ${KU_W_getFinanceInsightsTitle}  ${e_getFinanceInsightsTitle}
    Go Back
    Go Back

Scroll To About Us Section
    Scroll Page To Location  0  2000
    Scroll Untill View  ${KU_W_footer_aboutUs}

Verify The Team Page
    Scroll To About Us Section
    Wait Scroll And Click Element  ${KU_W_footer_theTeam}
    Wait For Element Visibility  ${KU_W_footer_theTeamTitle}
    Verify Element And Text  ${KU_W_footer_theTeamTitle}  ${e_footer_theTeamTitle}

Verify Why Kuvera Page
    Scroll To About Us Section
    Verify Element And Text  ${KU_W_footer_whyKuvera}  ${e_footer_whyKuvera}
    Click Element  ${KU_W_footer_whyKuvera}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_feature_cd_pageHeader}
    Verify Element And Text  ${KU_W_feature_cd_pageHeader}  ${e_feature_cd_pageHeaderText}
    Scroll To About Us Section

Verify Press Page
    Scroll Untill View  ${KU_W_footer_press}
    Verify Element And Text  ${KU_W_footer_press}  ${e_footer_press}
    Click Element  ${KU_W_footer_press}
    Sleep  3s
    Wait For Element Visibility  ${KU_W_footer_inPressTitle}
    Scroll Untill View  ${KU_W_footer_inPressTitle}
    Verify Element And Text  ${KU_W_footer_inPressTitle}  ${e_footer_inPressTitle}

Verify Terms And Privacy Policy Page    
    Scroll To About Us Section
    # Terms
    Wait Scroll And Click Element  ${KU_W_footer_termsLink}
    Wait For Element Visibility  ${KU_W_footer_termsOfUsageTitle}
    Verify Element And Text  ${KU_W_footer_termsOfUsageTitle}  ${e_footer_termsOfUsageTitle}
    Scroll To About Us Section
    # Privacy Policy
    Wait Scroll And Click Element  ${KU_W_footer_privacyPolicyLink}
    Wait For Element Visibility  ${KU_W_footer_privacyPolicyTitle}
    Verify Element And Text  ${KU_W_footer_privacyPolicyTitle}  ${e_footer_privacyPolicy}

Verify Switch To Direct Page 
    Scroll To About Us Section
    Wait Scroll And Click Element  ${KU_W_footer_switchToDirectFunds}
    Wait For Element Visibility  ${KU_W_footer_switchToDirectTitle}
    Verify Element And Text  ${KU_W_footer_switchToDirectTitle}  ${e_footer_switchToDirectTitle}

Verify Blog 
    Scroll To About Us Section
    Verify Element And Text  ${KU_W_blog}  ${e_blog}
    Click Element  ${KU_W_blog}
    Switch To Window