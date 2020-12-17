*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Watchlist Icon 
    [Arguments]   ${watchlistBtn}
    Wait For Element Visibility  ${watchlistBtn}
    Verify Page Contains Element  ${watchlistBtn} 
    Wait For Element Visibility  ${watchlistBtn} 
    Click Element  ${watchlistBtn}

Verify Search And Sort
    [Arguments]  ${searchBar}  ${searchText}  ${searchTextField}  ${sortButton} 
    Verify Element And Text  ${searchBar}  ${searchText}
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
    Verify Page Contains Element  ${KU_W_invest_topGainerAndIndia_watchListBtn}
    Go Back

Verify Filter Navigation For TopGainer and 52 WkHighIndia   
    [Arguments]  ${watchListHeading}  ${watchlistHeadingText}  ${sortYearFor52High}  ${watchListBtn}
    # All
    Click Element  ${KU_W_invest_stocks_all}
    Verify Search And Sort  ${KU_W_searchBarForTopGainerAnd52WIndia}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_searchTextFieldForTopGainerAndIndia}  ${KU_W_invest_sort_topGainerAndIndia}
    # WatchList
    Click Element  ${KU_W_invest_watchList}
    Verify Element And Text  ${watchListHeading}  ${watchlistHeadingText} 
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
    Log To Console   ${fundlist} 
    Run Keyword If   ${fundlist}>0  Verify WatchList Button For TopGainer and 52WkHighIndia
    ...    ELSE IF   ${fundlist}==0  Verify No Stocks Screen For TopGainer and 52WkHighIndia  ${KU_W_invest_topGainerAndIndia_watchListBtn}
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
    Verify Page Contains Element  ${KU_W_invest_USETFAnd52WUS_watchlistBtn}
    Go Back

Verify Filter Navigation For USETF and 52WkHighUS  
    [Arguments]  ${watchListHeading}  ${watchlistHeadingText}  ${sortYearFor52High}  ${watchListBtn}
    # All
    Click Element  ${KU_W_invest_stocks_all}
    Verify Search And Sort  ${KU_W_searchBarForUSETFAnd52WUS}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_searchTextFieldForETFAndUS}  ${KU_W_invest_sort_UTF_USA}
    # WatchList
    Click Element  ${KU_W_invest_watchList}
    Wait For Element Visibility  ${watchListHeading}
    Verify Element And Text  ${watchListHeading}  ${watchlistHeadingText} 
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
    Log To Console   ${fundlist} 
    Run Keyword If   ${fundlist} > 0  Verify WatchList Button For UTF and 52WkHighUS
    ...    ELSE IF   ${fundlist} == 0  Verify No Stocks Screen For UTF and 52WkHighUS  ${KU_W_invest_USETFAnd52WUS_watchlistBtn}
    ...    ELSE  Log To Console  Completed

