*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Mutual Fund Landing Page
    Log To Console  Mutual Fund
    Navigate To Invest Page And Verify Explore Options  ${KU_W_mutualFund}  ${e_invest_mf_titleText} 
    Verify Language Switch Login And Signup Link
    Wait For Element Visibility  ${KU_W_invest_mf_fundName}
    Verify Page Contains Element  ${KU_W_invest_mf_growthDividendButton}
    # Iterate the Mutual Fund detail screen
    FOR  ${i}  IN RANGE  1  6
        @{mutualFundName} =  Get Json Values  $.MutualFunds.f${i}  Resources/TestData/MutualFunds.json 
        Log To Console  ${mutualFundName}
        Search Fund and Verify  ${mutualFundName}
        Run Keyword If    ${mutualFundName} == ['Tata Digital India Dividend Reinvest Direct Plan']  Click Element  ${KU_W_invest_mf_growthDividendButton}
        Verify Mutual Fund Details Page  ${KU_W_invest_mf_fundName}
    END
    Go Back 

Search Fund and Verify 
    # Verify Search functionality
    [Arguments]  ${fundName}
    Wait For Element Visibility  ${KU_W_searchBarForFunds}
    Click Element  ${KU_W_searchBarForFunds}
    Input Text  ${KU_W_invest_mf_searchBar}  ${fundName}  clear=true
    Press Enter Key  ${KU_W_invest_mf_searchBar}

Verify Mutual Fund Details Page
    [Arguments]  ${fund}
    Wait For Element Visibility  ${fund}
    Click Element  ${fund}
    Verify Language Switch Login And Signup Link
    Wait For Element Visibility  ${KU_W_invest_mf_watchlistButton}
    Verify Page Contains Element  ${KU_W_invest_mf_watchlistButton}
    Verify Watchlist Icon  ${KU_W_invest_mf_watchlistButton}
    Go Back
    # Title Section
    Wait For Element Visibility  ${KU_W_invest_mf_title}
    Verify Page Contains Element  ${KU_W_invest_mf_title}
    Verify Page Contains Element  ${KU_W_invest_mf_navValue}
    Verify Page Contains Element  ${KU_W_invest_mf_aum}
    Verify Page Contains Element  ${KU_W_invest_mf_aumValue}
    Verify Page Contains Element  ${KU_W_invest_mf_ter}
    Verify Page Contains Element  ${KU_W_invest_mf_terValue}
    Verify Page Contains Element  ${KU_W_invest_mf_risk}
    Verify Page Contains Element  ${KU_W_invest_mf_riskValue}
    Click Element  ${KU_W_invest_mf_aumInfoIcon}
    Click Element  ${KU_W_invest_mf_terInfoIcon}
    Click Element  ${KU_W_invest_mf_riskInfoIcon}
    Click Element  ${KU_W_invest_mf_navValueInfoIcon}
    # MF Invest Now widget
    Wait For Element Visibility  ${KU_W_invest_mf_widgetHeader}
    Verify Page Contains Element  ${KU_W_invest_mf_widgetHeader}
    Wait For Element Visibility  ${KU_W_invest_mf_sipAmountLabel}
    Verify Element And Text  ${KU_W_invest_mf_sipAmountLabel}  ${e_invest_mf_sipAmountLabel}
    Input Text  ${KU_W_invest_mf_sipAmountTxt}  ${e_invest_mf_sipAmount}
    Wait Scroll And Click Element  ${KU_W_invest_mf_investNowButton}
    Verify Login Page
    Verify Element And Text  ${KU_W_invest_mf_lumpsumAmountLabel}  ${e_invest_mf_lumpsumAmountLabel}
    Input Text  ${KU_W_invest_mf_lumpsumAmountTxt}  ${e_invest_mf_lumpsumAmount}
    Wait Scroll And Click Element  ${KU_W_invest_mf_addToCartButton}
    Verify Login Page
    # Graph Section
    Wait For Element Visibility  ${KU_W_invest_mf_performaceCart}
    Verify Page Contains Element  ${KU_W_invest_mf_performaceCart}
    Scroll Untill View  ${KU_W_invest_mf_compareTitle}
    FOR  ${i}  IN RANGE  1  6
        Sleep  500ms
        Click Element  xpath=(//div[contains(@class,'b-period-option_item')])[${i}]
        Verify Page Contains Element  ${KU_W_invest_mf_performaceCart}
    END
    # Compare with other fund section
    Scroll Untill View  ${KU_W_invest_mf_compareTitle}
    Verify Page Contains Element  ${KU_W_invest_mf_compareTitle}
    Verify Page Contains Element  ${KU_W_invest_mf_compareTableContent}
    #Verify Compare With Other
    Verify Add Option  ${KU_W_invest_mf_addFundBtn}  ${KU_W_invest_mf_addFundPopupHeader}  ${KU_W_invest_mf_addFundPopupCloseBtn}
    # Past Performace section
    Scroll Untill View  ${KU_W_invest_mf_performanceHeading}
    Verify Page Contains Element  ${KU_W_invest_mf_performanceHeading}
    Verify Page Contains Element  ${KU_W_invest_mf_performanceNumField}
    Verify Page Contains Element  ${KU_W_invest_mf_performanceDuration1Y}
    Click Element  ${KU_W_invest_mf_performanceDuration1Y}
    Verify Page Contains Element  ${KU_W_invest_mf_performanceDuration3Y}
    Click Element  ${KU_W_invest_mf_performanceDuration3Y}
    Verify Page Contains Element  ${KU_W_invest_mf_performanceDurationAll}
    Click Element  ${KU_W_invest_mf_performanceDurationAll}
    # See fund holding section
    Scroll Untill View  ${KU_W_invest_mf_seeFundHoldings}
    Verify Page Contains Element  ${KU_W_invest_mf_seeFundHoldings}
    Verify Page Contains Element  ${KU_W_invest_mf_topHoldings}
    Verify Page Contains Element  ${KU_W_invest_mf_holdingsTable}
    # Other Info section
    Scroll Untill View  ${KU_W_invest_mf_otherInfo}
    Verify Page Contains Element  ${KU_W_invest_mf_otherInfo}
    Verify Page Contains Element  ${KU_W_invest_mf_otherInfoContent}
    Verify Page Contains Element  ${KU_W_invest_mf_holdingsTable}
    Scroll Untill View  ${KU_W_invest_mf_exitLoad}
    Verify Page Contains Element  ${KU_W_invest_mf_exitLoad}
    Verify Page Contains Element  ${KU_W_invest_mf_exitLoadInfo}
    # Fund Objective section
    Scroll Untill View  ${KU_W_invest_mf_fundObjectiveLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_fundObjectiveLabel}
    Verify Page Contains Element  ${KU_W_invest_mf_fundObjectiveValue}
    Verify Page Contains Element  ${KU_W_invest_mf_fundManager}
    # More details section
    Scroll Untill View  ${KU_W_invest_mf_fundOfferDocumentLink}
    Verify Page Contains Element  ${KU_W_invest_mf_fundOfferDocumentLink}
    Click Element  ${KU_W_invest_mf_fundOfferDocumentLink}
    Sleep  3s
    Switch To Window
    Verify Page Contains Element  ${KU_W_invest_mf_AllFundsLink}
    Click Element  ${KU_W_invest_mf_AllFundsLink}
    Go Back
    Go Back