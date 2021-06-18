*** Keywords ***

Verify PostLogin Cart Menu Navigation
    Log To Console  Cart
    Wait And Click  ${KU_W_postlogin_cartBtn}
    Verify Page Contains Element  ${KU_W_invest_mf_cartTitle}
    Verify Page Contains Element  ${KU_W_cart_cartLogo}
    Verify Page Contains Element  ${KU_W_cart_cartMsg}
    Wait And Click  ${KU_W_cart_exploreFundsLink} 
    Verify Page Contains Element  ${KU_W_invest_mf_searchFundsLabel}
    Go Back
    Wait And Click  ${KU_W_postlogin_inProcessTab}
    Verify Page Contains Element  ${KU_W_cart_inProcessMsg}
    Verify Page Contains Element  ${KU_W_cart_cartLogo}
    Wait And Click  ${KU_W_postlogin_recentTab}
    Verify Page Contains Element  ${KU_W_cart_recentMsg} 
    Verify Page Contains Element  ${KU_W_cart_cartLogo}