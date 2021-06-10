*** Keywords ***

Verify PostLogin Gold Portfolio Menu Navigation With KYC
    Log To Console  Gold Portfolio Navigation With KYC
    Navigate To PortFolio Tab And Verify Investment Title  ${KU_W_portfolio_dg_title}  ${e_portfolio_dg_title}  ${KU_W_portfolio_dg_subtitle}  ${e_portfolio_dg_subTitle}
    Wait And Click  ${KU_W_portfolio_dg_title}  
    Verify Do You Want Popup
    Verify Gold SIP Page
    Go Back
    Verify Add Own Gold Page
    Go Back
    Verify Buy Gold Page
    Sleep  2s
    Verify Add External Gold From Import Portfolio
    
Verify PostLogin Gold Portfolio Menu Navigation Without KYC
    Log To Console  Gold Portfolio Navigation Without KYC
    Navigate To PortFolio Tab And Verify Investment Title  ${KU_W_portfolio_dg_title}  ${e_portfolio_dg_title}  ${KU_W_portfolio_dg_subtitle}  ${e_portfolio_dg_subTitle}
    Wait And Click  ${KU_W_portfolio_dg_title}  
    Verify Do You Want Popup
    Verify Gold SIP Page
    Verify Page Contains Element  ${KU_W_portfolio_dg_PANBox}
    Go Back
    Verify Add Own Gold Page
    Go Back
    Wait And Click  ${KU_W_portfolio_dg_buyGoldTitle}
    Wait And Click  ${KU_W_portfolio_dg_buyAmt}
    Sleep  1s
    Wait And Click  ${KU_W_portfolio_dg_buyNow}
    Verify Page Contains Element  ${KU_W_portfolio_dg_PANBox}
    Wait And Click  ${KU_W_portfolio_dg_taxInvoiceClose}
    Wait And Click  ${KU_W_postlogin_yesQuit1}
    Verify Add External Gold From Import Portfolio  
      
Verify Do You Want Popup
    # Do You Want To Popup Validation
    Verify Page Contains Element  ${KU_W_portfolio_doYouWantTo}
    Verify Page Contains Element  ${KU_W_portfolio_dg_investGoldTitle} 
    Verify Element And Text  ${KU_W_portfolio_dg_investGoldDesc}  ${e_portfolio_dg_investGoldDesc}
    Verify Page Contains Element  ${KU_W_portfolio_dg_buyGoldTitle}
    Verify Element And Text  ${KU_W_portfolio_dg_buyGoldDesc}  ${e_portfolio_dg_buyGoldDesc}
    Verify Page Contains Element  ${KU_W_portfolio_dg_addOwnGoldTitle}
    Verify Element And Text  ${KU_W_portfolio_dg_addOwnGoldDesc}  ${e_portfolio_dg_addOwnGoldDesc}
    Verify Element And Text  ${KU_W_portfolio_dg_allBoughtGold}  ${e_portfolio_dg_allBoughtGold}
    Verify Element And Text  ${KU_W_portfolio_dg_allBoughtGoldList1}  ${e_portfolio_dg_allBoughtGoldList1}
    Verify Element And Text  ${KU_W_portfolio_dg_allBoughtGoldList2}  ${e_portfolio_dg_allBoughtGoldList2}
    Verify Element And Text  ${KU_W_portfolio_dg_allBoughtGoldList3}  ${e_portfolio_dg_allBoughtGoldList3}
    
Verify Gold SIP Page
    Wait And Click  ${KU_W_portfolio_dg_investGoldTitle} 
    Wait For Element Visibility  ${KU_W_portfolio_dg_buy_goldSIPTitle}
    Verify Element And Text  ${KU_W_portfolio_dg_buy_goldSIPTitle}  ${e_portfolio_dg_goldSIP}
    Verify Page Contains Element  ${KU_W_portfolio_dg_buy_goldSIPList}
    Verify Page Contains Element  ${KU_W_dg_enterSIPAmt}
    Verify Page Contains Element  ${KU_W_portfolio_dg_SIPDate}
    Verify Page Contains Element  ${KU_W_portfolio_dg_SIPNextDate}
    Verify Page Contains Element  ${KU_W_portfolio_dg_SIPDateBox}
    Wait And Click  ${KU_W_portfolio_dg_buy_SIPLearnMore}
    Wait For Element Visibility  ${KU_W_dg_screenTitle}
    Verify Element And Text  ${KU_W_dg_screenTitle}  ${e_invest_digiGold_screenText}
    Go Back
    Wait And Click  ${KU_W_portfolio_dg_SIPAmt}
    Wait And Click  ${KU_W_postlogin_continue}

Verify Buy Gold Page
    Wait And Click  ${KU_W_portfolio_dg_buyGoldTitle}
    Wait For Element Visibility  ${KU_W_portfolio_dg_buy_goldSIPTitle}
    Verify Element And Text  ${KU_W_portfolio_dg_buy_goldSIPTitle}  ${e_portfolio_dg_buyGold}
    Verify Page Contains Element  ${KU_W_portfolio_dg_buy_goldSIPList}
    Verify Element And Text  ${KU_W_dg_liveGoldRateTitle}  ${e_invest_goldRateTitleText}
    Wait And Click  ${KU_W_portfolio_dg_buy_SIPLearnMore}
    Wait For Element Visibility  ${KU_W_dg_screenTitle}
    Verify Element And Text  ${KU_W_dg_screenTitle}  ${e_invest_digiGold_screenText}
    Go Back
    Reload Page
    Wait And Click  ${KU_W_portfolio_dg_buyAmt}
    Sleep  1s
    Wait And Click  ${KU_W_portfolio_dg_buyNow}
    Verify Page Contains Element  ${KU_W_postlogin_paymentPageTitle}
    Wait And Click  ${KU_W_dg_paymentCrossIcon}
    Wait And Click  ${KU_W_postlogin_yesQuit1}
    Sleep  2s
    Scroll Untill View  ${KU_W_portfolio_dg_subtitle}
    Wait And Click  ${KU_W_portfolio_dg_title}
    Wait And Click  ${KU_W_portfolio_dg_buyGoldTitle}
    Wait And Click  ${KU_W_dg_enterGramLabel} 
    Wait And Click  ${KU_W_portfolio_dg_autofilledGramVal} 
    Sleep  1s
    Wait And Click  ${KU_W_portfolio_dg_buyNow}
    Verify Page Contains Element  ${KU_W_postlogin_paymentPageTitle}
    Wait And Click  ${KU_W_dg_paymentCrossIcon}
    Wait And Click  ${KU_W_postlogin_yesQuit1}

Verify Add Own Gold Page
    Wait And Click  ${KU_W_portfolio_dg_addOwnGoldTitle}
    Verify Page Contains Element  ${KU_W_portfolio_dg_externalGoldTitle}
    Verify Page Contains Element  ${KU_W_dg_gm_tolasBox}
    Verify Page Contains Element  ${KU_W_dg_slider}
    
Add Gold
    Move Slider  ${KU_W_dg_slider}
    Wait And Click  ${KU_W_portfolio_dg_addGoldBtn}

Verify Add External Gold From Import Portfolio
    Wait And Click  ${KU_W_postlogin_importPortfolioTab}
    Wait And Click  ${KU_W_dashboard_trackInvest_digiGold}
    Add Gold
    Verify Element And Text  ${KU_W_toastMssg}  ${e_invest_trackToastMsg}