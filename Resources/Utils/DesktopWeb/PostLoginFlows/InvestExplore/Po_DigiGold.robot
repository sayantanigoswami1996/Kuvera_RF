*** Keywords ***

Verify PostLogin Digi Gold Track And SIP Menu Navigation 
    Log To Console  Digital Gold - Explore
    Navigate To Invest Page And Verify Explore Options  ${KU_W_digitalGold}  ${e_invest_digGold}
    Verify Content Of Left Section
    # Digital Gold is better than Mutual Funds
    Verify Digital Gold Is Better Than MF Section
    # Buy-Sell-SIP-Track Table Content 
    # TRACK
    Verify Track Section Postlogin
    # SIP
    Verify Buying SIP Postlogin
    Verify Adding Five Bank Account And Quit Of Buying SIP 
    # SELL
    Verify Sell Section Postlogin

Verify PostLogin Digi Gold Buy And Sell Menu Navigation 
    Log To Console  Digital Gold - Buy and Sell
    Navigate To Invest Page And Verify Explore Options  ${KU_W_digitalGold}  ${e_invest_digGold}
    # BUY
    Verify Buying Of Gold
    Verify Sell Gold Post Buy
    # BUY Gold With Moolya Account
    Logout From App Post Signup
    Login  ${e_postlogin_emailID}  ${e_postlogin_pwd}
    Sleep  7s
    ${isElementVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_postlogin_mandate_doItLaterBtn}
    IF  ${isElementVisible}  
        Wait And Click  ${KU_W_postlogin_mandate_doItLaterBtn}
    ELSE
        Log To Console  Continue With The Flow
    END
    ${isPortfolioVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_postlogin_rajaGPortfolio}
    IF  ${isPortfolioVisible}  
        Log To Console  Continue With Rajagopal Profile
    ELSE
        Wait And Click  ${KU_W_ca_caretDropdown}
        Wait And Click  ${KU_W_postlogin_rajaGPortfolio}
        Sleep  5s
        Wait And Click  ${KU_W_postlogin_mandate_doItLaterBtn}
    END
    Navigate To Invest Page And Verify Explore Options  ${KU_W_digitalGold}  ${e_invest_digGold}
    Verify Buy Section
    Wait And Click  ${KU_W_dg_enterAmtLabel}
    Input Text  ${KU_W_dg_enterGram_AmtField}  ${e_invest_enterAmountValue}
    Wait And Click  ${KU_W_buyNowBtn}
    Wait And Click  ${KU_W_postlogin_netBankingOption}
    Wait And Click  ${KU_W_postlogin_proceedToPay}
    Sleep  2s
    Verify Transaction With Moolya Account
    # Sell Gold With Moolya Account
    Verify Sell Gold 7 Days After Purchased
    
    
Verify Sell Section Postlogin
    Navigate To Invest Page And Verify Explore Options  ${KU_W_digitalGold}  ${e_invest_digGold}
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
    Verify Disabled Element  ${KU_W_dg_disabledSellNowBtn}
    Wait For Element Visibility  ${KU_W_dg_enterGramLabel}
    Click Element  ${KU_W_dg_enterGramLabel}
    Click Element  ${KU_W_dg_sell_gramVal}
    Verify Disabled Element  ${KU_W_dg_disabledSellNowBtn}

Verify Sell Gold 7 Days After Purchased
    Navigate To Invest Page And Verify Explore Options  ${KU_W_digitalGold}  ${e_invest_digGold}
    Wait And Click  ${KU_W_dg_sellGoldTab}
    Verify Page Contains Element  ${KU_W_dg_availableToSell}
    Verify Page Contains Element  ${KU_W_dg_sellWeight}
    Wait And Click  ${KU_W_dg_sell_enterAmt_Gms}
    Input Text  ${KU_W_dg_sell_enterAmt_Gms}  ${e_invest_sellAmtVal}
    Element Should be Enabled  ${KU_W_dg_sell_sellNowBtn}
    ${gramValue} =  Get Text  ${KU_W_dg_sellWeight}
    Wait And Click  ${KU_W_dg_sell_sellAll}
    Wait For Element Visibility  ${KU_W_dg_sell_enterGm}
    Verify Page Contains Element  ${KU_W_dg_sell_enterGm}
    Element Should be Enabled  ${KU_W_dg_sell_sellNowBtn}
    Clear Text Field  ${KU_W_dg_sell_enterAmt_Gms}
    Wait And Click  ${KU_W_dg_sell_enterAmt}
    Input Text  ${KU_W_dg_sell_enterAmt_Gms}  ${e_invest_sellAmtVal1}
    Wait And Click  ${KU_W_dg_sell_sellNowBtn} 
    Verify Page Contains Element  ${KU_W_dg_orderSummaryPage}
    Verify Page Contains Element  ${KU_W_dg_sell_orderSubText}
    Verify Page Contains Element  ${KU_W_dg_sell_sellOrderDets}
    Verify Page Contains Element  ${KU_W_dg_paymentTimerText}
    Verify Page Contains Element  ${KU_W_dg_sell_quantityOfGold}
    Verify Page Contains Element  ${KU_W_dg_sell_goldReceivable}
    Wait And Click  ${KU_W_dg_sell_modifyLink} 
    Wait And Click  ${KU_W_dg_sell_close}
    Wait And Click  ${KU_W_postlogin_confirmBtn}
    Enter OTP Postlogin
    Verify Page Contains Element  ${KU_W_dg_congratsSubText}
    Wait And Click  ${KU_W_postlogin_continue}
    Verify Element And Text  ${KU_W_postlogin_portfolio}  ${e_postlogin_portfolioTitle}


