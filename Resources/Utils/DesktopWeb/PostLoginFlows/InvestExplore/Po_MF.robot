*** Keywords ***

Verify PostLogin MF Menu Navigation
    Verify PreLogin Mutual Fund Landing Page 
    Wait And Click  ${KU_W_mutualFund}
    Verify Import Now Banner  ${e_invest_mf_bannerText}  ${KU_W_invest_mf_importExternalFunds}  ${e_invest_mf_importExternalFunds}
    Verify Filter Selection For MF
  
Verify Transactional Navigation On MF With KYC
    Navigate To Invest Page And Verify Explore Options  ${KU_W_mutualFund}  ${e_invest_mf_titleText}
    Verify Buying Of SIP
    Verify Add To Cart And Buy Lumpsum
    Verify Buying SIP And Lumpsum Together

Verify Transactional Navigation On MF Without KYC
    Navigate To Invest Page And Verify Explore Options  ${KU_W_mutualFund}  ${e_invest_mf_titleText}
    Search For MF 
    Sleep  1s
    Wait For Element Visibility  ${KU_W_invest_mf_sipAmountTxt}
    Input Text  ${KU_W_invest_mf_sipAmountTxt}  ${e_invest_mf_sipAmount}
    Wait Scroll And Click Element  ${KU_W_invest_mf_investNowButton}
    Wait And Click  ${KU_W_postlogin_placeOrder} 
    Wait And Click  ${KU_W_postlogin_cancelBtn}
    Verify Page Contains Element  ${KU_W_invest_mf_cartTitle} 
    Wait And Click  ${KU_W_postlogin_placeOrder} 
    Wait And Click  ${KU_W_postlogin_continue}
    Verify Page Contains Element  ${KU_W_KYC_PANTextField}
    Go Back

Verify Transactional Navigation With Two Factor Authentication
    Navigate To Invest Page And Verify Explore Options  ${KU_W_mutualFund}  ${e_invest_mf_titleText}
    Search For MF 
    Sleep  1s
    Wait For Element Visibility  ${KU_W_invest_mf_sipAmountTxt}
    Input Text  ${KU_W_invest_mf_sipAmountTxt}  ${e_invest_mf_sipAmount}
    Wait Scroll And Click Element  ${KU_W_invest_mf_investNowButton}
    Wait And Click  ${KU_W_invest_mf_openDrpdownImg}
    Sleep  1s
    Wait And Click  ${KU_W_invest_mf_dateOnOrderSIP}
    Verify Element And Text  ${KU_W_invest_mf_scheduledSIPAmt}  ${e_invest_mf_SIPAmt}
    Verify Element And Text  ${KU_W_invest_mf_payAmt}  ${e_invest_mf_zeroSIP_payNow}
    Place Order
    Verify OTP Message With 2FA Account
    Verify Amount While Placing Order  ${e_invest_mf_SIPAmt}
    Verify OTP Message With 2FA Account
    Wait And Click  ${KU_W_postlogin_netBankingOption}
    Wait And Click  ${KU_W_postlogin_proceedToPay}
    Wait And Click  ${KU_W_postlogin_chooseBank}
    Verify OTP Message With 2FA Account
    Wait And Click  ${KU_W_postlogin_payNow}
    Enter OTP Postlogin
    Wait And Click  ${KU_W_postlogin_goBackBtn}
    Go Back
    Verify In Process Page After Placing Order


