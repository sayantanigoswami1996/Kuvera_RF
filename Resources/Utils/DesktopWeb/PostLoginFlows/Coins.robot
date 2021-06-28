*** Keywords ***

Verify PostLogin Coins Menu Navigation
    Log To Console  Coins
    Wait And Click  ${KU_W_ca_caretDropdown}
    Wait And Click  ${KU_W_coins_coinsMenu}
    Verify Page Contains Element  ${KU_W_coins_makeInvestmentRegarding}
    Verify Element And Text  ${KU_W_coins_totalCoins}  ${e_coins_totalCoins}
    Verify Coins Transactions Tab
    Verify Coins Tab



Verify Coins Transactions Tab
    Wait And Click  ${KU_W_coins_transactionsTab} 
    Verify Page Contains Element  ${KU_W_coins_transactionsTitle} 
    Verify Page Contains Element  ${KU_W_coins_youHave0Coins}
    Verify Page Contains Element  ${KU_W_coins_date}
    Verify Page Contains Element  ${KU_W_coins_comments}
    Verify Page Contains Element  ${KU_W_coins_credit}
    Verify Page Contains Element  ${KU_W_coins_debit}
    Verify Page Contains Element  ${KU_W_coins_noCoinsTrans}

Verify Coins Tab
    Wait And Click  ${KU_W_coins_coinsTab}
    Verify Page Contains Element  ${KU_W_coins_whatAreCoins}
    Verify Page Contains Element  ${KU_W_coins_coinsDef}
    Verify Page Contains Element  ${KU_W_coins_howToGetCoins}
    # Refer Friend
    Verify Page Contains Element  ${KU_W_coins_referFriendCoins}
    Wait And Click  ${KU_W_coins_referFriend} 
    Wait For Element Visibility  ${KU_W_IF_inviteFriendsSubTitle1}
    Verify Page Contains Element  ${KU_W_IF_inviteFriendsSubTitle1}
    Go Back
    # Add a Goal 
    Verify Page Contains Element  ${KU_W_coins_addAGoalCoins}
    Wait And Click  ${KU_W_coins_addAGoal} 
    Wait For Element Visibility  ${KU_W_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenTitle}  ${e_feature_sg_screenTitle}
    Go Back
    # Add a SIP
    Verify Page Contains Element  ${KU_W_coins_addASIPCoins}
    Wait And Click  ${KU_W_coins_addASIP} 
    Wait For Element Visibility  ${KU_W_invest_mf_sortByLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_sortByLabel}
    Go Back
    # Import MF
    Verify Page Contains Element  ${KU_W_coins_importMFCoins}
    Wait And Click  ${KU_W_coins_importMF} 
    Wait For Element Visibility  ${KU_W_coins_importMFCard}
    Verify Page Contains Element  ${KU_W_coins_importMFCard}
    Go Back
    # Import Stocks
    Verify Page Contains Element  ${KU_W_coins_importStocksCoins}
    Wait And Click  ${KU_W_coins_importStocks} 
    Wait For Element Visibility  ${KU_W_coins_importStocksCard}
    Verify Page Contains Element  ${KU_W_coins_importStocksCard}
    Go Back
    # Track Gold
    Verify Page Contains Element  ${KU_W_coins_trackGoldCoins}
    Wait And Click  ${KU_W_coins_trackGold} 
    Wait For Element Visibility  ${KU_W_dg_screenTitle}
    Verify Element And Text  ${KU_W_dg_screenTitle}  ${e_invest_digiGold_screenText} 
    Go Back
    # Add EPF
    Verify Page Contains Element  ${KU_W_coins_addEPFCoins}
    Wait And Click  ${KU_W_coins_addEPF}
    Wait For Element Visibility  ${KU_W_portfolio_EPF_importAndTrackTitle}
    Verify Page Contains Element  ${KU_W_portfolio_EPF_importAndTrackTitle}
    Go Back
    Scroll Untill View  ${KU_W_coins_coinsLimitDesc}
    Wait For Element Visibility  ${KU_W_coins_coinsLimitDesc}
    Verify Element And Text  ${KU_W_coins_coinsLimitDesc}  ${e_coins_coinLimitDesc}
    Scroll Untill View  ${KU_W_coins_howToUseCoins}
    Verify Page Contains Element  ${KU_W_coins_howToUseCoins}
    Verify Page Contains Element  ${KU_W_coins_redeemCoins} 
    # Tradesmart
    Scroll Untill View  ${KU_W_coins_tradesmartCoins}
    Verify Page Contains Element  ${KU_W_coins_tradesmartCoins}
    Wait And Click  ${KU_W_coins_tradesmart}
    Wait For Element Visibility  ${KU_W_feature_ts_title} 
    Verify Element And Text  ${KU_W_feature_ts_title}  ${e_feature_ts_titleText}
    Go Back
    # Family Account
    Verify Page Contains Element  ${KU_W_coins_faCoins}
    Wait And Click  ${KU_W_coins_fa}
    Wait For Element Visibility  ${KU_W_feature_fa_screenTitle}
    Verify Element And Text  ${KU_W_feature_fa_screenTitle}  ${e_feature_fa_screenTitle}
    Go Back
    # Tax Harvesting
    Verify Page Contains Element  ${KU_W_coins_thCoins}
    Wait And Click  ${KU_W_coins_th}
    Wait For Element Visibility  ${KU_W_feature_th_screenTitle}   
    Verify Element And Text  ${KU_W_feature_th_screenTitle}  ${e_feature_th_TitleText} 
    Go Back