Verify Buying SIP Postlogin
    Wait And Click  ${KU_W_digitalGold}
    Enter SIP Value 
    Verify Select Bank Account Page
    Verify Order Summary Page

Enter SIP Value 
    Wait For Element Visibility  ${KU_W_dg_SIPTab}
    Click Element  ${KU_W_dg_SIPTab}
    Verify Page Contains Element  ${KU_W_dg_enterSIPAmt}
    Input Text  ${KU_W_dg_enterGram_AmtField}  ${e_invest_SIP_BuyValue}
    Verify Page Contains Element  ${KU_W_dg_minSIP}
    Wait And Click  ${KU_W_amount}
    Wait And Click  ${KU_W_dg_SIPDropdown}
    Wait And Click  ${KU_W_dg_SIPDate}
    
Verify Select Bank Account Page
    Verify Page Contains Element  ${KU_W_dg_nextInstallment}
    Wait And Click  ${KU_W_dg_startSIPBtn}
    Verify Element And Text  ${KU_W_dg_selectBankAcc}  ${e_invest_selectBankAcc}
    Verify Element And Text  ${KU_W_dg_subText}  ${e_invest_selectBankDesc}
    Wait And Click  ${KU_W_dg_bankAccForSIP}
    Add Bank Account
    Wait Scroll And Click Element  ${KU_W_dg_SIP_continueBtn}
    Wait And Click  ${KU_W_dg_chooseHDFCAcc} 
    Wait Scroll And Click Element  ${KU_W_postlogin_continue}

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
    Wait And Click  ${KU_W_dg_SIP_bankAcc2}
    Wait And Click  ${KU_W_postlogin_continue}
    Wait And Click  ${KU_W_postlogin_confirmBtn}
    Wait And Click  ${KU_W_postlogin_continue}
    Switch To Frame  ${KU_W_postlogin_razorPayFrame1}
    Wait Scroll And Click Element  ${KU_W_dg_authenticateLink}
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
    Wait And Click  ${KU_W_postlogin_continue}
    Verify Element And Text  ${KU_W_postlogin_portfolio}  ${e_postlogin_portfolioTitle}

Add Bank Account
    Scroll Untill View  ${KU_W_dg_addBankAcc}
    Wait And Click  ${KU_W_dg_addBankAcc}
    Wait And Click  ${KU_W_dg_IFSC}
    Input Text  ${KU_W_dg_IFSC}  ${e_invest_IFSC}
    Wait And Click  ${KU_W_dg_accNumField}
    ${randomNumber} =  Generate Random Number  10000   99999
    ${completeAccNum} =  Catenate  ${e_invest_bankAccField}${randomNumber}
    Input Text  ${KU_W_dg_accNumField}  ${completeAccNum}
    Wait And Click  ${KU_W_dg_confirmAccNumField}
    Input Text  ${KU_W_dg_confirmAccNumField}  ${completeAccNum}
    Wait And Click  ${KU_W_dg_savingsField} 
    Wait And Click  ${KU_W_postlogin_checkBox}

Verify Adding Five Bank Account And Quit Of Buying SIP
    Navigate To Invest Page And Verify Explore Options  ${KU_W_digitalGold}  ${e_invest_digGold}
    Enter SIP Value
    Wait And Click  ${KU_W_dg_startSIPBtn}
    FOR  ${i}  IN RANGE  1  4
        Add Bank Account
        Wait Scroll And Click Element  ${KU_W_dg_SIP_continueBtn}
        Sleep  2s
    END
    Scroll Untill View  ${KU_W_dg_disabledAddAcc}
    Wait And Click  ${KU_W_dg_chooseHDFCAcc1} 
    Scroll Untill View  ${KU_W_postlogin_continue}
    # Continue To Pay Validation
    Wait Scroll And Click Element  ${KU_W_postlogin_continue}
    Wait And Click  ${KU_W_postlogin_confirmBtn}
    Wait And Click  ${KU_W_postlogin_continue}
    Sleep  5s
    Go Back
    # Switch To Frame  ${KU_W_postlogin_razorPayFrame}
    # Wait And Click  ${KU_W_dg_closeRazorPay}
    # Unselect Frame
    Verify Page Contains Element  ${KU_W_dg_quitTitle}
    Verify Page Contains Element  ${KU_W_dg_QuitDesc}
    Wait And Click  ${KU_W_postlogin_noContinueBtn}
    Verify Page Contains Element  ${KU_W_dg_orderSummaryPage}
    # Quiting Payment Validation
    Wait And Click  ${KU_W_postlogin_confirmBtn}
    Wait And Click  ${KU_W_postlogin_continue}
    Sleep  5s
    Go Back
    # Switch To Frame  ${KU_W_postlogin_razorPayFrame}
    # Wait And Click  ${KU_W_dg_closeRazorPay}
    # Unselect Frame
    Wait And Click  ${KU_W_postlogin_yesQuitBtn}
    Verify Element And Text  ${KU_W_postlogin_portfolio}  ${e_postlogin_portfolioTitle}
    
