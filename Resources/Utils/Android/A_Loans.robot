*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify PreLogin Loans Page
    Log To Console  Loans
    Navigate To Various Links Under Hamburger Menu  ${KU_A_loansLink}  ${e_loansLink}
    Wait And Verify Element And Text On Android  ${KU_A_loansTitle}  ${e_loansTitle}
    Wait And Verify Element And Text On Android  ${KU_A_loansSubTitle}  ${e_loansSubTitle}
    Wait For Element Visibility On Android  ${KU_A_loans_imgIcon}
    Verify Page Contains Element On Android  ${KU_A_loans_imgIcon}
    Wait And Verify Element And Text On Android  ${KU_A_loans_eligibilityBtn}   ${e_loans_eligibilityBtn}
    Wait And Click Element On Android  ${KU_A_loans_eligibilityBtn}
    Verify Login Page On Android App
    Sleep  3s
    Navigate To Various Links Under Hamburger Menu  ${KU_A_loansLink}  ${e_loansLink}
    Swipe By Percent  70  70  30  30  900
    Verify Affordable Loan Section
    Verify Loan Calculator
    # Highly Flexible
    Swipe By Percent  35  35  10  10  900
    Verify Page Contains Element On Android  ${KU_A_loans_highlyFlexibleImg}
    Wait And Verify Element And Text On Android  ${KU_A_loans_highlyFlexibleTitle}  ${e_loans_highlyFlexibleTitle}
    Wait And Verify Element And Text On Android  ${KU_A_loans_highlyFlexibleSubTitle}  ${e_loans_highlyFlexibleSubTitle}


Verify Affordable Loan Section
    Wait And Verify Element And Text On Android  ${KU_A_loans_affordableLoanTitle}  ${e_loans_affordableLoanTitle}
    Wait And Verify Element And Text On Android  ${KU_A_loans_affordableLoanSubTitle}  ${e_loans_affordableLoanSubTitle}
    Wait And Verify Element And Text On Android  ${KU_A_loans_affordableLoanPoint1}  ${e_loans_affordableLoanPoint1}
    Wait And Verify Element And Text On Android  ${KU_A_loans_affordableLoanPoint2}  ${e_loans_affordableLoanPoint2}
    Wait And Verify Element And Text On Android  ${KU_A_loans_affordableLoanPoint3}  ${e_loans_affordableLoanPoint3}
    Wait And Verify Element And Text On Android  ${KU_A_loans_affordableLoanPoint4}  ${e_loans_affordableLoanPoint4}

Verify Loan Calculator
    Swipe By Percent  70  70  30  30  900
    Wait And Verify Element And Text On Android  ${KU_A_loans_checkSavings}  ${e_loans_checkSavings}
    Wait And Verify Element And Text On Android  ${KU_A_inputField}  ${e_loans_savingAmt}
    # Loan Against Portfolio
    Wait And Verify Element And Text On Android  ${KU_A_loans_portfolioTitle}  ${e_loans_portfolioTitle}
    Wait And Verify Element And Text On Android  ${KU_A_loans_monthlyEMI}  ${e_loans_monthlyEMI} 
    Wait And Verify Element And Text On Android  ${KU_A_loans_interest}  ${e_loans_interest} 
    Wait And Verify Element And Text On Android  ${KU_A_loans_charges}  ${e_loans_charges}
    Verify Page Contains Element On Android  ${KU_A_loans_portfolioChargesVal}
    Verify Page Contains Element On Android  ${KU_A_loans_portfolioIntVal}
    Verify Page Contains Element On Android  ${KU_A_loans_portfolioEMIVal}
    # Personal Loan
    Wait And Verify Element And Text On Android  ${KU_A_loans_personalLoanTitle}  ${e_loans_personalLoanTitle}
    Verify Page Contains Element On Android  ${KU_A_loans_personalChargesVal}
    Verify Page Contains Element On Android  ${KU_A_loans_personalIntVal}
    Verify Page Contains Element On Android  ${KU_A_loans_personalEMIVal}