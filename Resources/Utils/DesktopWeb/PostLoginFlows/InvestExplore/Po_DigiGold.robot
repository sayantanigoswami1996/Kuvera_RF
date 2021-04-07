*** Keywords ***

Verify PostLogin Digi Gold Menu Navigation
    Log To Console  Digital Gold - Explore
    Navigate To Invest Page And Verify Explore Options  ${KU_W_digitalGold}  ${e_invest_digGold}
    Verify Content Of Left Section
    # Buy-Sell-SIP-Track Table Content 
    Verify Buying SIP Postlogin
    Verify Sell Section Postlogin
    Verify Buy Section
    Wait For Element Visibility  ${KU_W_dg_enterGramLabel}
    Click Element  ${KU_W_dg_enterGramLabel}
    Sleep  2s
    Input Text  ${KU_W_dg_enterGram_AmtField}  ${e_invest_enterGramValue}
    Wait For Element Visibility  ${KU_W_dg_minGoldInGram}
    Verify Page Contains Element  ${KU_W_dg_minGoldInGram}
    Wait For Element Visibility  ${KU_W_dg_goldValue}
    Verify Page Contains Element  ${KU_W_dg_goldValue}
    # Application Issue
    # Wait And Click  ${KU_W_dg_enterAmtTitle}
    # Input Text  ${KU_W_dg_enterGram_AmtField}  ${e_invest_enterAmountValue}
    # Wait And Click  ${KU_W_buyNowBtn}
    # Wait And Click  ${KU_W_postlogin_netBankingOption}
    # Wait And Click  ${KU_W_postlogin_proceedToPay}
    # Verify Payment With Net Banking
    # Verify Page Contains Element  ${KU_W_dg_congratsMsg}
    # Verify Page Contains Element  ${KU_W_dg_buyGoldSuccessMsg}
    # Wait And Click  ${KU_W_postlogin_continueBtn}
    # Verify Element And Text  ${KU_W_postlogin_portfolio}  ${e_postlogin_portfolioTitle}

Verify Sell Section Postlogin
    Wait For Element Visibility  ${KU_W_dg_sellGoldTab}
    Click Element  ${KU_W_dg_sellGoldTab}
    Verify Element And Text  ${KU_W_dg_sellGoldTab}  ${e_invest_sellGoldTitleText}
    Verify Element And Text  ${KU_W_dg_liveSellRateTitle}  ${e_invest_liveSellRateTitleText}
    Verify Live Gold Buy And Sell Rate Presence  ${KU_W_dg_sellGoldRefreshIcon} 
    Verify Purity And Partner Title Presence  ${KU_W_dg_sellGoldPurityTitle}  ${KU_W_dg_sellGoldPurityAmt}  ${KU_W_dg_sellGoldPartnerTitle}  ${KU_W_dg_sellGoldPartnerName}
    Scroll Untill View  ${KU_W_dg_aboutUSLink}
    Sleep  1s
    Verify Element And Text  ${KU_W_dg_loginTitle}  ${e_invest_buyGoldMsg}
    Wait And Click  ${KU_W_dg_buyGoldBtn}   
    Verify Element And Text  ${KU_W_dg_enterAmtTitle}  ${e_invest_enterAmtTitleText}  

Verify Sell Gold Post Buy
    Wait For Element Visibility  ${KU_W_dg_sellGoldTab}
    Click Element  ${KU_W_dg_sellGoldTab}
    Verify Element And Text  ${KU_W_dg_sellGoldTab}  ${e_invest_sellGoldTitleText}
    Verify Element And Text  ${KU_W_dg_liveSellRateTitle}  ${e_invest_liveSellRateTitleText}
    Verify Live Gold Buy And Sell Rate Presence  ${KU_W_dg_sellGoldRefreshIcon} 
    Verify Page Contains Element  ${KU_W_dg_availableToSell}
    Verify Element And Text  ${KU_W_dg_sellWeight}  ${e_invest_sellWeight}
    Wait And Click  ${KU_W_dg_infoIcon}
    Verify Page Contains Element  ${KU_W_dg_ownedGold}
    Click Element  ${KU_W_amount}
    Verify Disabled Element  ${KU_W_dg_disabledSellNowBtn}
    Wait For Element Visibility  ${KU_W_dg_enterGramLabel}
    Click Element  ${KU_W_dg_enterGramLabel}
    Click Element  ${KU_W_enterGram}
    Verify Disabled Element  ${KU_W_dg_disabledSellNowBtn}

