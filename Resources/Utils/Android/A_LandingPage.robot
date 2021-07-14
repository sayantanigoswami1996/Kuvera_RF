*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify PreLogin Landing Page Widgets
    Verify Signup Link And Kuvera Logo
    Swipe By Percent  30  30  10  10  900
    Verify Widgets And Title  ${KU_A_stocksLabel}  ${KU_A_featureTitle}  ${KU_A_stocksSubTitle}
    Verify Stock Widgets
    Verify Widgets And Title  ${KU_A_USStocksLabel}  ${KU_A_featureTitle}  ${KU_A_USStocksSubTitle}
    Verify US Stocks Widgets 
    Verify Widgets And Title  ${KU_A_savesmartLabel}  ${KU_A_featureTitle}  ${KU_A_MFSubTitle}
    Verify SaveSmart Widgets
    Verify Widgets And Title  ${KU_A_goldLabel}  ${KU_A_featureTitle}  ${KU_A_goldSubTitle}
    Verify Gold Widgets
    Sleep  1s
    Verify Mutual Fund Widgets

PreLogin Header Navigation On Android
    ${invest}  Get Json Values On Android  $.MenuHeaders.h0  Resources/TestData/Headers.json
    ${insure}  Get Json Values On Android  $.MenuHeaders.h2  Resources/TestData/Headers.json
    ${remit}  Get Json Values On Android  $.MenuHeaders.h3  Resources/TestData/Headers.json
    ${features}  Get Json Values On Android  $.MenuHeaders.h4  Resources/TestData/Headers.json
    
    Run keyword If  ['${e_insurePage}'] == ${insure}  Verify Android PreLogin Insure Page
    Run keyword If  ['${e_remitPage}'] == ${remit}  Verify Android PreLogin Remit Page
    ...    ELSE   Log To Console  Covered in other test

PreLogin Feature Sub Header Navigation On Android
    Log To Console  Features
    ${setAGoal}  Get Json Values On Android  $.MenuHeaders.h4.fsh0  Resources/TestData/Headers.json
    ${tradeSmart}  Get Json Values On Android  $.MenuHeaders.h4.fsh1  Resources/TestData/Headers.json
    ${familyAccount}  Get Json Values On Android  $.MenuHeaders.h4.fsh2  Resources/TestData/Headers.json
    ${manageAccount}  Get Json Values On Android  $.MenuHeaders.h4.fsh3  Resources/TestData/Headers.json
    ${taxHarvesting}  Get Json Values On Android  $.MenuHeaders.h4.fsh4  Resources/TestData/Headers.json
    ${savesTaxes}  Get Json Values On Android  $.MenuHeaders.h4.fsh5  Resources/TestData/Headers.json
    ${consolidate}  Get Json Values On Android  $.MenuHeaders.h4.fsh6  Resources/TestData/Headers.json
    
    Run keyword If  ['${e_setAGoalPage}'] == ${setAGoal}   Log To Console  Set A Goal - Element Not Inspectable
    Run keyword If  ['${e_tradeSmart}'] == ${tradeSmart}   Verify Android PreLogin TradeSmart Page
    Run keyword If  ['${e_familyAccountPage}'] == ${familyAccount}  Verify Android PreLogin Family Account Page
    Run keyword If  ['${e_manageAccountPage}'] == ${manageAccount}  Verify Android PreLogin Manage Account Page
    Run keyword If  ['${e_taxHarvestingPage}'] == ${taxHarvesting}  Verify Android PreLogin Tax Harvesting Page
    Run keyword If  ['${e_saveTaxesPage}'] == ${savesTaxes}  Verify Android PreLogin Save Taxes Page
    Run keyword If  ['${e_consolidatePage}'] == ${consolidate}  Verify Android PreLogin Consolidate Page
    ...    ELSE  Log To Console  Completed
     

