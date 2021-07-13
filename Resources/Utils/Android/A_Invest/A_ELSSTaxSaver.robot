*** Keywords ***

Verify Android PreLogin NFO Page
    Log To Console  NFO
    Wait And Click Element On Android  ${KU_A_invest_balancedAdvantage_tilesTitle}
    Sleep  1s
    Verify Text On Page  ${e_invest_ELSS_topRated_investorChoiceFilter} 
    Sleep  1s
    Verify Signup Link And Kuvera Logo
    Verify Text On Page  ${e_invest_growth}
    Verify Text On Page  ${e_invest_dividend}
    Verify Navigation To Tabs For Funds
    Go Back