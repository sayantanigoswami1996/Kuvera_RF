*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify US Stocks Landing Page
    Log To Console  US Stocks
    Scroll Untill View  ${KU_W_USStocks}
    Sleep  3s
    Wait For Element Visibility  ${KU_W_USStocks}
    Click Element  ${KU_W_USStocks}
    Wait For Element Visibility  ${KU_W_invest_USStocksScreen}
    Verify Element And Text  ${KU_W_invest_USStocksScreen}  ${e_invest_USStocks_screen}
    Verify Language Switch Login And Signup Link 
    Wait For Element Visibility  ${KU_W_invest_USStocks_exploreBtn}
    Click Element  ${KU_W_invest_USStocks_exploreBtn}
    Wait For Element Visibility  ${KU_W_USStocksETF52WUS_searchBar}
    Verify Search And Sort  ${KU_W_USStocksETF52WUS_searchBar}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_USStocksETFAnd52WUS_searchTextField}  ${KU_W_invest_sort_USStocks_UTF_USA} 
    Verify Element And Text  ${KU_W_invest_USStocks_sortYear}  ${e_invest_stocks_sortYear}
    Verify Page Contains Element  ${KU_W_invest_USStocks_filteredTag}
    Verify Page Contains Element  ${KU_W_invest_USStocks_stockPrice}
    # WatchList
    Verify Watchlist Icon  ${KU_W_invest_USStocksUSETFAnd52WUS_watchlistBtn}
    Verify Login Page
    Verify Filter For US Stocks
    Wait For Element Visibility  ${KU_W_faqbot_icon}
    Run Keyword If  "${ENV}" == "prod"  Verify Page Contains Element  ${KU_W_faqbot_icon}
    ...  ELSE  Log To Console  Staging
    Verify Filter Navigation For USStocks USETF and 52WkHighUS  ${KU_W_invest_USStocksUSETFAnd52WUS_watchListHeader}  ${e_invest_USStocksUSETFAnd52WUS_watchlistHeader}  ${e_invest__52WHighLow_UTF_sortYearText}  ${KU_W_invest_USStocksUSETFAnd52WUS_watchlistBtn}
    Wait For Element Visibility  ${KU_W_invest_USStocks_exploreBtn}
    Click Element  ${KU_W_invest_USStocks_exploreBtn}
    # Iterate the US Stocks detail screen
    FOR  ${i}  IN RANGE  1  2
        @{USStockName} =  Get Json Values  $.USStocks.f${i}  Resources/TestData/USStocks.json 
        Log To Console  ${USStockName}
        Search US Stocks and Verify  ${USStockName}
        Sleep  1s
        Verify US Stocks Details Screen  ${KU_W_invest_USStocks_USStockLink}
    END
    Go Back 
    Go Back

Verify Filter For US Stocks
    Verify Element And Text  ${KU_W_invest_USStocks_defaultFilter}  ${e_invest_US_stocks_defaultFilter}
    Wait For Element Visibility  ${KU_W_invest_USStocks_defaultFilter}
    Click Element  ${KU_W_invest_USStocks_defaultFilter}
    Wait For Element Visibility  ${KU_W_invest_USStocks_healthcareFilter} 
    Click Element  ${KU_W_invest_USStocks_healthcareFilter}
    Verify Element And Text  ${KU_W_invest_USStocks_defaultFilter}  ${e_invest_USStocks_healthcareFilter}
    Click Element  ${KU_W_invest_USStocks_clearAll}
    Verify Element And Text  ${KU_W_invest_USStocks_defaultFilter}  ${e_invest_US_stocks_defaultFilter}

Search US Stocks and Verify 
    # Verify Search functionality
    [Arguments]  ${USStockName}
    Wait For Element Visibility  ${KU_W_invest_USStocksETFAnd52WUS_searchTextField}
    Click Element  ${KU_W_invest_USStocksETFAnd52WUS_searchTextField}
    Input Text  ${KU_W_invest_USStocks_searchField}  ${USStockName}  clear=true
    Press Enter Key  ${KU_W_invest_USStocks_searchField}
    Sleep  3s

Verify US Stocks Details Screen
    [Arguments]  ${stockLink}
    Wait For Element Visibility  ${stockLink}
    Click Element  ${stockLink}
    Wait For Element Visibility  ${KU_W_invest_USStocks_stockName}
    Verify Page Contains Element  ${KU_W_invest_USStocks_stockName}
    # Explore Tags
    Verify Explore Tags For Stocks And USStocks  ${KU_W_invest_USStocks_sortYear}
    Wait For Element Visibility  ${KU_W_invest_USStocks_marketPrice}
    Verify Page Contains Element  ${KU_W_invest_USStocks_marketPrice}
    Sleep  2s
    Verify Page Contains Element  ${KU_W_invest_USStocks_change%}
    Verify Page Contains Element  ${KU_W_invest_USStocks_timestamp}  
    Verify Page Contains Element  ${KU_W_invest_USStocks_gainloss%} 
    Verify Page Contains Element  ${KU_W_invest_USStocks_shareIcon}
    Verify Page Contains Element  ${KU_W_invest_USStocks_pdfIcon}
    Verify Page Contains Element  ${KU_W_invest_USStocks_watchlistIcon}
    # Transact Stocks
    Verify Element And Text  ${KU_W_invest_USStocks_transactStocksTitle}  ${e_invest_USStocks_transactStocksTitle}
    Verify Element And Text  ${KU_W_invest_USStocks_transactStocksSubTitle}  ${e_invest_USStocks_transactStocksSubTitle}
    Verify Page Contains Image  ${KU_W_invest_USStocks_vestedLogo}
    Wait For Element Visibility  ${KU_W_invest_USStocks_buyBtn}
    Verify Element And Text  ${KU_W_invest_USStocks_buyBtn}  ${e_invest_USStocks_buyBtn} 
    Click Element  ${KU_W_invest_USStocks_buyBtn}
    Verify Login Page
    Sleep  3s
    Wait For Element Visibility  ${KU_W_invest_USStocks_importHoldingsBtn}
    Verify Element And Text  ${KU_W_invest_USStocks_importHoldingsBtn}  ${e_invest_USStocks_importHoldingsBtn}
    Click Element  ${KU_W_invest_USStocks_importHoldingsBtn}
    Verify Login Page
    # FAQ
    Wait For Element Visibility  ${KU_W_faqbot_icon}
    Run Keyword If  "${ENV}" == "prod"  Verify Page Contains Element  ${KU_W_faqbot_icon}
    ...  ELSE  Log To Console  Staging
    # Graph Section
    Verify Performance Chart For Stocks And US Stocks  ${KU_W_invest_USStocks_performanceChart}
    # Live Market Hours is pending
    # Compare with other Stocks
    Verify Compare Other Stocks Section
    Scroll Untill View  ${KU_W_invest_USStocks_addBtn}
    Verify Page Contains Element  ${KU_W_invest_USStocks_addBtn}
    Click Element  ${KU_W_invest_USStocks_addBtn}
    Verify Page Contains Element  ${KU_W_invest_USStocks_addStocksPopupHeader}
    Click Element  ${KU_W_invest_USStocks_closePopup}
    # Company URL and SubTitle
    Scroll Untill View  ${KU_W_invest_USStocks_companyHeader}
    Verify Page Contains Element  ${KU_W_invest_USStocks_companyHeader}
    Verify Element And Text  ${KU_W_invest_USStocks_companyHeader_about}  ${e_invest_USStocks_companyHeader_about}
    Verify Page Contains Element  ${KU_W_invest_USStocks_companySubHeader}
    Go Back