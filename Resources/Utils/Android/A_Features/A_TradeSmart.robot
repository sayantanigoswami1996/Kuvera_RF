*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin TradeSmart Page
    Log To Console  TradeSmart
    Navigate To Hamburger Menu  ${KU_A_featureLink}  ${e_featureLink}
    Wait And Click Element On Android  ${KU_A_feature_TS_link}
    Verify Text On Page  ${e_feature_TS_screenTitle} 
    Verify Signup Link And Kuvera Logo
    Verify Page Contains Element On Android  ${KU_A_feature_TS_screenSubTitle}
    Verify Page Contains Element On Android  ${KU_A_feature_TS_imgIcon}
    Verify Text On Page  ${e_feature_TS_activateOnce}
    Verify Text On Page  ${e_feature_TS_activateSubTitle} 
    Swipe By Percent  70  70  20  20  5000
    Verify Text On Page  ${e_feature_TS_weHelpYouTitle}
    Verify Text On Page  ${e_feature_TS_weHelpYouSubTitle1}
    Verify Text On Page  ${e_feature_TS_weHelpYouSubTitle2}
    Verify Text On Page  ${e_feature_TS_weHelpYouSubTitle3}
    Verify Presence Of Bot Button  ${KU_A_faqBotBtn}
    Verify Text On Page  ${e_feature_TS_activateWith300Btn}
    Wait And Click Element On Android  ${KU_A_feature_TS_activateWith300Btn}
    Verify Login Page On Android App
    Swipe By Percent  30  30  85  85  5000
    Swipe By Percent  30  30  85  85  5000



    
    