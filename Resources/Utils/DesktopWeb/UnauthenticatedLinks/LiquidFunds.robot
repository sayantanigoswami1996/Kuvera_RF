*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Liquid Fund Page
    Go To  ${e_lf_url}
    Wait For Element Visibility  ${KU_W_lf_liquidFundHeader}
    Verify Element And Text  ${KU_W_lf_liquidFundHeader}  ${e_lf_liquidFundHeader}
    Verify Element And Text  ${KU_W_lf_liquidFundSubHeader}  ${e_lf_liquidFundSubHeader}
    # Earn 6-9%
    Verify Element And Text  ${KU_W_lf_earn6-9%Header}  ${e_lf_earn6-9%Header}
    Verify Element And Text  ${KU_W_lf_earn6-9%SubHeader}  ${e_lf_earn6-9%SubHeader}
    # No Lock-In
    Verify Element And Text  ${KU_W_lf_noLockInHeader}  ${e_lf_noLockInHeader}
    Verify Element And Text  ${KU_W_lf_noLockInSubHeader}  ${e_lf_noLockInSubHeader}
    # Super safe
    Verify Element And Text  ${KU_W_lf_superSafeHeader}  ${e_lf_superSafeHeader}
    Verify Element And Text  ${KU_W_lf_superSafeSubHeader}  ${e_lf_superSafeSubHeader}
    # Liquid Fund
    Verify Element And Text  ${KU_W_lf_liquidFundSectionTitle}  ${e_lf_liquidFundSectionTitle}
    # How They Work
    Verify Element And Text  ${KU_W_lf_howTheyWorkTitle}  ${e_lf_howTheyWorkTitle} 
    # Description 
    Verify Element And Text  ${KU_W_lf_liquidFundDesc1}  ${e_lf_liquidFundDesc1}
    Verify Element And Text  ${KU_W_lf_liquidFundDesc2}  ${e_lf_liquidFundDesc2}
    Verify Element And Text  ${KU_W_lf_beatInflation}  ${e_lf_beatInflation}
    Verify Element And Text  ${KU_W_lf_parkMoney}  ${e_lf_parkMoney}
    Verify Element And Text  ${KU_W_lf_STP}  ${e_lf_STP}
    # We Recommend
    Verify Element And Text  ${KU_W_lf_recommendTitle}  ${e_lf_recommendTitle}
    # Top Saver Fund
    Verify Element And Text  ${KU_W_lf_topSaverFundTitle}  ${e_lf_topSaverFundTitle}
    Wait Scroll And Click Element  ${KU_W_lf_startInvestingBtn}
    Verify Login Page