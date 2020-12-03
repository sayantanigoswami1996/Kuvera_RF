*** Settings ***

Library     SeleniumLibrary

*** Keywords ***
Verify Digital Gold Landing Page
    Wait For Element Visibility   ${KU_W_digitalGoldTitle}
    Click Element  ${KU_W_digitalGoldTitle}
    Wait For Element Visibility   ${KU_W_dg_screenTitle} 
    Verify Language Switch Login And Signup Link  
    Wait For Element Visibility  ${KU_W_dg_screenTitle}
    Verify Element And Text  ${KU_W_dg_screenTitle}   ${e_invest_digiGold_screenText} 
    Verify Element And Text  ${KU_W_dg_purityHeading}  ${e_invest_digiGold_purityHeadingText} 
    Scroll Untill View  ${KU_W_dg_purityDesc} 
    Verify Element And Text   ${KU_W_dg_purityDesc}   ${e_invest_digiGold_purityDescText}
    Verify Element And Text   ${KU_W_dg_100SecureHeading}  ${e_invest_digiGold_100SecureHeadingText} 
    Verify Element And Text   ${KU_W_dg_100SecureDesc}   ${e_invest_digiGold_100SecureDescText}
    Verify Element And Text   ${KU_W_dg_fullyLiquidHeading}   ${e_invest_digiGold_fullyLiquidText} 
    Scroll Untill View  ${KU_W_dg_fullyLiquidDesc} 
    Verify Element And Text   ${KU_W_dg_fullyLiquidDesc}   ${e_invest_digiGold_fullyLiquidDescText} 
    Verify Element And Text   ${KU_W_dg_livePricesHeading}   ${e_invest_digiGold_livePricesText} 
    Verify Element And Text   ${KU_W_dg_livePricesDesc}  ${e_invest_digiGold_livePricesDescText}
    Scroll Untill View  ${KU_W_dg_augmontHeading}
    Verify Element And Text   ${KU_W_dg_augmontHeading}  ${e_invest_digiGold_augmontHeadingText} 
    Verify Element And Text   ${KU_W_dg_augmontDesc}  ${e_invest_digiGold_augmontDescText} 
    Verify Page Contains Link  ${KU_W_dg_augmontLink}  ${e_invest_digiGold_augmontLinkText}
    Wait For Element Visibility   ${KU_W_dg_augmontLink}
    Click Element  ${KU_W_dg_augmontLink}
    Switch To Window Verify Title And Close  ${e_invest_digiGold_augmontScreenTitle}
    Reload Page

    # Digital Gold is better than Mutual Funds
    Scroll Untill View   ${KU_W_digitalGoldIsBetterTitle}
    Verify Element And Text  ${KU_W_digitalGoldIsBetterTitle}  ${e_invest_digiGoldIsBetterTitleText}
    Verify Element And Text   ${KU_W_digitalGoldIsBetterDesc}  ${e_invest_digiGoldIsBetterDescText}
    Verify Page Contains Link  ${KU_W_dg_learnMoreLink}  ${e_invest_learnMoreLinkText} 
    Click Element  ${KU_W_dg_learnMoreLink}
    Switch To Window Verify Title And Close  ${e_invest_digitalGoldScreenTitle}
    Reload Page

    # Already Own Gold ? Track it ?
    Scroll Untill View   ${KU_W_addGoldHeading}
    Verify Element And Text  ${KU_W_addGoldHeading}  ${e_invest_addGoldTitleText}
    Verify Element And Text  ${KU_W_addGoldDesc}  ${e_invest_addGoldDescText}
    Verify Element And Text  ${KU_W_dg_addGoldBtn}  ${e_invest_addGoldBtnText} 
    Wait For Element Visibility  ${KU_W_dg_addGoldBtn}
    Click Button  ${KU_W_dg_addGoldBtn}
    Verify Login Page

    #  Questions ? We are happy to help
    Scroll Untill View  ${KU_W_dg_faqHeading}
    Verify Element And Text  ${KU_W_dg_faqHeading}  ${e_invest_faqTitleText} 
    Verify Element And Text   ${KU_W_faqBtn}  ${e_invest_faqBtnText}
    Wait For Element Visibility  ${KU_W_faqBtn}
    Sleep  1s
    Click Button  ${KU_W_faqBtn}
    Verify Element And Text  ${KU_W_dg_faqBotTitle}  ${e_invest_faqBotText} 
    Click Element  ${KU_W_dg_faqCloseBtn} 
    Go Back