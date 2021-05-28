*** Keywords ***

Verify PostLogin MF Navigation With SIP
    Wait And Click  ${KU_W_postlogin_mandate_doItLaterBtn}
    # SIP Header Validation
    Verify SIP Header Validation
    # Past No Stopped SIP
    Verify Past No Stopped SIP
    # Active SIP Tab
    Verify Active SIP Tab
    # Past Stopped SIP Tab
    Verify Past Stopped SIP
    # Edit SIP With Mandate
    Verify Edit SIP With Mandate Approved
    # Skip SIP With Mandate
    Verify Skip SIP With Mandate Approved
    # Edit and Skip SIP Without Mandate
    Verify Edit And Skip SIP Without Mandate Approved
    
Verify SIP Header Validation
    Wait And Click  ${KU_W_postlogin_SIP_STP_SWPTab} 
    Verify Page Contains Element  ${KU_W_invest_mf_SIPs} 
    Verify Page Contains Element  ${KU_W_invest_mf_funds}
    Verify Page Contains Element  ${KU_W_invest_mf_savesmart}
    Verify Page Contains Element  ${KU_W_invest_mf_gold}
    Verify Page Contains Element  ${KU_W_invest_mf_monthlyPayable} 
    Verify Page Contains Element  ${KU_W_invest_mf_fundGoldSipLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_SIPAmtLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_SIPAmtDropdown}
    Verify Page Contains Element  ${KU_W_invest_mf_SIPNameList} 
    Verify Page Contains Element  ${KU_W_invest_mf_SIPAmtList} 

Verify Active SIP Tab
    Wait And Click  ${KU_W_invest_mf_SIPAmtDropdown}
    Verify Page Contains Element  ${KU_W_invest_mf_activeSIPTab}
    Verify Page Contains Element  ${KU_W_invest_mf_dateLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_amtLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_folioLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_bankLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_dateVal}
    Verify Page Contains Element  ${KU_W_invest_mf_activeSIPAmt}
    Verify Page Contains Element  ${KU_W_invest_mf_folioVal}
    Verify Page Contains Element  ${KU_W_invest_mf_bankAccName}
    Verify Page Contains Element  ${KU_W_invest_mf_modifyLink}
    Verify Fund Details And Transactions Link
    Wait And Click  ${KU_W_invest_mf_SIPAmtDropdown}
    Wait And Click  ${KU_W_invest_mf_investMoreLink}
    Verify Page Contains Element  ${KU_W_invest_mf_enterSIPLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_enterSIPLabel}
    Wait And Click  ${KU_W_invest_mf_sipAmountTxt}
    Input Text  ${KU_W_invest_mf_sipAmountTxt}  ${e_invest_mf_minSIP_lumpsum}
    Wait And Click  ${KU_W_invest_mf_investMore_investBtn}
    Verify Page Contains Element  ${KU_W_invest_mf_investMore_minValMsg}
    Wait And Click  ${KU_W_invest_mf_investMorePopupCloseBtn}
    Wait And Click  ${KU_W_invest_mf_investMoreLink}
    Wait And Click  ${KU_W_invest_mf_lumpsumAmountTxt}
    Input Text  ${KU_W_invest_mf_lumpsumAmountTxt}  ${e_invest_mf_minSIP_lumpsum}
    Wait And Click  ${KU_W_invest_mf_investMore_investBtn}
    Verify Page Contains Element  ${KU_W_invest_mf_investMore_minValMsg}
    Wait And Click  ${KU_W_invest_mf_lumpsumAmountTxt}
    Clear Text Field  ${KU_W_invest_mf_lumpsumAmountTxt}
    Input Text  ${KU_W_invest_mf_lumpsumAmountTxt}  ${e_invest_mf_lumpsumAmt}
    Wait And Click   ${KU_W_invest_mf_investMore_addToCartBtn}
    Verify Element And Text  ${KU_W_toastMssg}  ${e_invest_mf_orderToCartMsg}
    Wait And Click  ${KU_W_invest_mf_investMoreLink}
    Wait And Click  ${KU_W_invest_mf_sipAmountTxt}
    Input Text  ${KU_W_invest_mf_sipAmountTxt}  ${e_invest_mf_SIPAmt} 
    Wait And Click  ${KU_W_invest_mf_investMore_investBtn}
    Verify Page Contains Element  ${KU_W_invest_mf_cartTitle}
    Go Back

