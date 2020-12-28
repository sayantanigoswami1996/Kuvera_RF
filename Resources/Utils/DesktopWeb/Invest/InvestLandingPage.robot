*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Invest Landing Page
    Wait For Element Visibility  ${KU_W_investLink} 
    Click Element  ${KU_W_investLink} 
    Sleep  1s
    Verify Language Switch Login And Signup Link
    # 52 W High India
    Wait For Element Visibility  ${KU_W_52WHighIndiaTitle}  
    Verify Element And Text  ${KU_W_52WHighIndiaTitle}  ${e_invest_52WHighIndiaTitleText} 
    Verify Element And Text  ${KU_W_52WHighIndiaSubTitle}  ${e_invest_52WHighIndiaSubTitleText}
    Verify 52WkHigh India Landing Page
    # 52 W High USA
    Wait For Element Visibility  ${KU_W_52WHighUSTitle}
    Verify Element And Text  ${KU_W_52WHighUSTitle}  ${e_invest_52WHighUSTitleText} 
    Verify Element And Text  ${KU_W_52WHighUSSubTitle}  ${e_invest_52WHighUSSubTitleText}
    Verify 52WkHigh US Landing Page
    # Health Premium
    Wait For Element Visibility  ${KU_W_healthPremiumTitle}
    Verify Element And Text  ${KU_W_healthPremiumTitle}  ${e_invest_healthPremiumTitleText}  
    Verify Element And Text  ${KU_W_checkPremiumBtn}  ${e_invest_checkPremiumSubText}
    Click Element  ${KU_W_checkPremiumBtn} 
    Verify Element And Text   ${KU_W_insureHeaderTitle}  ${e_insure_headerTitleText}
    Go Back
    # Lower Bar - Assets
    # Mutual Fund
    Verify Element And Text  ${KU_W_exploreMoreTitle}  ${e_invest_stock_exploreMoreTxt}
    Wait For Element Visibility  ${KU_W_mutualFund}
    Sleep  2s
    Scroll Untill View  ${KU_W_mutualFund}
    Verify Element And Text  ${KU_W_mutualFund}  ${e_invest_mf_titleText} 
    Wait For Element Visibility  ${KU_W_mutualFund}
    Verify Mutual Fund Landing Page
    Sleep  1s
    # Stocks
    Scroll Untill View  ${KU_W_stocks}
    Wait For Element Visibility  ${KU_W_stocks}
    Verify Element And Text  ${KU_W_stocks}  ${e_invest_stocks_titleText}
    Wait For Element Visibility  ${KU_W_stocks}
    Verify Stocks Landing Page
    # US Stocks
    Verify Element And Text  ${KU_W_USStocks}  ${e_invest_USStocks_titleText}
    Wait For Element Visibility  ${KU_W_USStocks}
    Verify US Stocks Landing Page
    
Verify Watchlist Icon 
    [Arguments]   ${watchlistBtn}
    Wait For Element Visibility  ${watchlistBtn}
    Verify Page Contains Element  ${watchlistBtn} 
    Wait For Element Visibility  ${watchlistBtn} 
    Click Element  ${watchlistBtn}

Verify Search And Sort
    [Arguments]  ${searchBar}  ${searchLabel}  ${searchTextField}  ${sortButton} 
    Verify Element And Text  ${searchBar}  ${searchLabel}
    Verify Page Contains Element  ${searchTextField}
    Verify Element And Text  ${sortButton}  ${e_invest_sortBtnText}

Verify Filter And Clear All        
    Verify Element And Text  ${KU_W_filter}  ${e_invest_filterBtnText}
    Verify Element And Text  ${KU_W_clearAll}  ${e_invest_clearAllBtnTxt}

Verify Filter Navigation For Funds
    # InstaRedeem
    Wait For Element Visibility  ${KU_W_invest_instaRedeem}
    Click Element  ${KU_W_invest_instaRedeem}
    Sleep  2s
    Wait For Element Visibility  ${KU_W_invest_instaRedeem_fundText}
    Verify Element And Text  ${KU_W_invest_instaRedeem_fundText}  ${e_invest__instaredeem_fundText}
    # Save Taxes
    Click Element  ${KU_W_invest_saveTaxes}
    Verify Search And Sort  ${KU_W_searchBarForFunds}  ${e_invest_searchBarText}  ${KU_W_invest_searchTextFieldForFunds}  ${KU_W_invest_sort}
    # Top Rated
    Click Element  ${KU_W_invest_topRated}
    Verify Search And Sort  ${KU_W_searchBarForFunds}  ${e_invest_searchBarText}  ${KU_W_invest_searchTextFieldForFunds}  ${KU_W_invest_sort} 
    # Investor Choice
    Click Element  ${KU_W_invest_investorChoice}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_invest_watchListBtn}
    Verify Page Contains Element  ${KU_W_invest_watchListBtn}
    # New Funds
    Click Element  ${KU_W_invest_newFunds}
    Verify Element And Text  ${KU_W_invest_newfunds_openEndedSwitch}  ${e_invest__newfunds_openSwitchText}
    # Top Searched
    Click Element  ${KU_W_invest_topSearched}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_invest_watchListBtn}
    Verify Page Contains Element  ${KU_W_invest_watchListBtn}
    Go Back

