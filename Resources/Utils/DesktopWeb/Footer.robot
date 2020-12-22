*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Footer 
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
    Sleep  3s
    Wait Scroll And Click Element  ${KU_W_footer_fbIcon}
    Switch To Window
    Wait Scroll And Click Element  ${KU_W_footer_tweeterIcon}
    Switch To Window
    Verify Terms And Privacy Policy Page 
    Verify Switch To Direct Page
    # Save Taxes
    Verify PreLogin Save Taxes Page
    # Set a goal 
    Click Element  ${KU_W_footer_setAGoal}
    Wait For Element Visibility  ${KU_W_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenTitle}  ${e_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenSubTitle}  ${e_feature_sg_screenSubTitle}
    Go Back
    Scroll To About Us Section
    # Explore Funds
    Verify Element And Text  ${KU_W_feature_sg_screenTitle}  ${e_feature_sg_screenTitle}
    Wait Scroll And Click Element  ${KU_W_footer_exploreFunds}
    Verify Screen Title  ${e_mutualFundPageTitle}

Scroll To About Us Section
    Scroll Page To Location  0  2000
    Scroll Untill View  ${KU_W_footer_aboutUs}

Verify The Team Page
    Wait Scroll And Click Element  ${KU_W_footer_theTeam}
    Wait For Element Visibility  ${KU_W_footer_theTeamTitle}
    Verify Element And Text  ${KU_W_footer_theTeamTitle}  ${e_footer_theTeamTitle}
    Scroll To About Us Section

Verify Why Kuvera Page
    Verify Element And Text  ${KU_W_footer_whyKuvera}  ${e_footer_whyKuvera}
    Click Element  ${KU_W_footer_whyKuvera}
    Wait For Element Visibility  ${KU_W_feature_cd_pageHeader}
    Verify Element And Text  ${KU_W_feature_cd_pageHeader}  ${e_feature_cd_pageHeaderText}
    Verify Element And Text  ${KU_W_feature_cd_pageSubHeader}  ${e_feature_cd_subHeaderText}
    Scroll To About Us Section

Verify Press Page
    Scroll Untill View  ${KU_W_footer_press}
    Verify Element And Text  ${KU_W_footer_press}  ${e_footer_press}
    Click Element  ${KU_W_footer_press}
    Sleep  3s
    Wait For Element Visibility  ${KU_W_footer_inPressTitle}
    Scroll Untill View  ${KU_W_footer_inPressTitle}
    Verify Element And Text  ${KU_W_footer_inPressTitle}  ${e_footer_inPressTitle}
    Scroll To About Us Section

Verify Terms And Privacy Policy Page    
    # Terms
    Wait Scroll And Click Element  ${KU_W_footer_termsLink}
    Wait For Element Visibility  ${KU_W_footer_termsOfUsageTitle}
    Verify Element And Text  ${KU_W_footer_termsOfUsageTitle}  ${e_footer_termsOfUsageTitle}
    Scroll Page To Location  0  2000
    # Privacy Policy
    Wait Scroll And Click Element  ${KU_W_footer_privacyPolicyLink}
    Wait For Element Visibility  ${KU_W_footer_privacyPolicyTitle}
    Verify Element And Text  ${KU_W_footer_privacyPolicyTitle}  ${e_footer_privacyPolicy}
    Scroll To About Us Section

Verify Switch To Direct Page 
    Wait Scroll And Click Element  ${KU_W_footer_switchToDirectFunds}
    Wait For Element Visibility  ${KU_W_footer_switchToDirectTitle}
    Verify Element And Text  ${KU_W_footer_switchToDirectTitle}  ${e_footer_switchToDirectTitle}