*** Keywords ***

Verify PostLogin Dashboard Widgets Navigation
    Log To Console  Dashboard Widgets
    Wait For Element Visibility  ${KU_W_ca_dashboardHeader}
    Verify Page Contains Element  ${KU_W_ca_dashboardHeader}
    Verify Page Contains Element  ${KU_W_dashboard_pageSubTitle} 
    Verify Page Contains Element  ${KU_W_KYC_startBtn}
    Verify Explore Section
    Verify Add Acount And Track Investment Section
    Verify Add SIP Goals And SuperCharge Portfolio
    Verify News And Advice Section

Verify Add Acount And Track Investment Section
    # Add Account Section
    Verify Page Contains Element  ${KU_W_dashboard_addAccTitle}
    Verify Page Contains Element  ${KU_W_dashboard_addAccSubTitle} 
    Wait And Click  ${KU_W_dashboard_addAccTitle}
    Verify Element And Text  ${KU_W_dashboard_addAccNavigatedTitle}  ${e_dashboard_addAccNavigatedTitle}
    Go Back
    # Track External Investment
    Verify Element And Text  ${KU_W_dashboard_trackInvestTitle}  ${e_dashboard_trackInvestTitle} 
    Verify Page Contains Element  ${KU_W_dashboard_trackInvestSubTitle}
    Wait And Click  ${KU_W_dashboard_trackInvestTitle}
    Verify Track Investment Popup

Verify Explore Section
    Verify Page Contains Element  ${KU_W_dashboard_exploreTitle}
    # MF 
    Verify Investments Navigation  ${KU_W_mutualFund}  ${KU_W_dashboard_allFunds}
    # FD
    Verify Investments Navigation  ${KU_W_FD_FDIcon}  ${KU_W_FD_allFDTab}
    # Digi Gold
    Verify Investments Navigation  ${KU_W_digitalGold}  ${KU_W_dg_screenTitle}
    # Stocks
    Verify Investments Navigation  ${KU_W_stocks}  ${KU_W_dashboard_allStocks}
    # US Stocks
    Verify Investments Navigation  ${KU_W_USStocks}  ${KU_W_dashboard_allUSStocks}
    # SaveSmart
    Verify Investments Navigation  ${KU_W_saveSmart}  ${KU_W_ss_screenTitle}
    # Crypto
    Verify Investments Navigation  ${KU_W_crypto_titlefromExplore}  ${KU_W_crypto_tabName}
    # Insure
    Verify Investments Navigation  ${KU_W_dashboard_insure}  ${KU_W_insureHeaderTitle}
    # Remit
    Verify Investments Navigation  ${KU_W_dashboard_remit}  ${KU_W_remit_screenTitle}
    
Verify Investments Navigation
    [Arguments]  ${link}  ${screenTitle}
    Wait And Click  ${link}
    Wait For Element Visibility  ${screenTitle}
    Verify Page Contains Element  ${screenTitle}
    Sleep  2s
    Go Back
    
