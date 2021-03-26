*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PostLogin Dashboard Navigation
    Log To Console  Dashboard
    Wait For Element Visibility  ${KU_W_ca_dashboardHeader}
    Verify Page Contains Element  ${KU_W_ca_dashboardHeader}
    Verify Page Contains Element  ${KU_W_dashboard_pageSubTitle} 
    Verify Page Contains Element  ${KU_W_KYC_startBtn}
    Verify Add Acount And Track Investment Section

Verify Add Acount And Track Investment Section
    # Add Account Section
    Verify Page Contains Element  ${KU_W_dashboard_addAccTitle}
    Verify Element And Text  ${KU_W_dashboard_addAccSubTitle}  ${e_dashboard_addAccSubTitle}
    Wait And Click  ${KU_W_dashboard_addAccTitle}
    Verify Element And Text  ${KU_W_dashboard_addAccNavigatedTitle}  ${e_dashboard_addAccNavigatedTitle}
    Go Back
    # Track External Investment
    Verify Element And Text  ${KU_W_dashboard_trackInvestTitle}  ${e_dashboard_trackInvestTitle} 
    Verify Element And Text  ${KU_W_dashboard_trackInvestSubTitle}  ${e_dashboard_trackInvestSubTitle}
    Wait And Click  ${KU_W_dashboard_trackInvestTitle}
    Go Back

Verify Add SIPs
    # Add SIPs
    Verify Page Contains Element  ${KU_W_dashboard_addSIPsTitle}
    Verify Page Contains Element  ${KU_W_dashboard_addSIPSubTitle} 
    Verify Page Contains Element  ${KU_W_dashboard_addSIPMFImg}
    Verify Page Contains Element  ${KU_W_dashboard_addSIPSSImg} 
    Verify Page Contains Element  ${KU_W_dashboard_addSIPDGImg} 
    # Mutual Fund
    Wait And Click  ${KU_W_dashboard_addSIPMFIcon}
    Verify Page Contains Element  ${KU_W_dashboard_allFunds}
    Go Back
    # SaveSmart
    Wait And Click  ${KU_W_dashboard_addSIPSSIcon}
    Verify Element And Text  ${KU_W_ss_screenTitle}  ${e_invest_ss_screenText}
    Go Back
    # Digi Gold
    Wait And Click  ${KU_W_digitalGold}
    Verify Element And Text  ${KU_W_dg_screenTitle}  ${e_invest_digiGold_screenText}
    # Add Goals
    Verify Page Contains Element  ${KU_W_dashboard_addGoalsTitle} 
    Verify Page Contains Element  ${KU_W_dashboard_addGoalsSubTitle}
    Verify Page Contains Element  ${KU_W_dashboard_ownHomeImg} 
    Verify Page Contains Element  ${KU_W_dashboard_saveTaxImg}
    Verify Page Contains Element  ${KU_W_dashboard_moreImg}
    Wait And Click  ${KU_W_dashboard_ownHomeIcon}
    