Verify Past No Stopped SIP
    Wait And Click  ${KU_W_invest_mf_SIPAmtDropdown}
    Wait And Click  ${KU_W_invest_mf_pastSIPTab}
    Verify Page Contains Element  ${KU_W_invest_mf_noStoppedTitle}
    Verify Fund Details And Transactions Link
    Wait And Click  ${KU_W_invest_mf_SIPAmtDropdown}
    Wait And Click  ${KU_W_invest_mf_pastSIPTab}
    Wait And Click  ${KU_W_invest_mf_investMoreLink}
    Verify Page Contains Element  ${KU_W_invest_mf_enterSIPLabel}
    Wait And Click  ${KU_W_invest_mf_investMorePopupCloseBtn}

Verify Past Stopped SIP
    Scroll Untill View  ${KU_W_invest_mf_nipponDropdown}
    Sleep  2s 
    Wait And Click  ${KU_W_invest_mf_nipponDropdown} 
    Wait And Click  ${KU_W_invest_mf_pastSIPTab}
    Scroll Untill View  ${KU_W_invest_mf_stoppedSIPAmt}
    Verify Page Contains Element  ${KU_W_invest_mf_stoppedSIPAmt}
    Verify Page Contains Element  ${KU_W_invest_mf_stoppedSIPFolio}
    Verify Page Contains Element  ${KU_W_invest_mf_stoppedSIPStartDate}
    Scroll Untill View  ${KU_W_invest_mf_stoppedSIPEndDate}
    Verify Page Contains Element  ${KU_W_invest_mf_stoppedSIPEndDate}
    Verify Page Contains Element  ${KU_W_invest_mf_stoppedSIPTable}
    Verify Page Contains Element  ${KU_W_invest_mf_modifyLink}

Verify Fund Details And Transactions Link
    Wait And Click  ${KU_W_invest_mf_fundDetsLink}
    Verify Page Contains Element  ${KU_W_invest_mf_navValue}
    Go Back
    Wait And Click  ${KU_W_invest_mf_SIPAmtDropdown}
    Wait And Click  ${KU_W_invest_mf_transactionsLink}
    Verify Page Contains Element  ${KU_W_invest_mf_switchLink}
    Go Back

Verify Edit SIP With Mandate Approved
    Wait And Click  ${KU_W_invest_mf_SIPAmtDropdown}
    Wait And Click  ${KU_W_invest_mf_modifyLink}
    Verify Page Contains Element  ${KU_W_invest_mf_modifyPopupTitle}
    Wait And Click  ${KU_W_invest_mf_editBtn}
    Sleep  2s
    ${isEditPopupVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_invest_mf_cannotEditThisSIPTitle}
    IF  ${isEditPopupVisible}
        Verify Page Contains Element  ${KU_W_invest_mf_cannotEdit_skipThisSIPDesc}
        Wait And Click  ${KU_W_postlogin_okThanksBtn}
    ELSE
        Log To Console  Edit SIP 
        Verify Edit SIP Updation    
    END
    
Verify Edit SIP Updation
    Verify Page Contains Element  ${KU_W_invest_mf_editTitle}
    Verify Page Contains Element  ${KU_W_invest_mf_editSubTitle}
    Verify Page Contains Element  ${KU_W_invest_mf_edit_skip_stop_fundName}
    Verify Page Contains Element  ${KU_W_invest_mf_edit_enterSIPAmt}
    Wait And Click  ${KU_W_invest_mf_sipAmountTxt}
    Clear Text Field  ${KU_W_invest_mf_sipAmountTxt}
    Input Text  ${KU_W_invest_mf_sipAmountTxt}  ${e_invest_mf_sipVal_editSIP}
    Wait And Click  ${KU_W_invest_mf_edit_increaseAmtBox} 
    Verify Page Contains Element  ${KU_W_invest_mf_edit_SIPDateLabel} 
    Sleep  2s
    Wait And Click  ${KU_W_invest_mf_edit_SIPDateDropdown}
    Sleep  1s
    Wait And Click  ${KU_W_invest_mf_edit_SIPDate}
    Verify Page Contains Element  ${KU_W_invest_mf_edit_nextInstallmentMsg}
    Verify Page Contains Element  ${KU_W_invest_mf_edit_moreOptions}
    Wait And Click  ${KU_W_postlogin_saveBtn}
    Log To Console  Confirm SIP Order  
    Verify Confirm SIP Order And Successful Order   
       