Verify No Stocks Screen For TopGainer and 52WkHighIndia
    [Arguments]   ${watchListBtn}
    Scroll Untill View  ${KU_W_invest_52WLow_noStocksAvailable}
    Wait For Element Visibility  ${KU_W_invest_52WLow_noStocksAvailable}
    Verify Element And Text  ${KU_W_invest_52WLow_noStocksAvailable}  ${e_invest__52WLow_noStocksText}
    Verify Element And Text  ${KU_W_invest_52WHighLow_allStockLink}  ${e_invest__52WLow_allStockLinkText} 
    Sleep  2s
    Wait For Element Visibility  ${KU_W_invest_52WHighLow_allStockLink}
    Click Element  ${KU_W_invest_52WHighLow_allStockLink}
    Wait For Element Visibility  ${watchListBtn}
    Verify Page Contains Element  ${watchListBtn}
    Go Back
    Go Back

Verify WatchList Button For TopGainer and 52WkHighIndia
    Verify Page Contains Element   ${KU_W_invest_stocks_topGainerAndIndia_watchListBtn}
    Go Back

Verify Filter Navigation For Stocks TopGainer and 52 WkHighIndia   
    [Arguments]  ${watchListHeader}  ${watchlistHeaderText}  ${sortYearFor52High}  ${watchListBtn}
    # All
    Click Element  ${KU_W_invest_stocks_all}
    Verify Search And Sort  ${KU_W_stocktopgainerindia_searchBar}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_stocktopgainerindia_searchTextField}  ${KU_W_invest_sort_topGainerAndIndia}
    # WatchList
    Click Element  ${KU_W_invest_watchList}
    Verify Element And Text  ${watchListHeader}  ${watchlistHeaderText} 
    # Gainers
    Click Element  ${KU_W_invest_stocks_gainers}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__stocks_sortYearText}
    Wait For Element Visibility  ${watchListBtn}
    Verify Page Contains Element  ${watchListBtn}
    # Losers
    Click Element  ${KU_W_invest_stocks_losers}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__stocks_sortYearText}
    Wait For Element Visibility  ${watchListBtn}
    Verify Page Contains Element  ${watchListBtn}
    # 52Whigh
    Click Element  ${KU_W_invest_stocks_52WHigh}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${sortYearFor52High}
    Wait For Element Visibility  ${watchListBtn}
    Verify Page Contains Element  ${watchListBtn}
    # 52Wlow
    Click Element  ${KU_W_invest_stocks_52WLow}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${sortYearFor52High}
    Sleep  3s
    ${fundlist} =  Get Element Count   xpath=//div[@class='b-stocks-explore__stock-row-info']
    Run Keyword If   ${fundlist}>0  Verify WatchList Button For TopGainer and 52WkHighIndia
    ...    ELSE IF   ${fundlist}==0  Verify No Stocks Screen For TopGainer and 52WkHighIndia  ${KU_W_invest_stocks_topGainerAndIndia_watchListBtn}
    ...    ELSE  Log To Console  Completed

Verify No Stocks Screen For UTF and 52WkHighUS
    [Arguments]   ${watchListBtn}
    Verify Page Contains Element  ${KU_W_invest_noStocksForUTFAnd52WUS}
    Verify Element And Text  ${KU_W_invest_noStocksForUTFAnd52WUS}  ${e_invest__52WLow_noStocksText}
    Verify Element And Text  ${KU_W_invest_allStockLinkForUTFAnd52WUS}  ${e_invest__USETF_allStockLinkText} 
    Sleep  2s
    Wait For Element Visibility  ${KU_W_invest_allStockLinkForUTFAnd52WUS}
    Click Element  ${KU_W_invest_allStockLinkForUTFAnd52WUS}
    Wait For Element Visibility  ${watchListBtn}
    Verify Page Contains Element  ${watchListBtn}
    Go Back

Verify WatchList Button For UTF and 52WkHighUS
    Verify Page Contains Element  ${KU_W_invest_USStocksUSETFAnd52WUS_watchlistBtn}
    Go Back

