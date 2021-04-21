*** Keywords ***

Verify PostLogin SIP STP And SWP Menu Navigation Without KYC 
    Log To Console  SIP STP And SWP Menu Navigation Without KYC
    Verify SIP Tab
    Open Bot And Validate Question  ${KU_W_sipstpswp_learnMore}  ${e_sipstpswp_SIPQuestion}
    Wait And Click  ${KU_W_sipstpswp_addSIPBtn}
    Verify Element And Text  ${KU_W_portfolio_mf_allFundsTitle}    text



