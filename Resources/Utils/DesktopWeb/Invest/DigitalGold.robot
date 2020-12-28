*** Settings ***

Library   SeleniumLibrary

*** Keywords ***

Verify Digital Gold Landing Page
    Log To Console  Digital Gold - Explore More
    Navigate To Invest Page And Verify Explore Options  ${KU_W_digitalGold}  ${e_invest_digGold}
    Verify Language Switch Login And Signup Link  
    Wait For Element Visibility  ${KU_W_dg_screenTitle}
    Verify Element And Text  ${KU_W_dg_screenTitle}  ${e_invest_digiGold_screenText} 
    Verify Element And Text  ${KU_W_dg_purityHeading}  ${e_invest_digiGold_purityHeadingText} 
    Scroll Untill View  ${KU_W_dg_purityDesc} 
    Verify Element And Text  ${KU_W_dg_purityDesc}  ${e_invest_digiGold_purityDescText}
    Verify Element And Text  ${KU_W_dg_100SecureHeading}  ${e_invest_digiGold_100SecureHeadingText} 
    Verify Element And Text  ${KU_W_dg_100SecureDesc}  ${e_invest_digiGold_100SecureDescText}
    Verify Element And Text  ${KU_W_dg_fullyLiquidHeading}  ${e_invest_digiGold_fullyLiquidText} 
    Scroll Untill View  ${KU_W_dg_fullyLiquidDesc} 
    Verify Element And Text  ${KU_W_dg_fullyLiquidDesc}  ${e_invest_digiGold_fullyLiquidDescText} 
    Verify Element And Text  ${KU_W_dg_livePricesHeading}  ${e_invest_digiGold_livePricesText} 
    Verify Element And Text  ${KU_W_dg_livePricesDesc}  ${e_invest_digiGold_livePricesDescText}
    Scroll Untill View  ${KU_W_dg_augmontHeading}
    Verify Element And Text  ${KU_W_dg_augmontHeading}  ${e_invest_digiGold_augmontHeadingText} 
    Verify Element And Text  ${KU_W_dg_augmontDesc}  ${e_invest_digiGold_augmontDescText} 
    Verify Page Contains Link  ${KU_W_dg_augmontLink}  ${e_invest_digiGold_augmontLinkText}
    Wait For Element Visibility  ${KU_W_dg_augmontLink}
    Click Element  ${KU_W_dg_augmontLink}
    Switch To Window
    Reload Page
  
    # Buy-Sell-SIP-Track Table Content
    # Buy 
    Sleep  2s
    Wait For Element Visibility  ${KU_W_dg_buyTab}
    Verify Element And Text  ${KU_W_dg_buyTab}  ${e_invest_buyGoldTitleText}
    Verify Element And Text  ${KU_W_dg_liveGoldRateTitle}  ${e_invest_goldRateTitleText}
    Verify Live Gold Buy And Sell Rate Presence  ${KU_W_goldRateRefreshIcon} 
    Verify Purity And Partner Title Presence  ${KU_W_dg_buyGoldPurityTitle}  ${KU_W_buyGoldPurityAmt}  ${KU_W_dg_buyGoldPartnerTitle}  ${KU_W_dg_buyGoldPartnerName}
    Verify Element And Text  ${KU_W_dg_enterAmtTitle}  ${e_invest_enterAmtTitleText} 
    Wait For Element Visibility  ${KU_W_dg_enterAmtTitle}
    Click Element  ${KU_W_dg_enterAmtTitle}
    Click Element  ${KU_W_amount} 
    Scroll Untill View  ${KU_W_dg_aboutUSLink}
    Verify Page Contains Element  ${KU_W_dg_goldValue}
    Verify T&C And Coming Soon Title Presence
    Verify Buy Now Button  
    Sleep  3s
    Scroll Page To Location  0  -500
    Wait For Element Visibility  ${KU_W_dg_enterGramsRadioBtn}
    Click Element  ${KU_W_dg_enterGramsRadioBtn}
    Verify Element And Text  ${KU_W_dg_enterGramsTitle}  ${e_invest_enterGramsTitleText}
    Wait For Element Visibility  ${KU_W_enterGram}
    Sleep  3s
    Click Element  ${KU_W_enterGram}
    Verify Page Contains Element  ${KU_W_dg_goldValue}
    Scroll Untill View  ${KU_W_dg_aboutUSLink}
    Verify T&C And Coming Soon Title Presence
    Verify Buy Now Button
    Scroll Page To Location  0  -500

    # Sell
    Sleep  5s
    Wait For Element Visibility  ${KU_W_dg_sellGoldTab}
    Click Element  ${KU_W_dg_sellGoldTab}
    Verify Element And Text  ${KU_W_dg_sellGoldTab}  ${e_invest_sellGoldTitleText}
    Verify Element And Text  ${KU_W_dg_liveSellRateTitle}  ${e_invest_liveSellRateTitleText}
    Verify Live Gold Buy And Sell Rate Presence  ${KU_W_dg_sellGoldRefreshIcon} 
    Verify Purity And Partner Title Presence  ${KU_W_dg_sellGoldPurityTitle}  ${KU_W_dg_sellGoldPurityAmt}  ${KU_W_dg_sellGoldPartnerTitle}  ${KU_W_dg_sellGoldPartnerName}
    Scroll Untill View  ${KU_W_dg_aboutUSLink}
    Sleep  1s
    Verify Element And Text  ${KU_W_dg_loginIntoSellGoldTitle}  ${e_invest_logInSellgoldTitleText}
    Verify Login And SignUp Validation
      
    # SIP
    Sleep  5s
    Wait For Element Visibility  ${KU_W_dg_SIPTab}
    Click Element  ${KU_W_dg_SIPTab}
    Verify Element And Text  ${KU_W_dg_SIP_Track_Heading}  ${e_invest_SIPTitleText}
    Verify Login Title For SIP And Track  ${e_invest_SIP_loginTitleText}  
    Scroll Page To Location  0  -500

    # Track
    Sleep  2s
    Wait For Element Visibility  ${KU_W_dg_trackTab}
    Click Element  ${KU_W_dg_trackTab}
    Verify Element And Text  ${KU_W_dg_SIP_Track_Heading}  ${e_invest_trackTitleText} 
    Verify Login Title For SIP And Track  ${e_invest_track_loginTitleText}  

    # Digital Gold is better than Mutual Funds
    Scroll Untill View  ${KU_W_digitalGoldIsBetterTitle}
    Verify Element And Text  ${KU_W_digitalGoldIsBetterTitle}  ${e_invest_digiGoldIsBetterTitleText}
    Verify Element And Text  ${KU_W_digitalGoldIsBetterDesc}  ${e_invest_digiGoldIsBetterDescText}
    Verify Page Contains Link  ${KU_W_dg_learnMoreLink}  ${e_invest_learnMoreLinkText} 
    Sleep  1s
    Scroll Untill View  ${KU_W_dg_learnMoreLink}
    Wait For Element Visibility  ${KU_W_dg_learnMoreLink}
    Click Element  ${KU_W_dg_learnMoreLink}
    Switch To Window Verify Title And Close  ${e_invest_digitalGoldScreenTitle}
    Reload Page  
    # Already Own Gold ? Track it ?
    Scroll Untill View  ${KU_W_addGoldHeading}
    Verify Element And Text  ${KU_W_addGoldHeading}  ${e_invest_addGoldTitleText}
    Verify Element And Text  ${KU_W_addGoldDesc}  ${e_invest_addGoldDescText}
    Verify Element And Text  ${KU_W_dg_addGoldBtn}  ${e_invest_addGoldBtnText} 
    Wait For Element Visibility  ${KU_W_dg_addGoldBtn}
    Click Button  ${KU_W_dg_addGoldBtn}
    Verify Login Page  
    #  Questions? We are happy to help
    Scroll Untill View  ${KU_W_dg_faqHeading}
    Verify Element And Text  ${KU_W_dg_faqHeading}  ${e_invest_faqTitleText} 
    Scroll Untill View  ${KU_W_dg_aboutUSLink}
    Verify Element And Text  ${KU_W_faqBtn}  ${e_invest_faqBtnText}
    Verify Question On FAQBOT Icon  ${KU_W_faqBtn}  ${e_invest_faqbotQA1}
   
