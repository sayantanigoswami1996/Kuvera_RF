*** Keywords ***

Verify PostLogin SIP STP And SWP Menu Navigation
    Log To Console  SIP STP And SWP Menu Navigation
    # SIP
    Verify SIP Tab
    Open Bot And Validate Question  ${KU_W_sipstpswp_learnMore}  ${e_sipstpswp_SIPQuestion}
    Wait And Click  ${KU_W_sipstpswp_addSIPBtn}
    Verify Element And Text  ${KU_W_portfolio_mf_allFundsTitle}  ${e_portfolio_mf_allFundsText} 
    Go Back
    # STP
    Wait And Click  ${KU_W_sipstpswp_STPTab}
    Wait For Element Visibility  ${KU_W_postlogin_noActiveSIPTitle}
    Verify Element And Text  ${KU_W_postlogin_noActiveSIPTitle}  ${e_sipstpswp_STPTab}
    Open Bot And Validate Question  ${KU_W_sipstpswp_learnMore}  ${e_sipstpswp_STPQuestion}
    Wait And Click  ${KU_W_sipstpswp_addSTP}
    Verify Element And Text  ${KU_W_sipstpswp_addSTP_SWPDesc}  ${e_sipstpswp_addSTPDesc}
    Verify Element And Text  ${KU_W_sipstpswp_addSTP_SWPDesc1}  ${e_sipstpswp_addSTP_SWPDesc1}
    Go Back
    # SWP
    Wait And Click  ${KU_W_sipstpswp_SWPTab}
    Verify Element And Text  ${KU_W_postlogin_noActiveSIPTitle}  ${e_sipstpswp_SWPTab}
    Open Bot And Validate Question  ${KU_W_sipstpswp_SWPLearnMore}  ${e_sipstpswp_STPQuestion}
    Wait And Click  ${KU_W_sipstpswp_addSWP}
    Verify Element And Text  ${KU_W_sipstpswp_addSTP_SWPDesc}  ${e_sipstpswp_addSWPDesc}
    Verify Element And Text  ${KU_W_sipstpswp_addSTP_SWPDesc1}  ${e_sipstpswp_addSTP_SWPDesc1}
    Go Back