Verify Track Section Postlogin
    Wait And Click  ${KU_W_dg_trackTab}
    Verify Page Contains Element  ${KU_W_dg_addTrackTitle}
    Verify Page Contains Element  ${KU_W_dg_quantityAddedLabel}
    Verify Page Contains Element  ${KU_W_dg_gm_tolasBox}
    Move Slider  ${KU_W_dg_slider}
    Sleep  10s
    Wait And Click  ${KU_W_dg_updateToTrack}
    Verify Element And Text  ${KU_W_toastMssg}  ${e_invest_trackToastMsg}
    Verify Page Contains Element  ${KU_W_dg_externalGoldTitle}
    # Delete Externally Bought Gold
    Navigate To Invest Page And Verify Explore Options  ${KU_W_digitalGold}  ${e_invest_digGold}
    Wait And Click  ${KU_W_dg_trackTab}
    Wait And Click  ${KU_W_dg_track_deleteBtn} 
    Verify Element And Text  ${KU_W_toastMssg}  ${e_invest_deleteTrackMsg} 
    Scroll Page To Location  0  2000
    Verify Page Contains Element  ${KU_W_digitalGold}

Verify Buying Of Gold
    # Checking Min Amount Label Validation
    Wait And Click  ${KU_W_dg_enterGram_AmtField}
    Input Text  ${KU_W_dg_enterGram_AmtField}  ${e_invest_SIP_BuyValue}
    Verify Page Contains Element  ${KU_W_dg_sell_minAmtLabel}
    Verify Page Contains Element  ${KU_W_dg_goldValue}
    Wait For Element Visibility  ${KU_W_dg_enterGramLabel}
    Click Element  ${KU_W_dg_enterGramLabel}
    Sleep  2s
    # Checking Min Gram Label Validation
    Input Text  ${KU_W_dg_enterGram_AmtField}  ${e_invest_enterGramValue}
    Wait For Element Visibility  ${KU_W_dg_minGoldInGram}
    Verify Page Contains Element  ${KU_W_dg_minGoldInGram}
    Wait For Element Visibility  ${KU_W_dg_goldValue}
    Verify Page Contains Element  ${KU_W_dg_goldValue}
    Wait And Click  ${KU_W_dg_enterAmtLabel}
    Input Text  ${KU_W_dg_enterGram_AmtField}  ${e_invest_enterAmountValue}
    Wait And Click  ${KU_W_buyNowBtn}
    Wait And Click  ${KU_W_postlogin_netBankingOption}
    Wait And Click  ${KU_W_postlogin_proceedToPay}
    Enter OTP Postlogin
    Verify Payment With Net Banking  ${e_invest_merchantDesc}
    Wait And Click  ${KU_W_postlogin_continue} 
    Verify Element And Text  ${KU_W_postlogin_portfolio}  ${e_postlogin_portfolioTitle}
    Navigate To Invest Page And Verify Explore Options  ${KU_W_digitalGold}  ${e_invest_digGold}

Verify Transaction With Moolya Account
    Switch To Frame  ${KU_W_postlogin_razorPayFrame2}
    Wait And Click  ${KU_W_SPM_netBankingOption}
    Wait And Click  ${KU_W_SPM_SBIBank} 
    Wait Scroll And Click Element  ${KU_W_SPM_footerPayBtn}
    Unselect Frame
    Sleep  5s
    Switch Window  ${e_SPM_title}
    Sleep  2s
    Wait For Element Visibility  ${KU_W_SPM_razorPayTitle}
    Verify Element And Text  ${KU_W_SPM_razorPayTitle}  ${e_SPM_razorPayTitle}
    Wait And Click  ${KU_W_SPM_razorPaySuccessBtn}
    Switch Window  browser=Kuvera
    Verify Page Contains Element  ${KU_W_dg_congratsMsg}
    Verify Page Contains Element  ${KU_W_dg_buyGoldSuccessMsg}
    Wait And Click  ${KU_W_postlogin_continue}
    Wait For Element Visibility  ${KU_W_postlogin_portfolio}
    Verify Element And Text  ${KU_W_postlogin_portfolio}  ${e_postlogin_portfolioTitle}