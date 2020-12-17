*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Stocks Landing Page
    Log To Console  Stocks
    Click Element  ${KU_W_investLink} 
    Sleep  4s
    Scroll Untill View  ${KU_W_stocks}
    Sleep  4s
    Wait For Element Visibility  ${KU_W_stocks}
    Verify Element And Text  ${KU_W_stocks}  ${e_invest_stocks_titleText}
    Wait For Element Visibility  ${KU_W_stocks}
    Click Element  ${KU_W_stocks}
    Wait For Element Visibility  ${KU_W_invest_stocks_searchLabel}
    Verify Element And Text  ${KU_W_invest_stocks_searchLabel}  ${e_invest_stocks_screenLabel}
    Verify Language Switch Login And Signup Link  
    Verify Search And Sort  ${KU_W_stocktopgainerindia_searchBar}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_stocktopgainerindia_searchTextField}  ${KU_W_invest_sort_topGainerAndIndia}
    Verify Element And Text  ${KU_W_invest_stocks_sortYear}  ${e_invest_stocks_sortYear}
    Verify Page Contains Element  ${KU_W_invest_stocks_fundPrice}
    Verify Page Contains Element  ${KU_W_invest_stocks_filteredTag}
    Verify Sort Duration List
    Verify Filter
    Verify Search Stocks
    Wait For Element Visibility  ${KU_W_faqbot_icon}
    Run Keyword If  "${ENV}" == "prod"  Verify Page Contains Element  ${KU_W_faqbot_icon}
    ...  ELSE  Log To Console  Staging
    Verify Filter Navigation For Stocks TopGainer and 52 WkHighIndia  ${KU_W_invest_stocks_topGainerAndIndia_watchListHeader}  ${e_invest_stocks_watchlistHeader}   ${e_invest__52WHighLow_UTF_sortYearText}  ${KU_W_invest_stocks_topGainerAndIndia_watchListBtn}
    Click Element  ${KU_W_stocks}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_invest_stocks_topGainerAndIndia_watchListBtn}
    Verify Watchlist Icon  ${KU_W_invest_stocks_topGainerAndIndia_watchListBtn}  
    Verify Login Page
    Verify Stock Details Screen

Verify Sort Duration List
    Verify Page Contains Element  ${KU_W_invest_stocks_fundSortVal1D}
    Verify Page Contains Element  ${KU_W_invest_stocks_fundSortVal1Y}
    Verify Page Contains Element  ${KU_W_invest_stocks_fundSortMarketCap}

Verify Filter
    Verify Element And Text  ${KU_W_invest_stocks_defaultFilter}  ${e_invest_stocks_defaultFilter}
    Wait For Element Visibility  ${KU_W_invest_stocks_defaultFilter}
    Click Element  ${KU_W_invest_stocks_defaultFilter}
    Wait For Element Visibility  ${KU_W_invest_stocks_basicMaterialFilter}
    Click Element  ${KU_W_invest_stocks_basicMaterialFilter}
    Verify Element And Text  ${KU_W_invest_stocks_defaultFilter}  ${e_invest_stocks_basicMaterialFilter}
    Click Element  ${KU_W_invest_stocks_clearAll}
    Verify Element And Text  ${KU_W_invest_stocks_defaultFilter}  ${e_invest_stocks_defaultFilter}

Verify Search Stocks
    Wait For Element Visibility  ${KU_W_invest_stocktopgainerindia_searchTextField}
    Click Element  ${KU_W_invest_stocktopgainerindia_searchTextField}
    Wait For Element Visibility  ${KU_W_invest_stocks_searchField}
    Input Text  ${KU_W_invest_stocks_searchField}  ${e_invest_stocks_searchFund}
    Wait For Element Visibility  ${KU_W_invest_stocks_stockName}
    Verify Page Contains Element  ${KU_W_invest_stocks_stockName}
    Wait For Element Visibility  ${KU_W_invest_stocks_clearSearchItem}
    Click Element  ${KU_W_invest_stocks_clearSearchItem}
    # Wait For Element Visibility  ${KU_W_invest_stocks_searchField}
    # Input Text  ${KU_W_invest_stocks_searchField}  ${e_invest_stocks_randomSearchFund}
    # Press Enter Key  ${KU_W_invest_stocks_searchField}
    # Sleep  5s
    # Wait For Element Visibility  ${KU_W_invest_stocks_noSearchResult}
    # Verify Page Contains Element  ${KU_W_invest_stocks_noSearchResult}
    # Wait For Element Visibility  ${KU_W_invest_stocks_noSearchResultImg}
    # Verify Page Contains Image  ${KU_W_invest_stocks_noSearchResultImg}
    # Sleep  5s
    # Click Element  ${KU_W_invest_stocks_clearSearchItem}

Verify Stock Details Screen
    Wait For Element Visibility  ${KU_W_invest_stocks_stockLink}
    Click Element  ${KU_W_invest_stocks_stockLink}
    Wait For Element Visibility  ${KU_W_invest_stocksDetails_stockName}
    Verify Page Contains Element  ${KU_W_invest_stocksDetails_stockName}
    Verify Page Contains Element  ${KU_W_invest_stocks_exploreTags}
    Click Element  ${KU_W_invest_stocks_exploreTagLink1} 
    Verify Element And Text  ${KU_W_invest_stocks_sortYear}  ${e_invest_stocks_sortYear}
    Go Back
    Wait For Element Visibility  ${KU_W_invest_stocks_exploreTagLink2}
    Click Element  ${KU_W_invest_stocks_exploreTagLink2}
    Verify Element And Text  ${KU_W_invest_stocks_sortYear}  ${e_invest_stocks_sortYear}
    Go Back
    Wait For Element Visibility  ${KU_W_invest_stocks_currentMarketPrice}
    Verify Page Contains Element  ${KU_W_invest_stocks_currentMarketPrice}
    Verify Page Contains Element  ${KU_W_invest_stocks_change%}
    Verify Page Contains Element  ${KU_W_invest_stocks_timeStamp} 
    Verify Page Contains Element  ${KU_W_invest_stocks_currentGainLoss%}
    Verify Page Contains Element  ${KU_W_invest_stocks_shareIcon}
    Verify Page Contains Element  ${KU_W_invest_stocks_pdfIcon}
    Verify Page Contains Element  ${KU_W_invest_stocks_watchlistIcon}
    # Buy Stocks Button
    Verify Element And Text  ${KU_W_invest_stocks_buyStocksBtn}  ${e_invest_stocks_buyStocksBtn}
    Click Element  ${KU_W_invest_stocks_buyStocksBtn} 
    Verify Login Page
    # FAQ
    Wait For Element Visibility  ${KU_W_faqbot_icon}
    Run Keyword If  "${ENV}" == "prod"  Verify Page Contains Element  ${KU_W_faqbot_icon}
    ...  ELSE  Log To Console  Staging
    # Graph Section
    Wait For Element Visibility  ${KU_W_invest_stocks_performanceChart} 
    Verify Page Contains Element  ${KU_W_invest_stocks_performanceChart}
    Scroll Untill View  ${KU_W_invest_stocks_performancePeriod} 
    Verify Page Contains Element  ${KU_W_invest_stocks_performancePeriod}
    ${periodlist} =  Get Element Count  xpath=(//div[contains(@class,'b-period-option_item')])
    Log To Console  ${periodlist} 
    FOR  ${i}  IN RANGE  1   ${periodlist}+1
        Sleep  2s
        Click Element  xpath=(//div[contains(@class,'b-period-option_item')])[${i}]
        Verify Page Contains Element  ${KU_W_invest_stocks_performanceChart}
    END