Verify PreLogin Invest Landing Page
    Wait For Element Visibility  ${KU_W_investLink} 
    Click Element  ${KU_W_investLink} 
    Sleep  1s
    Verify Language Switch Login And Signup Link
    # Save Smart
    Wait For Element Visibility  ${KU_W_invest_saveSmartTitle}  
    Verify Element And Text  ${KU_W_invest_saveSmartTitle}  ${e_invest_saveSmartTitleText}
    Verify Element And Text  ${KU_W_invest_saveSmartSubTitle}  ${e_invest_saveSmartSubText} 
    Click Element   ${KU_W_invest_saveSmartTitle}
    Sleep  5s
    Wait For Element Visibility   ${KU_W_ss_screenTitle}
    Verify Element And Text  ${KU_W_ss_screenTitle}  ${e_invest_ss_screenText}
    Go Back
    # Gilt Funds
    Wait For Element Visibility  ${KU_W_giltFundsTitle} 
    Verify Element And Text  ${KU_W_giltFundsTitle}  ${e_invest_giltFundsTitleText}
    Verify Element And Text  ${KU_W_giltFundsSubTitle}  ${e_invest_giltFundsSubText}
    Verify Gilt Funds Landing Page
    # Ultra-Short
    Wait For Element Visibility  ${KU_W_ultraShortTitle} 
    Verify Element And Text  ${KU_W_ultraShortTitle}  ${e_invest_ultraShortTitleText}
    Verify Element And Text  ${KU_W_ultraShortSubTitle}  ${e_invest_ultraShortSubText}
    Verify Ultra Short Landing Page 
    # Bank & PSU Bonds
    Wait For Element Visibility  ${KU_W_bank&PSUBondsTitle} 
    Verify Element And Text  ${KU_W_bank&PSUBondsTitle}  ${e_invest_bank&PSUTitleText}
    Verify Bank And PSU Bonds Landing Page
    # ELSS Tax Saver
    Wait For Element Visibility  ${KU_W_ELSSTaxSaverTitle}
    Verify Element And Text  ${KU_W_ELSSTaxSaverTitle}  ${e_invest_ELSSTaxTitleText}
    Verify Element And Text  ${KU_W_ELSSTaxSaverSubTitle}  ${e_invest_ELSSTaxSubText}
    Verify ELSS Tax Saver Landing Page
    # Digital Gold
    Wait For Element Visibility  ${KU_W_digitalGoldTitle}
    Verify Element And Text  ${KU_W_digitalGoldTitle}  ${e_invest_digitalGoldTitleText}
    Verify Element And Text  ${KU_W_digitalGoldSubTitle}  ${e_invest_digitalGoldSubText}
    Verify Page Contains Image  ${KU_W_goldIconImage} 
    Click Element  ${KU_W_digitalGoldTitle}
    Wait For Element Visibility  ${KU_W_dg_screenTitle} 
    Verify Element And Text  ${KU_W_dg_screenTitle}  ${e_invest_digiGold_screenText} 
    Go Back
    # US ETF
    Wait For Element Visibility  ${KU_W_UTFTitle}
    Sleep  2s
    Verify Element And Text  ${KU_W_UTFTitle}  ${e_invest_USETFTitleText}
    Verify Element And Text  ${KU_W_UTFSubTitle}  ${e_invest_USETFSubText}
    Verify Page Contains Image   ${KU_W_USUTFImage}  
    Verify US ETF Landing Page
    # Equity Index
    Wait For Element Visibility  ${KU_W_equityIndexTitle}
    Verify Element And Text  ${KU_W_equityIndexTitle}  ${e_invest_equityIndexTitleText}
    Verify Element And Text  ${KU_W_equityIndexSubTitle}  ${e_invest_equityIndexSubText} 
    Verify Equity Index Landing Page
    # Sector Funds
    Wait For Element Visibility  ${KU_W_sectorFundsTitle}
    Verify Element And Text  ${KU_W_sectorFundsTitle}   ${e_invest_sectorFundsTitleText}
    Verify Element And Text  ${KU_W_sectorFundsSubTitle}  ${e_invest_sectorFundsSubTitleText} 
    Verify Sector Funds Landing Page
    # Value Funds
    Wait For Element Visibility  ${KU_W_valueFundsTitle} 
    Verify Element And Text  ${KU_W_valueFundsTitle}  ${e_invest_valueFundsTitleText}
    Verify Element And Text  ${KU_W_valueFundsSubTitle}  ${e_invest_valueFundsSubTitleText}
    Verify Value Funds Landing Page
    # Top Gainers
    Wait For Element Visibility  ${KU_W_topGainerTitle} 
    Verify Element And Text  ${KU_W_topGainerTitle}  ${e_invest_topGainersTitleText} 
    Verify Element And Text  ${KU_W_topGainerSubTitle}  ${e_invest_topGainersSubTitleText}
    Verify Top Gainers Landing Page
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
    Scroll Untill View  ${KU_W_mutualFund}
    Verify Element And Text  ${KU_W_mutualFund}  ${e_invest_mf_titleText} 
    Wait For Element Visibility  ${KU_W_mutualFund}
    Click Element  ${KU_W_mutualFund}
    Wait For Element Visibility  ${KU_W_mutualFundScreen}
    Verify Element And Text   ${KU_W_mutualFundScreen}  ${e_invest_searchBarText} 
    Go Back
    # Digital Gold
    Verify Element And Text  ${KU_W_digitalGold}  ${e_invest_digGold_titleText}
    Click Element  ${KU_W_digitalGold}
    Verify Digital Gold Landing Page
    Sleep  1s
    # Stocks
    Scroll Untill View  ${KU_W_stocks}
    Sleep  4s
    Wait For Element Visibility  ${KU_W_stocks}
    Verify Element And Text  ${KU_W_stocks}  ${e_invest_stocks_titleText}
    Wait For Element Visibility  ${KU_W_stocks}
    Click Element  ${KU_W_stocks}
    Wait For Element Visibility  ${KU_W_stocksScreen} 
    Verify Element And Text  ${KU_W_stocksScreen}  ${e_invest_stocks_screenText} 
    Go Back
    # US Stocks
    Verify Element And Text  ${KU_W_USStocks}  ${e_invest_USStocks_titleText}
    Wait For Element Visibility  ${KU_W_USStocks}
    Click Element  ${KU_W_USStocks}
    Wait For Element Visibility  ${KU_W_USStocksScreen}
    Verify Element And Text  ${KU_W_USStocksScreen}  ${e_invest_USStocks_screenText}
    Go Back
    Sleep  1s
    # Save Smart
    Verify Element And Text  ${KU_W_saveSmart}  ${e_invest_ss_titleText}
    Wait For Element Visibility  ${KU_W_saveSmart}
    Click Element  ${KU_W_saveSmart}
    Validate SaveSmart Landing Page