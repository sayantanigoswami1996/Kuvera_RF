*** Keywords ***

Verify PreLogin New Funds Landing Page
    Log To Console  New Funds
    Sleep  1s
    Wait For Element Visibility  ${KU_W_balancedAdvantageTitle}
    Click Element  ${KU_W_balancedAdvantageTitle}
    Wait For Element Visibility  ${KU_W_invest_fundsScreenTitle} 
    Verify Login And Signup On Prelogin 
    Verify Element And Text  ${KU_W_invest_fundsScreenTitle}  ${e_invest_ELSS_screenText}
    Verify Page Contains Element  ${KU_W_invest_growth}
    Verify Page Contains Element  ${KU_W_invest_dividend}
    Verify Page Contains Element  ${KU_W_invest_openEnded}
    Verify Page Contains Element  ${KU_W_invest_closeEnded}
    Verify Page Contains Element  ${KU_W_invest_startDateLabel}
    Verify Page Contains Element  ${KU_W_invest_endDateLabel}
    Verify Page Contains Element  ${KU_W_invest_minInvestmentLabel}
    Verify Element And Text  ${KU_W_invest_filteredFund}  ${e_invest_ELSS_filteredFundText} 
    Verify Filter Navigation For Funds