Verify Confirm SIP Order And Successful Order
    Verify Page Contains Element  ${KU_W_invest_mf_edit_confirmSIPOrder}
    Verify Page Contains Element  ${KU_W_invest_mf_edit_skip_stop_fundName}
    Verify Page Contains Element  ${KU_W_invest_mf_edit_previousAmt}
    Verify Page Contains Element  ${KU_W_invest_mf_edit_previousVal}
    Verify Element And Text  ${KU_W_invest_mf_edit_newAmt}  ${e_invest_mf_edit_newAmt}
    Verify Page Contains Element  ${KU_W_invest_mf_edit_newVal}
    Verify Element And Text  ${KU_W_invest_mf_edit_folioNum}  ${e_invest_mf_edit_folioNumber}
    Verify Page Contains Element  ${KU_W_invest_mf_edit_folioVal}
    Verify Element And Text  ${KU_W_invest_mf_edit_bank}  ${e_invest_mf_edit_bank}
    Verify Element And Text  ${KU_W_invest_mf_edit_bankDets}  ${e_invest_mf_edit_bankDets}
    Verify Page Contains Element  ${KU_W_invest_mf_edit_sipDateLabelConfirmOrder}
    Verify Page Contains Element  ${KU_W_invest_mf_edit_date}
    Verify Page Contains Element  ${KU_W_invest_mf_edit_skip_stop_otpWarnText}
    Verify SIP Updated Popup
    
Verify Edit And Skip SIP Without Mandate Approved
    Scroll Untill View  ${KU_W_invest_mf_nipponDropdown}
    Wait And Click  ${KU_W_invest_mf_nipponDropdown} 
    Wait And Click  ${KU_W_invest_mf_modifyLink}
    Wait And Click  ${KU_W_invest_mf_editBtn}
    Wait And Click  ${KU_W_invest_mf_edit_increaseAmtBox} 
    Wait And Click  ${KU_W_postlogin_saveBtn}
    Verify Page Contains Element  ${KU_W_invest_mf_edit_cannotModifyTitle} 
    Verify Page Contains Element  ${KU_W_invest_mf_edit_cannotModifySubTitle}
    Wait And Click  ${KU_W_postlogin_okaySureBtn} 
    Wait And Click  ${KU_W_invest_mf_edit_closeSIP}
    Wait And Click  ${KU_W_invest_mf_modifyLink}
    Wait And Click  ${KU_W_invest_mf_skipBtn}
    Verify Page Contains Element  ${KU_W_invest_mf_skip_cannotSkipTitle}
    Verify Page Contains Element  ${KU_W_invest_mf_skip_cannotSkipSubTitle}
    Wait And Click  ${KU_W_postlogin_okThanksBtn}

Verify Skip SIP With Mandate Approved
    Wait And Click  ${KU_W_invest_mf_SIPAmtDropdown}
    Wait And Click  ${KU_W_invest_mf_modifyLink}
    Wait And Click  ${KU_W_invest_mf_skipBtn}
    Sleep  2s
    ${isSkipPopupVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_invest_mf_skip_cannotSkipTitle} 
    IF  ${isSkipPopupVisible}
        Verify Page Contains Element  ${KU_W_invest_mf_cannotEdit_skipThisSIPDesc}
        Wait And Click  ${KU_W_postlogin_okThanksBtn}
    ELSE
        Log To Console  Skip SIP 
        Verify Skip SIP Updation    
    END

Verify Skip SIP Updation
    Verify Page Contains Element  ${KU_W_invest_mf_skip1PageTitle}
    Verify Page Contains Element  ${KU_W_invest_mf_skip1PageSubTitle1} 
    Verify Page Contains Element  ${KU_W_invest_mf_skip1PageSubTitle2}
    Wait And Click  ${KU_W_invest_mf_skip_greatInvestorLink}
    Switch To Window
    Verify Page Contains Element  ${KU_W_invest_mf_edit_skip_stop_fundName}
    Verify Page Contains Element  ${KU_W_invest_mf_skip_sipDateLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_skip_sipDateField}
    Verify Page Contains Element  ${KU_W_invest_mf_skip_nextInstallmentText} 
    Verify Page Contains Element  ${KU_W_invest_mf_edit_skip_stop_otpWarnText}
    Verify SIP Updated Popup

Verify SIP Updated Popup
    Scroll Untill View  ${KU_W_postlogin_confirmBtn}
    Wait And Click  ${KU_W_postlogin_confirmBtn}
    Enter OTP Postlogin
    Verify Page Contains Element  ${KU_W_invest_mf_edit_skip_SIPUpdatedTitle}
    Verify Page Contains Element  ${KU_W_invest_mf_edit_skip_updatedMsg1}
    Verify Page Contains Element  ${KU_W_invest_mf_edit_skip_updatedMsg2}
    Wait And Click  ${KU_W_postlogin_OkBtn}