Verify Buying SIP Postlogin
    Wait For Element Visibility  ${KU_W_dg_SIPTab}
    Click Element  ${KU_W_dg_SIPTab}
    Verify Page Contains Element  ${KU_W_dg_enterSIPAmt}
    Input Text  ${KU_W_dg_enterGram_AmtField}  ${e_invest_SIPValue}
    Verify Page Contains Element  ${KU_W_dg_minSIP}
    Wait And Click  ${KU_W_amount}
    Wait And Click  ${KU_W_dg_SIPDropdown}
    Wait And Click  ${KU_W_dg_SIPDate}
    Verify Select Bank Account Page
    Verify Order Summary Page

Verify Select Bank Account Page
    Verify Page Contains Element  ${KU_W_dg_nextInstallment}
    Wait And Click  ${KU_W_dg_startSIPBtn}
    Verify Element And Text  ${KU_W_dg_selectBankAcc}  ${e_invest_selectBankAcc}
    Verify Element And Text  ${KU_W_dg_subText}  ${e_invest_selectBankDesc}
    Wait And Click  ${KU_W_dg_bankAccForSIP} 
    Wait And Click  ${KU_W_postlogin_continueBtn}

Verify Order Summary Page
    Verify Page Contains Element  ${KU_W_dg_orderSummaryPage}
    Verify Page Contains Element  ${KU_W_dg_confirmGoldSIPDesc}
    Verify Page Contains Element  ${KU_W_dg_goldSIPOrderTitle}
    Verify Page Contains Element  ${KU_W_dg_goldSIPRow1}
    Verify Page Contains Element  ${KU_W_dg_goldSIPRow2}
    Verify Page Contains Element  ${KU_W_dg_monthlySIPAmtLabel}
    Verify Page Contains Element  ${KU_W_dg_monthlySIPDateLabel}
    Verify Page Contains Element  ${KU_W_dg_bankAccLabel}
    Verify Element And Text  ${KU_W_dg_bankAccSubDesc}  ${e_invest_bankAccSubDesc}
    Verify Page Contains Element  ${KU_W_dg_selectedBank}
    Wait And Click  ${KU_W_dg_changeBankLink}
    Verify Element And Text  ${KU_W_dg_selectBankAcc}  ${e_invest_selectBankAcc}
    Wait And Click  ${KU_W_dg_bankAccForSIP}
    Wait And Click  ${KU_W_postlogin_continueBtn}
    Wait And Click  ${KU_W_postlogin_confirmBtn}
    Wait And Click  ${KU_W_postlogin_continueBtn}
    Switch To Frame  ${KU_W_postlogin_razorPayFrame}
    Wait And Click  ${KU_W_dg_authenticateLink}
    Wait And Click  ${KU_W_dg_chooseBanAccArrow} 
    Wait And Click  ${KU_W_dg_savingsAcc}
    Wait And Click  ${KU_W_dg_authenticateLink}
    Unselect Frame
    Sleep  5s
    Switch Window  ${e_SPM_title}
    Sleep  2s
    Wait For Element Visibility  ${KU_W_SPM_razorPayTitle}
    Verify Element And Text  ${KU_W_SPM_razorPayTitle}  ${e_SPM_razorPayTitle}
    Wait And Click  ${KU_W_SPM_razorPaySuccessBtn}
    Switch Window  browser=Kuvera
    Verify Page Contains Element  ${KU_W_dg_congratsSubText} 
    Wait And Click  ${KU_W_postlogin_continueBtn}
    Verify Element And Text  ${KU_W_postlogin_portfolio}  ${e_postlogin_portfolioTitle}