*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify PreLogin Landing Page Widgets
    Navigate to Landing Page
    Wait And Verify Element And Text On Android  ${KU_A_signupLink}  ${e_signupLink}
    Verify Stock Widgets
    Verify US Stocks Widgets
    Verify SaveSmart Widgets
    Verify Gold Widgets
    Verify Mutual Fund Widgets

Verify Mutual Fund Widgets
    Wait And Verify Element And Text On Android  ${KU_A_MFLabel}  ${e_MFLabel}
    Wait And Click Element On Android  ${KU_A_MFLabel}
    Wait And Verify Element And Text On Android  ${KU_A_MFTitle}  ${e_MFTitle}
    Wait And Verify Element And Text On Android  ${KU_A_MFSubTitle}  ${e_MFSubTitle} 
    Verify Login And Signup Link
    Wait And Verify Element And Text On Android  ${KU_A_croreAUALabel}  ${e_croreAUALabel}
    Wait And Verify Element And Text On Android  ${KU_A_croreAUAVal}  ${e_croreAUAVal}
    Wait And Verify Element And Text On Android  ${KU_A_goalsLabel}  ${e_goalsLabel}
    Wait And Verify Element And Text On Android  ${KU_A_goalsVal}  ${e_goalsVal} 
    Wait And Verify Element And Text On Android  ${KU_A_transactionsLabel}  ${e_transactionsLabel}
    Wait And Verify Element And Text On Android  ${KU_A_transactionsVal}  ${e_transactionsVal}
    Wait And Verify Element And Text On Android  ${KU_A_MF_categoryLabel}  ${e_MF_categoryLabel}
    Scroll  ${KU_A_MF_categoryLabel}  ${KU_A_MF_categoryVal}
    Wait And Verify Element And Text On Android  ${KU_A_MF_categoryVal}  ${e_MF_categoryVal}
    Wait And Verify Element And Text On Android  ${KU_A_MF_subcategoryLabel}  ${e_MF_subcategoryLabel}
    Scroll Down  ${KU_A_MF_subcategoryVal}
    Wait And Verify Element And Text On Android  ${KU_A_MF_subcategoryVal}  ${e_MF_subcategoryVal}
    Scroll Down  ${KU_A_MF_fundName}
    Verify Page Contains Element On Android  ${KU_A_MF_fundName}
    # Scroll Down On Android  ${KU_A_MF_watchListBtn} 
    # Verify Page Contains Element On Android  ${KU_A_MF_watchListBtn}
    # Scroll Down On Android  ${KU_A_MF_exploreMFLink}
    # Verify Page Contains Element On Android  ${KU_A_MF_exploreMFLink}
    # Verify Presence Of Bot Button  ${KU_A_MF_faqBotBtn}

Verify Stock Widgets
    Wait And Verify Element And Text On Android  ${KU_A_stocksLabel}  ${e_stocksLabel}
    Wait And Click Element On Android  ${KU_A_stocksLabel}
    Wait And Verify Element And Text On Android  ${KU_A_stocksSubTitle}  ${e_stocksSubTitle}

Verify US Stocks Widgets
    Wait And Verify Element And Text On Android  ${KU_A_USStocksLabel}  ${e_USStocksLabel}
    Wait And Click Element On Android  ${KU_A_USStocksLabel}
    Wait And Verify Element And Text On Android  ${KU_A_USStocksTitle}  ${e_USStocksTitle} 

Verify SaveSmart Widgets
    Verify Element And Text On Android  ${KU_A_savesmartLabel}  ${e_savesmartLabel}
    Wait And Click Element On Android  ${KU_A_savesmartLabel}
    Wait And Verify Element And Text On Android  ${KU_A_savesmartTitle}  ${e_savesmartTitle} 

Verify Gold Widgets
    Swipe  628  1328  698  1370
    Wait And Verify Element And Text On Android  ${KU_A_goldLabel}  ${e_goldLabel}
    Wait And Click Element On Android  ${KU_A_goldLabel} 
    Wait And Verify Element And Text On Android  ${KU_A_goldTitle}  ${e_goldTitle}
