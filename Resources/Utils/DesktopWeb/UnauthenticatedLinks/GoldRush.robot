*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Gold Rush Page
    Go To  ${e_goldRush_URL}
    Wait For Element Visibility  ${KU_W_goldRush_pageTitle}
    Verify Page Contains Image  ${KU_W_goldRush_imgIcon}
    Sleep  2s
    Verify Element And Text  ${KU_W_goldRush_pageTitle}  ${e_goldRush_pageTitle}
    Wait And Click  ${KU_W_goldRush_buyGoldBtn}
    Verify Signup Page
    Go Back
    Wait For Element Visibility  ${KU_W_goldRush_recentWinnersTag}
    Verify Page Contains Image  ${KU_W_goldRush_recentWinnersTag}
    Verify Element And Text  ${KU_W_goldRush_winnersList}  ${e_goldRush_winnersList} 
    Verify Element And Text  ${KU_W_goldRush_T&C}  ${e_goldRush_T&C}