Verify Filter Navigation For USStocks USETF and 52WkHighUS  
    [Arguments]  ${watchListHeader}  ${watchlistHeaderText}  ${sortYearFor52High}  ${watchListBtn}
    # All
    Click Element  ${KU_W_invest_stocks_all}
    Verify Search And Sort  ${KU_W_USStocksETF52WUS_searchBar}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_USStocksETFAnd52WUS_searchTextField}  ${KU_W_invest_sort_USStocks_UTF_USA}
    # WatchList
    Click Element  ${KU_W_invest_watchList}
    Wait For Element Visibility  ${watchListHeader}
    Verify Element And Text  ${watchListHeader}  ${watchlistHeaderText} 
    # Gainers
    Click Element  ${KU_W_invest_stocks_gainers}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__stocks_sortYearText}
    Wait For Element Visibility  ${watchListBtn}
    Verify Page Contains Element  ${watchListBtn}
    # Losers
    Click Element  ${KU_W_invest_stocks_losers}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__stocks_sortYearText}
    Wait For Element Visibility  ${watchListBtn}
    Verify Page Contains Element  ${watchListBtn}
    # 52Whigh
    Click Element  ${KU_W_invest_stocks_52WHigh}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${sortYearFor52High}
    Wait For Element Visibility  ${watchListBtn}
    Verify Page Contains Element  ${watchListBtn}
    # 52Wlow
    Click Element  ${KU_W_invest_stocks_52WLow}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${sortYearFor52High}
    Sleep  3s
    ${fundlist} =  Get Element Count   xpath=//div[@class='b-stock-item b-stock-items__content__item']
    Run Keyword If   ${fundlist}>0  Verify WatchList Button For UTF and 52WkHighUS
    ...    ELSE IF   ${fundlist}==0  Verify No Stocks Screen For UTF and 52WkHighUS  ${KU_W_invest_USStocksUSETFAnd52WUS_watchlistBtn}
    ...    ELSE  Log To Console  Completed

Verify Explore Tags For Stocks And USStocks
    [Arguments]  ${sortYear}  
    Verify Page Contains Element  ${KU_W_invest_US_stocks_exploreTags}
    Click Element  ${KU_W_invest_US_stocks_exploreTagLink1} 
    Wait For Element Visibility  ${sortYear}
    Verify Element And Text  ${sortYear}  ${e_invest_stocks_sortYear}
    Go Back
    Wait For Element Visibility  ${KU_W_invest_US_stocks_exploreTagLink2}
    Click Element  ${KU_W_invest_US_stocks_exploreTagLink2}
    Wait For Element Visibility  ${sortYear}
    Verify Element And Text  ${sortYear}  ${e_invest_stocks_sortYear}
    Go Back

Verify Performance Chart For Stocks And US Stocks
    [Arguments]  ${performanceChart}
    Wait For Element Visibility  ${performanceChart} 
    Verify Page Contains Element  ${performanceChart}
    Scroll Untill View  ${KU_W_invest_US_stocks_performancePeriod}
    Verify Page Contains Element  ${KU_W_invest_US_stocks_performancePeriod}
    ${periodlist} =  Get Element Count  xpath=(//div[contains(@class,'b-period-option_item')])
    FOR  ${i}  IN RANGE  1  ${periodlist}+1
        Sleep  2s
        Click Element  xpath=(//div[contains(@class,'b-period-option_item')])[${i}]
        Wait For Element Visibility  ${performanceChart}
        Verify Page Contains Element  ${performanceChart}
    END

Verify Compare With Other
    ${comparePeriodlist} =  Get Element Count  xpath=//img[@class='b-app-standard-table__sort b-app-standard-table__sort--asc']
    FOR  ${i}  IN RANGE  1  ${comparePeriodlist}+1
        Sleep  2s
        Verify Page Contains Image  xpath=(//img[@class='b-app-standard-table__sort b-app-standard-table__sort--asc'])[${i}]
        Click Element  xpath=(//img[@class='b-app-standard-table__sort b-app-standard-table__sort--asc'])[${i}]
        Verify Page Contains Element  xpath=(//div[@class='b-app-standard-table__column-data'])[${i}+1]
        Verify Page Contains Image  xpath=(//img[@class='b-app-standard-table__sort b-app-standard-table__sort--desc'])[${i}]
        Click Element  xpath=(//img[@class='b-app-standard-table__sort b-app-standard-table__sort--desc'])[${i}]
        Verify Page Contains Element  xpath=(//div[@class='b-app-standard-table__column-data'])[${i}+1]
    END  

Verify Add Option 
    [Arguments]  ${addBtn}  ${popupHeader}  ${closePopup}
    Scroll Untill View  ${addBtn}
    Verify Page Contains Element  ${addBtn}
    Wait For Element Visibility  ${addBtn}
    Click Element  ${addBtn}
    Verify Page Contains Element  ${popupHeader}
    Click Element  ${closePopup}

Verify Share PDF And Watchlist Option
    [Arguments]  ${shareIcon}  ${sharePopup}  ${PDFIcon}  ${watchlistIcon}
    Verify Page Contains Element  ${shareIcon}
    Wait For Element Visibility  ${shareIcon}
    Click Element  ${shareIcon}
    Wait For Element Visibility  ${sharePopup}
    Verify Page Contains Element  ${sharePopup}
    Verify Page Contains Element  ${PDFIcon}
    Click Element  ${PDFIcon}
    Verify Page Contains Element  ${watchlistIcon}
    Click Element  ${watchlistIcon}
    Verify Login Page