Verify Buying Of SIP
    Search For MF 
    Sleep  1s
    # Graph Validation with Nifty
    Verify Page Contains Element  ${KU_W_invest_mf_V/STitle}
    Wait And Click  ${KU_W_invest_mf_dropdownIcon} 
    ${niftyGraphCount} =  Get Element Count  ${KU_W_invest_mf_niftyGraphDropdownList} 
    FOR  ${k}  IN RANGE  1  ${niftyGraphCount}+1
        Wait And Click  xpath=(//div[@class='b-mf-sector-filter__option'])[${k}]
        FOR  ${j}  IN RANGE  1  6
            Sleep  3s
            Wait And Click  xpath=(//div[contains(@class,'b-period-option_item')])[${j}]
            Verify Page Contains Element  ${KU_W_invest_mf_performaceCart}
            Verify Page Contains Element  ${KU_W_invest_mf_performanceRateCount}
        END
    Wait And Click  ${KU_W_invest_mf_dropdownIcon} 
    END
    # Add and Remove Fund
    Scroll Untill View  ${KU_W_invest_mf_addFundBtn}
    Wait And Click  ${KU_W_invest_mf_addFundBtn}
    Wait And Click  ${KU_W_invest_mf_search_addFund}
    Input Text  ${KU_W_invest_mf_search_addFund}  ${e_invest_mf_search_addFund}
    Wait And Click  ${KU_W_invest_mf_search_addIcon}
    Verify Element And Text  ${KU_W_toastMssg}  ${e_invest_mf_search_addFundToastMsg}
    Wait And Click  ${KU_W_invest_mf_search_removeIcon}
    Verify Element And Text  ${KU_W_toastMssg}  ${e_invest_mf_search_removeFundToastMsg}
    # Buy SIP
    Wait For Element Visibility  ${KU_W_invest_mf_sipAmountTxt}
    Input Text  ${KU_W_invest_mf_sipAmountTxt}  ${e_invest_mf_sipAmount}
    Wait And Click  ${KU_W_invest_mf_lumpsumAmountTxt}
    # Fetching the amount
    ${mininumValue} =  Fetch the Amount  ${KU_W_invest_mf_minLumpsumVal}
    Wait Scroll And Click Element  ${KU_W_invest_mf_investNowButton}
    # Header Notification
    Wait For Element Visibility  ${KU_W_invest_mf_notification}
    Verify Element And Text  ${KU_W_invest_mf_notification}  ${e_invest_mf_notification}
    Verify Page Contains Element  ${KU_W_invest_mf_cartTitle} 
    # FundName On Cart Page
    Verify Page Contains Element  ${KU_W_invest_mf_fundN}
    # Default Date
    Verify Page Contains Element  ${KU_W_invest_mf_defaultDate}
    # Lumpsum Label when SIP added
    Verify Page Contains Element  ${KU_W_invest_mf_addLumpsumLabel}
    # Data Validation Of SIP
    Wait And Click  ${KU_W_invest_mf_openDrpdownImg}
    Sleep  1s
    Wait And Click  ${KU_W_invest_mf_dateOnOrderSIP}
    Verify New Folio Popup
    # SIP Panel
    Verify Page Contains Element  ${KU_W_invest_mf_scheduledSIPLabel}
    Verify Element And Text  ${KU_W_invest_mf_scheduledSIPAmt}  ${e_invest_mf_SIPAmt}
    Verify Page Contains Element  ${KU_W_invest_mf_payNow} 
    #  Add Lumpsum and Validate Min Amount
    Wait And Click  ${KU_W_invest_mf_addLumpsumLabel}
    Sleep  3s
    Wait For Element Visibility  ${KU_W_invest_mf_payAmt}
    Verify Element And Text  ${KU_W_invest_mf_payAmt}  ${mininumValue}
    # Delete Lumpsum and Validate Pay Amount
    Wait And Click  ${KU_W_invest_mf_lumpsumDelIcon}
    Verify Page Contains Element  ${KU_W_invest_mf_delFund}
    Verify Page Contains Element  ${KU_W_invest_mf_delFundDesc}
    Verify Page Contains Element  ${KU_W_postlogin_noCancelBtn}
    Wait And Click  ${KU_W_postlogin_yesDelBtn}
    Sleep  3s
    Wait For Element Visibility  ${KU_W_invest_mf_payAmt}
    Verify Element And Text  ${KU_W_invest_mf_payAmt}  ${e_invest_mf_zeroSIP_payNow}
    # Place Order
    Place Order
    Verify Amount While Placing Order  ${e_invest_mf_SIPAmt}
    Verify Payment Postlogin 
    Verify In Process Page After Placing Order
    Go Back
    Go Back

Verify Add To Cart And Buy Lumpsum
    Wait For Element Visibility  ${KU_W_invest_mf_lumpsumAmountTxt}
    Input Text  ${KU_W_invest_mf_lumpsumAmountTxt}  ${e_invest_mf_lumpsumAmount}
    Wait And Click  ${KU_W_invest_mf_sipAmountTxt}
    ${SIPminVal} =  Fetch the Amount  ${KU_W_invest_mf_minSIPVal}
    Wait Scroll And Click Element  ${KU_W_invest_mf_addToCartButton}
    Verify Element And Text  ${KU_W_toastMssg}  ${e_invest_mf_orderToCartMsg}
    Wait And Click  ${KU_W_postlogin_cartBtn}
    Verify Page Contains Element  ${KU_W_invest_mf_cartTitle}
    Verify Page Contains Element  ${KU_W_invest_mf_addSIPLabel}
    # Data Validation For Lumpsum
    Verify Element And Text  ${KU_W_invest_mf_scheduledSIPAmt}  ${e_invest_mf_zeroSIP_payNow}
    Verify Element And Text  ${KU_W_invest_mf_payAmt}  ${e_invest_mf_lumpsumAmt}
    # Add SIP
    Wait And Click  ${KU_W_invest_mf_addSIPLabel}
    Sleep  2s
    Wait For Element Visibility  ${KU_W_invest_mf_scheduledSIPAmt}
    Verify Element And Text  ${KU_W_invest_mf_scheduledSIPAmt}  ${SIPminVal}
    Verify Element And Text  ${KU_W_invest_mf_payAmt}  ${e_invest_mf_lumpsumAndSIPMinAmt}
    # Delete SIP
    Wait And Click  ${KU_W_invest_mf_SIPDelIcon}
    Wait And Click  ${KU_W_postlogin_yesDelBtn}
    Sleep  2s
    Wait For Element Visibility  ${KU_W_invest_mf_scheduledSIPAmt}
    Verify Element And Text  ${KU_W_invest_mf_scheduledSIPAmt}  ${e_invest_mf_zeroSIP_payNow}
    Verify Element And Text  ${KU_W_invest_mf_payAmt}  ${e_invest_mf_lumpsumAmt}
    Verify New Folio Popup
    Wait And Click  ${KU_W_postlogin_placeOrder} 
    ${currentTime} =  Get Time  hour  NOW
    IF  ${currentTime} < ${e_invest_mf_cutOffTime} and ${currentTime} > ${e_invest_mf_startTime}
        Log To Console  Market Hours
    ELSE
        Log To Console  Non Market Hours
        Verify Page Contains Element  ${KU_W_invest_mf_offlineModeActive}
        Verify Page Contains Element  ${KU_W_invest_mf_orderPlacedMsg}
    END
    Verify Amount While Placing Order  ${e_invest_mf_lumpsumAmt}
    Verify Payment Postlogin
    Verify In Process Page After Placing Order
    Go Back
    Go Back

Verify Buying SIP And Lumpsum Together
    Wait For Element Visibility  ${KU_W_invest_mf_sipAmountTxt}
    Input Text  ${KU_W_invest_mf_sipAmountTxt}  ${e_invest_mf_sipAmount}
    Wait For Element Visibility  ${KU_W_invest_mf_lumpsumAmountTxt}
    Input Text  ${KU_W_invest_mf_lumpsumAmountTxt}  ${e_invest_mf_lumpsumAmount}
    Wait Scroll And Click Element  ${KU_W_invest_mf_investNowButton}
    Wait And Click  ${KU_W_invest_mf_openDrpdownImg}
    Sleep  1s
    Wait And Click  ${KU_W_invest_mf_dateOnOrderSIP}
    Verify Element And Text  ${KU_W_invest_mf_scheduledSIPAmt}  ${e_invest_mf_SIPAmt}
    Verify Element And Text  ${KU_W_invest_mf_payAmt}  ${e_invest_mf_lumpsumAndSIPAmt}
    Wait And Click  ${KU_W_postlogin_placeOrder}  
    Wait And Click  ${KU_W_invest_mf_accBox} 
    Wait And Click  ${KU_W_invest_mf_selectBox}
    Wait And Click  ${KU_W_invest_mf_placeOrdersBtn}
    ${lumpAmount} =  Catenate  ${e_invest_mf_rupeeSymbol} ${e_invest_mf_lumpsumAmt}
    Verify Element And Text  ${KU_W_invest_mf_SIPAmtOnPayment1}  ${lumpAmount}
    ${SIPAmount} =  Catenate  ${e_invest_mf_rupeeSymbol} ${e_invest_mf_SIPAmt}
    Verify Element And Text  ${KU_W_invest_mf_SIPAmtOnPayment2}  ${SIPAmount}
    ${totalAmount} =  Catenate  ${e_invest_mf_rupeeSymbol} ${e_invest_mf_lumpsumAndSIPAmt}
    Verify Element And Text  ${KU_W_invest_mf_totalAmtOnPayment}  ${totalAmount}
    Wait And Click  ${KU_W_invest_mf_continueBtn}
    ${SIP_lumpAmt} =  Catenate  ${e_invest_mf_rupeeSymbol}${e_invest_mf_lumpsumAndSIPAmt}
    Verify Element And Text  ${KU_W_invest_mf_SIPAmtOnSelectMode}  ${SIP_lumpAmt}
    Verify Payment Postlogin
    Verify In Process Page After Placing Order

Search For MF 
    @{mutualFundName} =  Get Json Values  $.MutualFunds.f2  Resources/TestData/MutualFunds.json 
    Log To Console  ${mutualFundName}
    Search Fund and Verify  ${mutualFundName} 
    Sleep  1s
    Wait And Click  ${KU_W_invest_mf_fundName}


Verify Filter Selection For MF
    Wait And Click  ${KU_W_invest_mf_categoryBox}
    ${categoryCount} =  Get Element Count  ${KU_W_invest_mf_categoryList}   
    # Iterate and verify all fund details 
    # Nested for loop is used as based on category subacategory is choosen and then validated
    FOR  ${i}  IN RANGE  2   ${categoryCount}+1
        ${categoryName} =  Get Text  xpath=(//div[@class='b-fund-category-filter__option'])[${i}]
        Wait Scroll And Click Element  xpath=(//div[@class='b-fund-category-filter__option'])[${i}]
        Verify Element And Text  ${KU_W_invest_mf_categoryName}  ${categoryName}
        Wait And Click  ${KU_W_invest_mf_subcategoryBox} 
        ${subcategoryCount} =  Get Element Count  ${KU_W_invest_mf_subcategoryList}
        FOR  ${j}  IN RANGE  2    ${subcategoryCount}+1
            ${subcategoryName} =  Get Text  xpath=(//div[@class='b-fund-category-filter__label'])[${j}]
            Sleep  2s
            Wait And Click  xpath=(//div[@class='b-fund-category-filter__label'])[${j}]
            Sleep  1s
            Verify Element And Text  ${KU_W_invest_mf_subcategoryName}  ${subcategoryName} 
            Press Keys  xpath=(//div[@class='b-fund-category-filter__label'])[${j}]  ARROW_DOWN   
        END
        Wait And Click  ${KU_W_invest_mf_categoryBox}
    END

Verify New Folio Popup
    Wait And Click  ${KU_W_invest_mf_newFolioLink}
    Verify Page Contains Element  ${KU_W_invest_mf_newFolioMsg}
    Verify Page Contains Element  ${KU_W_invest_mf_newFolioNumLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_newFolioAmtLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_createNewLabel}
    Wait And Click  ${KU_W_postlogin_continue}

Fetch the Amount
    [Arguments]  ${lumpsum_SIPVal}
    ${lumpsum_SIPAmt} =  Get Text  ${lumpsum_SIPVal}
    ${amtLength} =  Get Length  ${lumpsum_SIPAmt}
    ${minVal} =  Get Substring  ${lumpsum_SIPAmt}  6  ${amtLength}
    [Return]  ${minVal}

Verify Amount While Placing Order
    [Arguments]  ${SIPAndLumpAmount}
    ${SIP_lumpamount} =  Catenate  ${e_invest_mf_rupeeSymbol} ${SIPAndLumpAmount}
    Verify Element And Text  ${KU_W_invest_mf_SIPAmtOnPayment1}  ${SIP_lumpamount}
    Verify Element And Text  ${KU_W_invest_mf_totalAmtOnPayment}  ${SIP_lumpamount}
    Wait And Click  ${KU_W_invest_mf_continueBtn}
    ${SIP_lumpAmt} =  Catenate  ${e_invest_mf_rupeeSymbol}${SIPAndLumpAmount}
    Verify Element And Text  ${KU_W_invest_mf_SIPAmtOnSelectMode}  ${SIP_lumpAmt}
    
Place Order
    Wait And Click  ${KU_W_postlogin_placeOrder}  
    Wait And Click  ${KU_W_invest_mf_accBox} 
    Wait And Click  ${KU_W_invest_mf_oneClickBox}
    Wait And Click  ${KU_W_invest_mf_setOneClickBtn} 
    Wait And Click  ${KU_W_invest_mf_continueToOrderBtn}
    Wait And Click  ${KU_W_invest_mf_placeOrdersBtn}

Verify OTP Message With 2FA Account
    Verify Page Contains Element  ${KU_W_invest_mf_2FANotification}
    ${OTPMSg} =  Get Text  ${KU_W_invest_mf_2FANotification}
    ${expectedOTPMsg} =  Replace String  ${OTPMSg}  &nbsp  ${EMPTY}
    Verify Page Contains Text  ${expectedOTPMsg}

Verify In Process Page After Placing Order
    Wait And Click  ${KU_W_postlogin_cartBtn}
    Wait And Click  ${KU_W_postlogin_inProcessTab}
    Wait For Element Visibility   ${KU_W_invest_mf_inProcessOrders}
    Verify Page Contains Element  ${KU_W_invest_mf_inProcessOrders} 
    Verify Page Contains Element  ${KU_W_invest_mf_processOrderRow} 
    Verify Page Contains Element  ${KU_W_invest_mf_boughtFundName}
    Verify Page Contains Element  ${KU_W_invest_mf_folioNumLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_navLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_typeLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_amtLabel} 
    Verify Page Contains Element  ${KU_W_postlogin_orderStatusLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_triggerTimeLabel}
    Reload Page
    Wait For Element Visibility   ${KU_W_invest_mf_payStatusLabel} 
    Verify Page Contains Element  ${KU_W_invest_mf_payStatusLabel} 
    Verify Page Contains Element  ${KU_W_invest_mf_payModeLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_bankLabel}
    Verify Page Contains Element  ${KU_W_postlogin_inProcessTag}
    Verify Element And Text  ${KU_W_invest_mf_folioType}  ${e_invest_mf_folioType} 
    Verify Element And Text  ${KU_W_invest_mf_type}  ${e_invest_mf_type}
    Verify Page Contains Element  ${KU_W_invest_mf_amt}
    Verify Page Contains Element  ${KU_W_invest_mf_triggerTime}
    Wait For Element Visibility  ${KU_W_invest_mf_paymentStatus}
    Verify Element And Text  ${KU_W_invest_mf_paymentStatus}  ${e_invest_mf_paymentStatus}
    Verify Element And Text  ${KU_W_invest_mf_paymentMode}  ${e_invest_mf_paymentMode} 
    Verify Element And Text  ${KU_W_invest_mf_bankName}  ${e_invest_mf_bankName}
    Verify Page Contains Element  ${KU_W_invest_mf_navDateMsg}