Verify Mutual Fund Widgets
    Log To Console  Mutual Fund
    Wait And Verify Element And Text On Android  ${KU_A_MFLabel}  ${e_MFLabel}
    Wait And Click Element On Android  ${KU_A_MFLabel}
    Log To Console  Title Validation
    Verify Page Contains Element On Android  ${KU_A_MF_imgIcon}
    Verify Page Contains Element On Android  ${KU_A_featureTitle}
    Verify Page Contains Element On Android  ${KU_A_MFSubTitle}
    Verify Login And Signup Button
    Log To Console  AUA Goals And Transactions Validation
    Wait And Verify Element And Text On Android  ${KU_A_croreAUALabel}  ${e_croreAUALabel}
    Verify Text On Page  ${e_croreAUAVal}
    Verify Page Contains Element On Android  ${KU_A_investorLabel}
    Verify Text On Page  ${e_goalsVal} 
    Wait And Verify Element And Text On Android  ${KU_A_transactionsLabel}  ${e_transactionsLabel}
    Verify Text On Page  ${e_transactionsVal}
    Swipe By Percent  30  30  10  10  900
    Log To Console  Label Validation
    Wait And Verify Element And Text On Android  ${KU_A_MF_navLabel}  ${e_MF_navLabel}
    Wait And Verify Element And Text On Android  ${KU_A_MF_1YLabel}  ${e_MF_1YLabel}
    Wait And Verify Element And Text On Android  ${KU_A_MF_3YLabel}  ${e_MF_3YLabel}
    Swipe By Percent  85  85  30  30  9000
    Wait For Element Visibility On Android  ${KU_A_exploreMoreBtn}
    Verify Page Contains Element On Android  ${KU_A_exploreMoreBtn}
    Verify Presence Of Bot Button  ${KU_A_faqBotBtn} 
    Click On Explore Button And Verify Navigated Page  ${KU_A_MF_allFundsLabel}
    Swipe By Percent  85  85  30  30  9000
    Swipe By Percent  50  50  20  20  9000
    Verify Text On Page  ${e_investYourWayTitle}
    Verify Text On Page  ${e_oneLoginTitle}
    Swipe By Percent  30  30  85  85  5000
    Swipe By Percent  30  30  85  85  5000
    
Verify Stock Widgets
    Log To Console  Stocks
    Verify Page Contains Element On Android  ${KU_A_warningText}
    Verify Page Contains Element On Android  ${KU_A_stocksImg}
    Sleep  2s
    Swipe By Percent  30  30  10  10  900
    Verify Price Year And Market Label For Stocks And USStocks
    Sleep  2s
    Swipe By Percent  85  85  50  50  900
    Click On Explore Button And Verify Navigated Page  ${KU_A_stocks_allStocksTab}
    
Verify US Stocks Widgets   
    Log To Console  USStocks 
    Log To Console  Title And Image Validation
    Verify Page Contains Element On Android  ${KU_A_USStocks_imgIcon}
    Verify Page Contains Element On Android  ${KU_A_warningText}
    Wait And Click Element On Android  ${KU_A_USStocksLabel}
    Swipe By Percent  30  30  10  10  900
    Verify Price Year And Market Label For Stocks And USStocks
    Sleep  2s
    Swipe By Percent  85  85  50  50  900
    Click On Explore Button And Verify Navigated Page  ${KU_A_USStocks_allUSStocksTab}
   
Verify SaveSmart Widgets
    Log To Console  SaveSmart 
    Verify Page Contains Element On Android  ${KU_A_SS_imgIcon}
    Swipe By Percent  50  50  20  20  900
    Verify Start SaveSmart Today  ${KU_A_inputField}
    Verify Login Page On Android App
    Wait And Click Element On Android  ${KU_A_savesmartLabel}
    Sleep  2s
    Swipe By Percent  85  85  30  30  900
    Wait And Click Element On Android  ${KU_A_SS_exploreSSBtn}
    Verify Page Contains Element On Android  ${KU_A_SS_screenTitle}
    Wait And Click Element On Android  ${KU_A_logo}
    
