*** Keywords ***

Verify PostLogin US Stocks Portflio Menu Navigation With KYC
    Log To Console  US Stocks Portfolio Navigation With KYC
    Navigate To PortFolio Tab And Verify Investment Title  ${KU_W_portfolio_USStocks_title}  ${e_invest_USStocks}  ${KU_W_portfolio_USStocks_subtitle}  ${e_portfolio_USStocks_subTitle}
    Wait And Click  ${KU_W_portfolio_USStocks_title}
    Verify Explore Or Import Menus Page  ${KU_W_portfolio_USStocks_exploreUSStocks}  ${KU_W_portfolio_USStocks_exploreUSSDesc}  ${KU_W_portfolio_USStocks_importTitle}  ${KU_W_portfolio_USStocks_importDesc}
    Verify Navigation To Explore Funds And Import Tab  ${KU_W_portfolio_USStocks_exploreUSStocks}  ${KU_W_portfolio_USStocks_allUSSStocks}  ${e_portfolio_USStocks_allUSStocks}   ${KU_W_portfolio_USStocks_importTitle}  ${KU_W_postlogin_USStocks_linkYourVestedAcc}  ${e_postlogin_USStocks_linkYourVestedAcc}
    Go Back
    Wait And Click  ${KU_W_portfolio_USStocks_closePopup}
    Wait And Click  ${KU_W_postlogin_importPortfolioTab}
    Wait And Click  ${KU_W_dashboard_trackInvest_USStocks}
    Verify Link Your Vested Account And Select Account Screen
    Verify 4 Steps Screen
    Wait For Element Visibility  ${KU_W_postlogin_portfolio}
    Verify Page Contains Element  ${KU_W_postlogin_portfolio}
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_USStocksTab}
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_totalValLabel}
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_investedLabel} 
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_cashLabel} 
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_summaryRow}
    
Verify PostLogin US Stocks Portflio Menu Navigation Without KYC
    Log To Console  US Stocks Portfolio Navigation Without KYC
    Navigate To PortFolio Tab And Verify Investment Title  ${KU_W_portfolio_USStocks_title}  ${e_invest_USStocks}  ${KU_W_portfolio_USStocks_subtitle}  ${e_portfolio_USStocks_subTitle}
    Wait And Click  ${KU_W_postlogin_importPortfolioTab}
    Wait And Click  ${KU_W_dashboard_trackInvest_USStocks}
    Verify Link Your Vested Account And Select Account Screen
    Verify 4 Steps Screen
    Wait For Element Visibility  ${KU_W_portfolio_USStocks_completeAccSetup}
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_completeAccSetup}
       
Verify Link Your Vested Account And Select Account Screen
    Wait For Element Visibility  ${KU_W_portfolio_USStocks_vestedAccDesc} 
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_vestedAccDesc} 
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_verifyEmail}
    Verify Element And Text  ${KU_W_portfolio_USStocks_onboardingText}  ${e_portfolio_USStocks_onbaoarding}
    Input Text  ${KU_W_portfolio_USStocks_vestedAccEmail}  ${e_postlogin_emailID}
    Wait And Click  ${KU_W_postlogin_proceedBtn}
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_selectAcc}
    Verify Element And Text  ${KU_W_portfolio_USStocks_selectAccDesc}  ${e_portfolio_USStocks_selectAccDesc}
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_accName}
    Wait And Click  ${KU_W_postlogin_proceedBtn}
    Sleep  2s
    Enter OTP Postlogin
    
Verify 4 Steps Screen
    Wait For Element Visibility  ${KU_W_portfolio_USStocks_stepsTitle}
    Verify Element And Text  ${KU_W_portfolio_USStocks_stepsTitle}  ${e_portfolio_USStocks_stepsTitle}
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_stepsTitle1}
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_stepsTitle2}
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_stepsTitle3}
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_stepsTitle4}
    Verify Element And Text  ${KU_W_portfolio_USStocks_subTitle1}  ${e_portfolio_USStocks_subTitle1}
    Verify Element And Text  ${KU_W_portfolio_USStocks_subTitle2}  ${e_portfolio_USStocks_subTitle2}
    Verify Element And Text  ${KU_W_portfolio_USStocks_subTitle3}  ${e_portfolio_USStocks_subTitle3}
    Verify Element And Text  ${KU_W_portfolio_USStocks_subTitle4}  ${e_portfolio_USStocks_subTitle4}
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_img1}
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_img2}
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_img3}
    Verify Page Contains Element  ${KU_W_portfolio_USStocks_img4}
    Wait And Click  ${KU_W_portfolio_USStocks_stepsPopupClose}