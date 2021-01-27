*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Amazon Save Shop Page
    Go To  ${e_amazon_amazonSaveShopURL}
    # Steps
    Verify Page Contains Image  ${KU_W_amazon_saveShopIcon}
    Verify Element And Text  ${KU_W_amazon_pageTitle}  ${e_amazon_pageTitle}
    Verify Page Contains Image  ${KU_W_amazon_step1Img}
    Verify Element And Text  ${KU_W_amazon_step1Title}  ${e_amazon_step1Title}
    Verify Page Contains Image  ${KU_W_amazon_step2Img}
    Verify Element And Text  ${KU_W_amazon_step2Title}  ${e_amazon_step2Title}
    Verify Page Contains Image  ${KU_W_amazon_step3Img}
    Verify Element And Text  ${KU_W_amazon_step3Title}  ${e_amazon_step3Title}
    Verify Page Contains Image  ${KU_W_amazon_step4Img}
    Verify Element And Text  ${KU_W_amazon_step4Title}  ${e_amazon_step4Title}
    # Banner
    Verify Page Contains Image  ${KU_W_amazon_bannerLogo}
    Verify Element And Text  ${KU_W_amazon_bannerDesc}  ${e_amazon_bannerDesc}
    Verify Element And Text  ${KU_W_amazon_bannerT&C}  ${e_amazon_bannerT&C}
    Wait And Click  ${KU_W_amazon_saveBtn}
    Verify Login Page
    # FAQ
    Scroll Untill View  ${KU_W_amazon_question1}
    Verify Element And Text  ${KU_W_amazon_question1}  ${e_amazon_question1}
    Wait And Click  ${KU_W_amazon_expandArrow1}
    Verify Element And Text  ${KU_W_amazon_answer1}  ${e_amazon_answer1}
    Scroll Untill View  ${KU_W_amazon_question2}
    Wait And Click  ${KU_W_amazon_collapseArrow1}
    Verify Element And Text  ${KU_W_amazon_question2}  ${e_amazon_question2}
    Wait And Click  ${KU_W_amazon_expandArrow2} 
    Verify Element And Text  ${KU_W_amazon_answer2}  ${e_amazon_answer2}
    Wait And Click  ${KU_W_amazon_collapseArrow2}
    Scroll Untill View  ${KU_W_amazon_question3}
    Verify Element And Text  ${KU_W_amazon_question3}  ${e_amazon_question3}
    Wait And Click  ${KU_W_amazon_expandArrow3}
    Verify Element And Text  ${KU_W_amazon_answer3}  ${e_amazon_answer3}
    Wait And Click  ${KU_W_amazon_collapseArrow3}
    Open Bot And Validate Question  ${KU_W_amazon_viewAll}  ${e_amazon_botQuestion}
