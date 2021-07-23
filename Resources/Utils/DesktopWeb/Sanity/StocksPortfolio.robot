*** Keywords ***

Verify PostLogin Prod Stocks Portfolio Menu Navigation
    Log To Console  Stocks Portfolio Navigation With KYC
    Wait And Click  ${KU_W_postlogin_portfolioTab}
    Sleep  3s
    ${isElementVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_portfolio_stocks_manageStocks}
    IF  ${isElementVisible}
        Wait And Click  ${KU_W_portfolio_stocks_manageStocks}
        Wait And Click  ${KU_W_portfolio_stocks_importStocksLink}
    ELSE
        Verify Element And Text  ${KU_W_portfolio_stocks_title}  ${e_invest_stocks}  
        Verify Element And Text  ${KU_W_portfolio_stocks_subtitle}  ${e_portfolio_stocks_subTitle}
        Wait And Click  ${KU_W_portfolio_stocks_title}
        Verify Page Contains Element  ${KU_W_portfolio_doYouWantTo}
        Verify Explore Or Import Menus Page  ${KU_W_portfolio_stocks_exploreStocks}  ${KU_W_portfolio_stocks_exploreStocksDesc}  ${KU_W_portfolio_stocks_importStocks}  ${KU_W_portfolio_stocks_importStocksDesc}
        Verify Navigation To Explore Funds And Import Tab  ${KU_W_portfolio_stocks_exploreStocks}  ${KU_W_portfolio_stocks_allStocks}  ${e_portfolio_stocks_allStocksText}   ${KU_W_portfolio_stocks_importStocks}  ${KU_W_postlogin_stocks_importStocksPopup}  ${e_postlogin_stocks_importPopup}
        Go Back
        Go Back
        Wait And Click  ${KU_W_postlogin_importPortfolioTab}
        Wait And Click  ${KU_W_dashboard_trackInvest_stocks}
    END
    # Zerodha
    Wait And Click  ${KU_W_portfolio_stocks_zerodhaBroker}
    Switch Window  locator=NEW
    Input Text  ${KU_W_portfolio_stocks_zerodhaUserID}  ${e_portfolio_stocks_zerodhaUserID}
    Input Text  ${KU_W_portfolio_stocks_brokerPWD}  ${e_portfolio_stocks_brokerPWD}
    Wait And Click  ${KU_W_portfolio_loginBtn}
    Sleep  2s
    Input Text  ${KU_W_portfolio_stocks_zerodhaPIN}  ${e_portfolio_stocks_zerodhaPIN}
    Wait And Click  ${KU_W_postlogin_continue}
    Sleep  3s
    Switch Window  browser=Kuvera
    Verify Page Contains Element  ${KU_W_portfolio_stocks_importSuccessful}
    Wait And Click  ${KU_W_postlogin_okayBtn}
    Wait And Click  ${KU_W_postlogin_importPortfolioTab}
    Wait And Click  ${KU_W_dashboard_trackInvest_stocks}
    # Upstox
    Wait And Click  ${KU_W_portfolio_stocks_upstok}
    Switch Window  locator=NEW
    Input Text  ${KU_W_portfolio_stocks_upstokID}  ${e_portfolio_stocks_upstokID}
    Input Text  ${KU_W_portfolio_stocks_brokerPWD}  ${e_portfolio_stocks_trustline_upstox_PWD}
    Input Text  ${KU_W_portfolio_stocks_upstokYOB}  ${e_portfolio_stocks_upstokYOB}
    Wait And Click  ${KU_W_portfolio_logIN}
    Sleep  3s
    Switch Window  browser=Kuvera
    Wait For Element Visibility  ${KU_W_portfolio_stocks_importSuccessful}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_importSuccessful}
    Wait And Click  ${KU_W_postlogin_okayBtn}
    # Edit Unit Stocks
    Verify Edit Unit Stocks
    Wait And Click  ${KU_W_postlogin_homeTab}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_importedStocks}

Verify Edit Unit Stocks
    Wait And Click  ${KU_W_portfolio_stocks_manageStocks}
    Wait And Click  ${KU_W_portfolio_stocks_modifyLink}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_selectStocksTitle}
    Wait And Click  ${KU_W_portfolio_stocks_searchStocks} 
    Input Text  ${KU_W_portfolio_stocks_searchStocks}  ${e_portfolio_stocks_name}
    Verify Element And Text  ${KU_W_portfolio_stocks_searchedStocks}  ${e_portfolio_stocks_searchedName}
    Wait And Click  ${KU_W_portfolio_stocks_searchedStocks}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_stocksName}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_stocksPrice}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_stocksPer}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_stocksReturn} 
    Verify Page Contains Element  ${KU_W_portfolio_stocks_totalUnits}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_timestamp}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_broker}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_brokerUpstox}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_unitsAvailable}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_enterNumOfUnits}
    Wait And Click  ${KU_W_portfolio_stocks_changeLink}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_changeBrokerTitle}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_yourBrokers}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_yourBrokersName}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_yourBrokersImg}
    Wait And Click  ${KU_W_portfolio_stocks_backImg}
    Wait For Element Visibility  ${KU_W_portfolio_stocks_enterUnit}
    Verify Disabled Element  ${KU_W_postlogin_disabledBtn}
    Input Text  ${KU_W_portfolio_stocks_enterUnit}  ${e_portfolio_stocks_enterUnit}
    Wait And Click  ${KU_W_postlogin_updateBtn}
    Verify Element And Text  ${KU_W_toastMssg}  ${e_portfolio_stocks_updateStocks}
    Verify Page Contains Element  ${KU_W_postlogin_portfolio}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_stock}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_numOfUnits}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_valueColumn}
    Scroll Untill View  ${KU_W_portfolio_stocks_name}
    Wait And Click  ${KU_W_portfolio_stocks_name}
    Verify Element And Text  ${KU_W_portfolio_stocks_stockInfo}  ${e_portfolio_stocks_name}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_currentPrice}
    Wait And Click  ${KU_W_portfolio_stocks_editLink}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_changeBrokerTitle}
    Go Back
    Wait And Click  ${KU_W_portfolio_stocks_moreDetsIcon}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_buyStocksTitle}
    Go Back
    Verify Page Contains Element  ${KU_W_portfolio_stocks_notAllocatedGoals}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_tagGoalsLink}
    Verify Page Contains Element  ${KU_W_portfolio_stocks_goalsAllocationTab}
    Wait And Click  ${KU_W_portfolio_stocks_brokersTab} 
    Verify Page Contains Element  ${KU_W_portfolio_stocks_brokersRow} 