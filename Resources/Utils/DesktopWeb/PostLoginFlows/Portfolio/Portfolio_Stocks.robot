*** Keywords ***

Verify PostLogin Stocks Portflio Menu Navigation With KYC
    Log To Console  Stocks Portfolio Navigation With KYC
    Navigate To PortFolio Tab And Verify Investment Title  ${KU_W_portfolio_stocks_title}  ${e_invest_stocks}  ${KU_W_portfolio_stocks_subtitle}  ${e_portfolio_stocks_subTitle}
    Wait And Click  ${KU_W_portfolio_stocks_title}
    Verify Page Contains Element  ${KU_W_portfolio_doYouWantTo}
    Verify Explore Or Import Menus Page  ${KU_W_portfolio_stocks_exploreStocks}  ${KU_W_portfolio_stocks_exploreStocksDesc}  ${KU_W_portfolio_stocks_importStocks}  ${KU_W_portfolio_stocks_importStocksDesc}
    Verify Navigation To Explore Funds And Import Tab  ${KU_W_portfolio_stocks_exploreStocks}  ${KU_W_portfolio_stocks_allStocks}  ${e_portfolio_stocks_allStocksText}   ${KU_W_portfolio_stocks_importStocks}  ${KU_W_postlogin_stocks_importStocksPopup}  ${e_postlogin_stocks_importPopup}
    Go Back
    Go Back
    Wait And Click  ${KU_W_postlogin_importPortfolioTab}
    Wait And Click  ${KU_W_dashboard_trackInvest_stocks}
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
    # Wait And Click  ${KU_W_postlogin_importPortfolioTab}
    # Wait And Click  ${KU_W_dashboard_trackInvest_stocks}
    # Wait And Click  ${KU_W_portfolio_stocks_upstok}
    # Switch Window  locator=NEW
    # Input Text  ${KU_W_portfolio_stocks_upstokID}  ${e_portfolio_stocks_upstokID}
    # Input Text  ${KU_W_portfolio_stocks_brokerPWD}  ${e_portfolio_stocks_brokerPWD}
    # Input Text  ${KU_W_portfolio_stocks_upstokYOB}  ${e_portfolio_stocks_upstokYOB}
    # Wait And Click  ${KU_W_portfolio_logIN}
    # Close Window
    # Sleep  2s
    # Switch Window  browser=Kuvera
    # Wait And Click  ${KU_W_postlogin_importPortfolioTab}
    # Wait And Click  ${KU_W_dashboard_trackInvest_stocks}
    # Wait And Click  ${KU_W_portfolio_stocks_aliceBlue}
    # Wait And Click  ${KU_W_portfolio_stocks_clickToBtn}
    # Switch Window  locator=NEW
    # Input Text  ${KU_W_portfolio_stocks_alice_trustlineID}  ${e_portfolio_stocks_aliceID}
    # Input Text  ${KU_W_portfolio_stocks_alice_trustlinePWD}  ${e_portfolio_stocks_brokerPWD}
    # Wait And Click  ${KU_W_portfolio_signIN}
    # Close Window
    # Sleep  2s
    # Switch Window  browser=Kuvera
    Wait And Click  ${KU_W_postlogin_importPortfolioTab}
    Wait And Click  ${KU_W_dashboard_trackInvest_stocks}
    Wait And Click  ${KU_W_portfolio_stocks_trustline}
    Wait And Click  ${KU_W_portfolio_stocks_clickToBtn}
    Switch Window  locator=NEW
    Input Text  ${KU_W_portfolio_stocks_alice_trustlineID}  ${e_portfolio_stocks_trustlineID}
    Input Text  ${KU_W_portfolio_stocks_alice_trustlinePWD}  ${e_portfolio_stocks_brokerPWD}
    Wait And Click ${KU_W_portfolio_signinBtn}
    Input Text  ${KU_W_portfolio_stocks_floor}  ${e_portfolio_stocks_floor}
    Input Text  ${KU_W_portfolio_stocks_birthplace}  ${e_portfolio_stocks_birthplace}
    Wait And Click  ${KU_W_postlogin_submitBtn}
    Close Window
    Sleep  2s
    Switch Window  browser=Kuvera

Verify PostLogin Stocks Portflio Menu Navigation Without KYC
    Log To Console  Stocks Portfolio Navigation Without KYC
    Navigate To PortFolio Tab And Verify Investment Title  ${KU_W_portfolio_stocks_title}  ${e_invest_stocks}  ${KU_W_portfolio_stocks_subtitle}  ${e_portfolio_stocks_subTitle}
    Wait And Click  ${KU_W_portfolio_stocks_title}
    Wait And Click  ${KU_W_portfolio_stocks_importStocks}
    Verify Update PAN Page  ${KU_W_portfolio_updatePAN}  ${KU_W_portfolio_stocks_updatePANDesc}  ${e_portfolio_stocks_updatePANDesc}  ${KU_W_portfolio_stocks_updatePANField}
    Close All PAN Popups
    Wait And Click  ${KU_W_postlogin_importPortfolioTab}
    Wait And Click  ${KU_W_dashboard_trackInvest_stocks}
    Verify Update PAN Page  ${KU_W_portfolio_updatePAN}  ${KU_W_portfolio_stocks_updatePANDesc}  ${e_portfolio_stocks_updatePANDesc}  ${KU_W_portfolio_stocks_updatePANField}
    Wait And Click  ${KU_W_portfolio_stocks_updatePANClose}
    Wait And Click  ${KU_W_postlogin_yesQuit}

Close All PAN Popups
    Wait And Click  ${KU_W_portfolio_stocks_updatePANClose}
    Wait And Click  ${KU_W_postlogin_yesQuit}
    Wait And Click  ${KU_W_portfolio_stocks_stockPopupClose}