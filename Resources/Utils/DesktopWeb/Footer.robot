*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Footer 
    # About Us
    Scroll To About Us Section
    Verify Element And Text  ${KU_W_footer_aboutUs}  ${e_footer_aboutUs}
    Verify Element And Text  ${KU_W_footer_theTeam}  ${e_footer_theTeam}
    Verify Element And Text  ${KU_W_footer_whyKuvera}  ${e_footer_whyKuvera}
    Sleep  5s
    Verify The Team Page
    Verify Why Kuvera Page
    Verify Press Page
    Sleep  5s

Scroll To About Us Section
    Scroll Untill View  ${KU_W_footer_aboutUs}

Verify The Team Page
    Scroll Untill View  ${KU_W_footer_theTeam} 
    Click Element  ${KU_W_footer_theTeam}
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
    Click Element  ${KU_W_footer_inPressTitle}
    Sleep  3s
    Wait For Element Visibility  ${KU_W_footer_inPressTitle}
    Scroll Untill View  ${KU_W_footer_inPressTitle}
    Verify Element And Text  ${KU_W_footer_inPressTitle}  ${e_footer_inPressTitle}
    Scroll To About Us Section