*** Keywords ***

Verify PostLogin Edit And Stop Gold SIP
    Log To Console  Edit And Stop Gold SIP
    Navigate To Invest Page And Verify Explore Options  ${KU_W_digitalGold}  ${e_invest_digGold}
    Enter SIP Value 
    Verify Select Bank Account Page
    Verify Order Summary Page
    Verify Edit And Stop SIP

Verify Edit And Stop SIP
    Sleep  3s
    # EDIT
    Wait And Click  ${KU_W_dg_goldBoughtOnKuvera}
    Verify Page Contains Element  ${KU_W_dg_SIPPageTitle}
    Verify Page Contains Element  ${KU_W_dg_SIPBoughtTab}
    Wait And Click  ${KU_W_dg_modifyMenu}
    Verify Page Contains Element  ${KU_W_dg_editMenu}
    Verify Page Contains Element  ${KU_W_dg_skipAPayment}
    Verify Page Contains Element  ${KU_W_dg_stop}
    Wait And Click  ${KU_W_dg_editMenu}
    Verify Page Contains Element  ${KU_W_dg_editSIPTitle}
    Verify Page Contains Element  ${KU_W_dg_editSIPDesc}
    Verify Page Contains Element  ${KU_W_dg_enterAmountTitle}
    Input Text  ${KU_W_dg_SIPAmtField}  ${e_invest_enterAmountValue}
    Wait And Click  ${KU_W_dg_SIPDropdown}
    Wait And Click  ${KU_W_dg_editSIPDate}
    Wait And Click  ${KU_W_postlogin_saveBtn}
    Verify Element And Text  ${KU_W_toastMssg}  ${e_invest_editSIPMsg}
    Wait And Click  ${KU_W_dg_goldBoughtOnKuvera}
    Verify Page Contains Element  ${KU_W_dg_editedSIPAmt}
    # STOP
    Wait And Click  ${KU_W_dg_modifyMenu}
    Verify Page Contains Element  ${KU_W_dg_stop}
    Verify Page Contains Element  ${KU_W_dg_stopSIPTitle}
    Verify Page Contains Element  ${KU_W_dg_stopSIPDesc}
    Wait And Click  ${KU_W_dg_stopSIPBtn}
    Verify Element And Text  ${KU_W_toastMssg}  ${e_invest_stopSIPMsg}
    Verify Page Contains Element  ${KU_W_dg_stopSIPTag}
    Verify Page Contains Element  ${KU_W_dg_stopSIPInfoIcon}