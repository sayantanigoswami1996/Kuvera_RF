*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Loans Page
  Click Element  ${KU_W_loanLink}
  Verify Language Switch Login And Signup Link
  Wait For Element Visibility  ${KU_W_loanHeaderTitle}  
  Verify Element And Text  ${KU_W_loanHeaderTitle}  ${e_loan_headerTitleText}
  Verify Element And Text  ${KU_W_loanHeaderMsg}  ${e_loan_headerMsgText} 
  Verify Element And Text  ${KU_W_loanCheckEligibility}  ${e_loan_checkElibilityBtnText} 
  Click Element  ${KU_W_loanCheckEligibility}
  Verify Login Page
  Wait For Element Visibility  ${KU_W_loanCalculatorTitle}     
  Scroll Untill View  ${KU_W_loanCalculatorTitle}
  Verify Element and Text  ${KU_W_loanCalculatorTitle}  ${e_loan_calculatorTitleText}
  Page Should Contain  ${e_loan_calculatorSubTitleText} 
  # Validation of List of Text Under Loan Calculator Block
  @{actualListItems} =  Get WebElements  ${KU_W_loanCalculatorMsgList} 
  Compare Lists  ${actualListItems}  ${e_loan_calculatorMsgListItem}
  
  # Validation of List of Text Under Loan Calculator Block
  @{actualListItems} =  Get WebElements  ${KU_W_loanCalculatorMsgList} 
  Compare Lists  ${actualListItems}  ${e_loan_calculatorMsgListItem}

  # Highly Fexible 
  Scroll Untill View  ${KU_W_highlyFlexibleTitle}
  Verify Element and Text  ${KU_W_highlyFlexibleTitle}  ${e_loan_highlyFlexibleTitle}
  Verify Element and Text  ${KU_W_highlyFlexibleMsg}   ${e_loan_highlyFlexibleMsg}

  # Pay What You Use
  Scroll Untill View  ${KU_W_payForWhatYouUseTitle}
  Verify Element and Text  ${KU_W_payForWhatYouUseTitle}  ${e_loan_payForWhatYouUseText}
  Verify Element and Text  ${KU_W_payForWhatYouUseMsg}  ${e_loan_payForWhatYouUseMsgText}
   
  # Instant Approval 
  Wait For Element Visibility  ${KU_W_loanRedemptionTitle} 
  Verify Element and Text  ${KU_W_loanRedemptionTitle}   ${e_loan_redemptionTitleText}
  Verify Element and Text  ${KU_W_loanRedemptionMsg}   ${e_loan_redemptionMsgText}

  # Super Affordable
  Wait For Element Visibility  ${KU_W_saveSuperAffordableTitle}  
  Scroll Untill View  ${KU_W_saveSuperAffordableTitle}
  Verify Element and Text  ${KU_W_saveSuperAffordableTitle}  ${e_loan_saveSuperAffordableTitleText} 
  Verify Element and Text  ${KU_W_saveSuperAffordableMsg}  ${e_loan_saveSuperAffordableMsgText}
  
  # Easy Start Saver
  Wait For Element Visibility  ${KU_W_startSaveTitle}  
  Scroll Untill View  ${KU_W_startSaveTitle} 
  Verify Element and Text  ${KU_W_startSaveTitle}   ${e_loan_startSaveTitleText} 
  Verify Element and Text  ${KU_W_startSaveMsg}   ${e_loan_startSaveMsgText}  
  Verify Page Contains Image  ${KU_W_flowchartImage1}
  Verify Element and Text  ${KU_W_image1Description}  ${e_loan_startSaveImage1Text}
  Verify Page Contains Image  ${KU_W_flowchartImage2} 
  Verify Element and Text  ${KU_W_image2Description}  ${e_loan_startSaveImage2Text}
  Verify Page Contains Image  ${KU_W_flowchartImage3} 
  Verify Element and Text  ${KU_W_image3Description}  ${e_loan_startSaveImage3Text}
  Verify Page Contains Image  ${KU_W_flowchartImage4} 
  Verify Element and Text  ${KU_W_image4Description}  ${e_loan_startSaveImage4Text}

  # Get Loan Against MF
  Wait For Element Visibility  ${KU_W_getLoanAgainstMF}  
  Scroll Untill View   ${KU_W_getLoanAgainstMF}
  Verify Element and Text  ${KU_W_getLoanAgainstMF}   ${e_loan_getLoanAgainstMFText} 
  Verify Element and Text  ${KU_W_getLoanAgainstMFMsg}   ${e_loan_getLoanAgainstMFMsgText}
  Scroll Untill View   ${KU_W_startSaveCheckEligibilityBtn}
  Verify Element and Text  ${KU_W_startSaveCheckEligibilityBtn}  ${e_loan_startSaveCheckEligibiliyText}
  
  # Verify the Google Play & Apple Store icons
  Verify Google Play & Apple Store Icons