Verify Gold Widgets
    Log To Console  Gold 
    Verify Page Contains Element On Android  ${KU_A_warningText}
    Verify Page Contains Element On Android  ${KU_A_gold_ImgIcon}
    Sleep  2s
    Swipe By Percent  70  70  30  30  900
    Log To Console  Gold Rate And Label Validation
    Verify Buy Gold Menu Details
    Verify Login Page On Android App
    Wait And Click Element On Android  ${KU_A_goldLabel}
    Swipe By Percent  85  85  30  30  900
    Sleep  2s
    Verify Gold On Grams
    Verify Login Page On Android App
    Wait And Click Element On Android  ${KU_A_goldLabel}
    Sleep  1s
    Swipe By Percent  85  85  30  30  900
    Wait And Click Element On Android  ${KU_A_gold_exploreGold}  
    Verify Page Contains Element On Android  ${KU_A_gold_screenTitle}
    Wait And Click Element On Android  ${KU_A_logo}

Verify Watchlist Button
    [Arguments]  ${watchlistBtn}
    Verify Page Contains Element On Android  ${watchlistBtn} 
    Wait And Click Element On Android  ${watchlistBtn}
    Verify Login Page On Android App 

Verify Price Year And Market Label For Stocks And USStocks
    Log To Console  Text Validation
    Verify Page Contains Element On Android  ${KU_A_US_stocks_priceLabel}
    Verify Page Contains Element On Android  ${KU_A_US_stocks_yearLabel}
    Verify Page Contains Element On Android  ${KU_A_US_stocks_mktCapLabel}

Click On Explore Button And Verify Navigated Page
    [Arguments]  ${allStock_fundTab}
    Wait For Element Visibility On Android   ${KU_A_exploreMoreBtn}
    Verify Page Contains Element On Android  ${KU_A_exploreMoreBtn}
    Wait And Click Element On Android  ${KU_A_exploreMoreBtn}
    Verify Page Contains Element On Android  ${allStock_fundTab}
    Wait And Click Element On Android  ${KU_A_logo}

Verify Start SaveSmart Today
    [Arguments]  ${inputField}
    Wait And Verify Element And Text On Android  ${KU_A_SS_startSaveSmart}  ${e_SS_startSaveSmart}
    Sleep  1s
    Input Text  ${inputField}  ${e_SS_amount}
    Wait And Click Element On Android  ${KU_A_button}

Verify Buy Gold Menu Details
    Wait And Verify Element And Text On Android  ${KU_A_gold_buyRateLabel}  ${e_gold_buyRateLabel} 
    Wait And Verify Element And Text On Android  ${KU_A_gold_partnerLabel}  ${e_gold_partnerLabel}
    Wait And Verify Element And Text On Android  ${KU_A_gold_purityLabel}  ${e_gold_purityLabel}
    Wait And Verify Element And Text On Android  ${KU_A_gold_partner}  ${e_gold_partner}
    Wait And Verify Element And Text On Android  ${KU_A_gold_purityValue}  ${e_gold_purityValue} 
    Wait And Verify Element And Text On Android  ${KU_A_gold_rupeeIcon}  ${e_gold_rupeeIcon}
    Wait And Verify Element And Text On Android  ${KU_A_gold_unit}  ${e_gold_unit}
    Wait And Verify Element And Text On Android  ${KU_A_gold_enterAmtLabel}  ${e_gold_enterAmtLabel}
    Wait And Verify Element And Text On Android  ${KU_A_gold_enterGmLabel}  ${e_gold_enterGmLabel}
    Wait And Click Element On Android  ${KU_A_gold_goldVal}
    Wait And Verify Element And Text On Android  ${KU_A_gold_purchaseT&C}  ${e_gold_purchaseT&C}
    Wait And Verify Element And Text On Android  ${KU_A_gold_comingSoon}  ${e_gold_comingSoon}
    Sleep  1s
    Wait And Click Element On Android  ${KU_A_gold_buyNowBtn}
    

Verify Gold On Grams
    Wait And Click Element On Android  ${KU_A_gold_enterGmLabel}
    Sleep  1s
    Hide Keyboard
    Input Text  ${KU_A_inputField}  ${e_gold_gramValue}
    Sleep  1s
    Wait And Click Element On Android  ${KU_A_gold_buyNowBtn}  