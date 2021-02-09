*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Insure Page
    Log To Console  Insure
    Navigate To Various Links Under Hamburger Menu  ${KU_A_insureLink}  ${e_insureLink}
    Wait And Verify Element And Text On Android  ${KU_A_insurePageTitle}  ${e_insurePageTitle}
    Verify Signup Link And Kuvera Logo
    Verify Page Contains Element On Android  ${KU_A_insure_imgIcon}
    Wait And Verify Element And Text On Android  ${KU_A_insurePageSubTitle}  ${e_insurePageSubTitle}
    Wait And Click Element On Android  ${KU_A_insure_premiumBtn}
    Verify Group Health Insurance Popup
    Navigate To Various Links Under Hamburger Menu  ${KU_A_insureLink}  ${e_insureLink}
    Verify Treatment Cost Table
    Sleep  2s
    Swipe By Percent  75  75  25  25  2000
    Wait And Verify Element And Text On Android  ${KU_A_insure_bhartiAxaTitle}  ${e_insure_bhartiAxaTitle} 
    Wait And Verify Element And Text On Android  ${KU_A_insure_bhartiAxaSubTitle}  ${e_insure_bhartiAxaSubTitle}
    Verify Page Contains Element On Android  ${KU_A_insure_bhartiAxaList}
    Wait And Verify Element And Text On Android  ${KU_A_insure_everythingUNeed}  ${e_insure_everythingUNeed} 
    Wait And Verify Element And Text On Android  ${KU_A_insure_gotYouCovered}  ${e_insure_gotYouCovered}
    Verify Presence Of Bot Button  ${KU_A_faqBotBtn} 

       
Verify Group Health Insurance Popup
    Sleep  2s
    Swipe By Percent  55  55  15  15  2000
    Verify Page Contains Element On Android  ${KU_A_insure_grpHealthInusreImg}
    Wait And Verify Element And Text On Android  ${KU_A_insure_grpHealthInsureTitle}  ${e_insure_grpHealthInsureTitle}
    Wait And Verify Element And Text On Android  ${KU_A_insure_grpHealthInsurePoint1}  ${e_insure_grpHealthInsurePoint1}
    Wait And Verify Element And Text On Android  ${KU_A_insure_grpHealthInsurePoint2}  ${e_insure_grpHealthInsurePoint2}
    Wait And Verify Element And Text On Android  ${KU_A_insure_grpHealthInsurePoint3}  ${e_insure_grpHealthInsurePoint3}
    Wait And Verify Element And Text On Android  ${KU_A_insure_accountTitle}  ${e_insure_accountTitle}
    Wait And Click Element On Android  ${KU_A_signupBtn}
    Verify Signup Page On Android App
    Go Back
    Wait And Click Element On Android  ${KU_A_insure_premiumBtn}
    Sleep  2s
    Wait And Click Element On Android  ${KU_A_insure_loginLink}
    Verify Login Page On Android App

Verify Treatment Cost Table
    Sleep  2s
    Swipe By Percent  55  55  15  15  2000
    Wait And Verify Element And Text On Android  ${KU_A_insure_understandCost}  ${e_insure_understandCost}
    Wait And Verify Element And Text On Android  ${KU_A_insure_treatmentTitle}  ${e_insure_treatmentTitle}
    Wait And Verify Element And Text On Android  ${KU_A_insure_estCostTitle}  ${e_insure_estCostTitle}
    # Image  Validation
    Verify Page Contains Element On Android  ${KU_A_insure_covidImg}
    Verify Page Contains Element On Android  ${KU_A_insure_cancerImg}
    Verify Page Contains Element On Android  ${KU_A_insure_heartSurgeryImg}
    Verify Page Contains Element On Android  ${KU_A_insure_kneeReplacementImg}
    # Title Validation 
    Wait And Verify Element And Text On Android  ${KU_A_insure_covid19}  ${e_insure_covid19}
    Wait And Verify Element And Text On Android  ${KU_A_insure_cancer}  ${e_insure_cancer}
    Wait And Verify Element And Text On Android  ${KU_A_insure_heartSurgery}  ${e_insure_heartSurgery}
    Wait And Verify Element And Text On Android  ${KU_A_insure_kneeReplacement}  ${e_insure_kneeReplacement}
    # Treatment Cost Validaton
    Wait And Verify Element And Text On Android  ${KU_A_insure_covidCost}  ${e_insure_covidCost}
    Wait And Verify Element And Text On Android  ${KU_A_insure_cancerCost}  ${e_insure_cancerCost}
    Wait And Verify Element And Text On Android  ${KU_A_insure_heartSurgeryCost}  ${e_insure_heartSurgeryCost}
    Wait And Verify Element And Text On Android  ${KU_A_insure_kneeReplacementCost}  ${e_insure_kneeReplacementCost} 
    