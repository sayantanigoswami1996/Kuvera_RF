*** Keywords ***

Verify PreLogin Sector Funds Landing Page
    Log To Console  Sector Funds
    Wait For Element Visibility  ${KU_W_sectorFundsTitle} 
    Click Element  ${KU_W_sectorFundsTitle} 
    Wait For Element Visibility  ${KU_W_invest_fundsScreenTitle}   
    Verify Login And Signup On Prelogin
    Verify Search And Sort  ${KU_W_searchBarForFunds}  ${e_invest_searchBarText}  ${KU_W_invest_searchTextFieldForFunds}  ${KU_W_invest_sort}
    Verify Filter And Clear All
    Wait For Element Visibility  ${KU_W_invest_fundsScreenTitle}
    Verify Element And Text  ${KU_W_invest_fundsScreenTitle}  ${e_invest_sectorFunds_screenText}
    Verify Element And Text  ${KU_W_invest_sortYear}   ${e_invest__funds_sortYearText}
    Verify Element And Text  ${KU_W_invest_filteredFund}  ${e_invest_sectorFunds_filteredFundText}
    Verify Pre And Post Login Action On Watchlist For Funds  ${KU_W_watchlistIcon}
    Verify Filter Navigation For Funds