Verify Add SIP Goals And SuperCharge Portfolio
    # Add SIPs
    Scroll Untill View  ${KU_W_dashboard_addSIPsTitle}
    Verify Page Contains Element  ${KU_W_dashboard_addSIPsTitle}
    Verify Page Contains Element  ${KU_W_dashboard_addSIPSubTitle} 
    Verify Page Contains Element  ${KU_W_dashboard_addSIPMFImg}
    Verify Page Contains Element  ${KU_W_dashboard_addSIPSSImg} 
    Verify Page Contains Element  ${KU_W_dashboard_addSIPDGImg} 
    # Mutual Fund
    Wait And Click  ${KU_W_dashboard_addSIPMFIcon}
    Verify Page Contains Element  ${KU_W_dashboard_allFunds}
    Go Back
    # SaveSmart
    Wait And Click  ${KU_W_dashboard_addSIPSSIcon}
    Verify Page Contains Element  ${KU_W_dashboard_incompleteAccSetup}
    Wait And Click  ${KU_W_dashboard_doItLaterBtn} 
    Verify Page Contains Element  ${KU_W_postlogin_portfolio} 
    Wait For Element Visibility  ${KU_W_postlogin_homeTab}
    Wait And Click  ${KU_W_postlogin_homeTab}
    # Digi Gold
    Wait And Click  ${KU_W_digitalGold}
    Verify Element And Text  ${KU_W_dg_screenTitle}  ${e_invest_digiGold_screenText}
    Go Back
    # Add Goals
    Verify Page Contains Element  ${KU_W_dashboard_addGoalsTitle} 
    Verify Page Contains Element  ${KU_W_dashboard_addGoalsSubTitle}
    Verify Page Contains Element  ${KU_W_dashboard_ownHomeImg} 
    Verify Page Contains Element  ${KU_W_dashboard_saveTaxImg}
    Verify Page Contains Element  ${KU_W_dashboard_moreImg}
    Wait And Click  ${KU_W_dashboard_ownHomeIcon}
    Wait For Element Visibility  ${KU_W_dashboard_ownHomeScreen}
    Verify Page Contains Element  ${KU_W_dashboard_ownHomeScreen} 
    Go Back
    Wait And Click  ${KU_W_dashboard_savetaxIcon}
    Wait For Element Visibility  ${KU_W_dashboard_savetaxScreen}
    Verify Page Contains Element  ${KU_W_dashboard_savetaxScreen}
    Go Back
    Wait And Click  ${KU_W_dashboard_moreIcon}
    Wait For Element Visibility  ${KU_W_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenTitle}  ${e_feature_sg_screenTitle}
    Go Back
    # SuperCharge Portfolio
    Verify Page Contains Element  ${KU_W_dashboard_superChargeTitle}
    Verify Page Contains Element  ${KU_W_dashboard_superChargeSubTitle}
    Verify Page Contains Element  ${KU_W_dashboard_taxHarvestingImg}
    Wait And Click  ${KU_W_dashboard_taxHarvestingIcon}
    Wait For Element Visibility  ${KU_W_feature_th_screenTitle}   
    Verify Element And Text  ${KU_W_feature_th_screenTitle}  ${e_feature_th_TitleText}
    Go Back
    Verify Page Contains Element  ${KU_W_dashboard_tardeSmartImg}
    Wait And Click  ${KU_W_dashboard_tradeSmartIcon} 
    Wait For Element Visibility  ${KU_W_feature_ts_title} 
    Verify Element And Text  ${KU_W_feature_ts_title}  ${e_feature_ts_titleText}
    Go Back

Verify News And Advice Section
    Scroll Untill View  ${KU_W_dashboard_newsAndAdviceTitle}
    Wait For Element Visibility  ${KU_W_dashboard_newsAndAdviceTitle}
    Verify Element And Text  ${KU_W_dashboard_newsAndAdviceTitle}  ${e_dashboard_newsAndAdviceTitle} 
    Wait And Click  ${KU_W_dashboard_viewAllLink}
    Switch To Window Verify Title And Close  ${e_dashboard_newsScreenTitle}

Verify Track Investment Popup
    Wait For Element Visibility  ${KU_W_dashboard_popupTitle}
    Verify Page Contains Element  ${KU_W_dashboard_popupTitle}
    Verify Page Contains Element  ${KU_W_dashboard_trackInvest_MF}
    Verify Page Contains Element  ${KU_W_dashboard_trackInvest_MFDesc}
    Verify Page Contains Element  ${KU_W_dashboard_trackInvest_stocks}
    Verify Page Contains Element  ${KU_W_dashboard_trackInvest_stocksDesc} 
    Verify Page Contains Element  ${KU_W_dashboard_trackInvest_USStocks}
    Verify Page Contains Element  ${KU_W_dashboard_trackInvest_USStocksDesc}
    Verify Page Contains Element  ${KU_W_dashboard_trackInvest_digiGold}
    Verify Page Contains Element  ${KU_W_dashboard_trackInvest_digiGoldDesc}
    Verify Page Contains Element  ${KU_W_dashboard_trackInvest_EPF}
    Verify Page Contains Element  ${KU_W_dashboard_trackInvest_EPFDesc}
    Wait And Click  ${KU_W_dashboard_popupClose} 