Verify Login And SignUp Validation
    Wait For Element Visibility  ${KU_W_dg_gold_login}
    Click Element  ${KU_W_dg_gold_login}
    Verify Login Page
    Sleep  2s
    Verify Element And Text  ${KU_W_dg_gold_noAcntMsg}  ${e_invest_noAcntText}
    Wait For Element Visibility  ${KU_W_dg_gold_signup}
    Sleep  1s
    Click Element  ${KU_W_dg_gold_signup}
    Verify Signup Page
    Go Back

Verify Live Gold Buy And Sell Rate Presence 
    [Arguments]  ${refreshIcon}
    Verify Page Contains Element  ${KU_W_ratePerGm}  
    Click Element  ${refreshIcon} 
    Wait For Element Visibility  ${KU_W_dg_toastHeader}
    Verify Page Contains Element  ${KU_W_dg_toastHeader}

Verify Purity And Partner Title Presence 
    [Arguments]  ${purityTitle}  ${purityAmt}  ${partnerTitle}  ${partnerName}
    Verify Element And Text  ${partnerName}  ${e_invest_partnerNameText} 
    Verify Element And Text  ${purityTitle}  ${e_invest_purityTitleText} 
    Verify Element And Text  ${purityAmt}  ${e_invest_purityAmtText}
    Verify Element And Text  ${partnerTitle}  ${e_invest_partnerTitleText}

Verify T&C And Coming Soon Title Presence
    Wait For Element Visibility  ${KU_W_dg_T&C}
    Verify Element And Text  ${KU_W_dg_T&C}  ${e_invest_digiGold_T&CText}
    Sleep  1s
    Verify Element And Text  ${KU_W_dg_comingSoonTitle}  ${e_invest_comingSoonText}

Verify Buy Now Button
    Verify Element And Text  ${KU_W_buyNowBtn}  ${e_invest_buyNowBtnText}
    Wait For Element Visibility  ${KU_W_buyNowBtn}
    Click Element  ${KU_W_buyNowBtn}
    Verify Login Page

Verify Login Title For SIP And Track  
    [Arguments]  ${logintext}
    Verify Element And Text  ${KU_W_dg_loginTitle}  ${logintext}
    Sleep  1s
    Scroll Untill View  ${KU_W_dg_aboutUSLink}
    Verify Login And SignUp Validation
