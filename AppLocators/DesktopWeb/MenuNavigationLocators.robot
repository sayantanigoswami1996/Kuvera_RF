*** Variables ***
#Loan Navigation Page Variables
${e_loan_headerTitleText} =  Get an instant loan backed by your portfolio
${e_loan_headerMsgText} =  Let your investments work for you. The only loan account you'll ever need.
${e_loan_checkElibilityBtnText} =  Check your eligibility
${e_loginPage} =           Login. Start Investing.
${e_loan_calculatorTitleText} =  An affordable loan
@{e_loan_calculatorMsgListItem} =    Create List  up to 80% of your mutual fund portfolio.   MF units remain secure with the fund house.     No fixed loan period. A 1yr loan auto renews on the 12th month.     Loan starting from ₹25,000 up to ₹10cr.   Full disclosure. No hidden fees.
${e_loan_highlyFlexibleTitle} =   Highly flexible
${e_loan_highlyFlexibleMsg} =  Repay your outstanding loan, in full or in parts, anytime during the loan period.
${e_loan_payForWhatYouUseText} =  Pay for what you use
${e_loan_payForWhatYouUseMsgText} =  As EMI, you pay the interest portion of the outstanding loan. The Principal portion can be deposited based on comfort.
${e_loan_redemptionTitleText} =  Instant Approval
${e_loan_redemptionMsgText} =   Get money in two business days.
${e_loan_saveSuperAffordableTitleText} =  Super affordable
${e_loan_saveSuperAffordableMsgText} =   Pay as low as 10.50% per annum interest rate on a reducing balance basis.
${e_loan_startSaveTitleText} =   Easy as 1, 2, 3 & 4 
${e_loan_startSaveMsgText} =   Complete the process in under 3 minutes. It's secure, fast, and easy.
${e_loan_startSaveImage1Text} =  Import Portfolio to check eligibility
${e_loan_startSaveImage2Text} =  Select loan amount
${e_loan_startSaveImage3Text} =  Complete KYC and signature
${e_loan_startSaveImage4Text} =  Setup EMI
${e_loan_getLoanAgainstMFText} =  Get loan against Mutual Funds
${e_loan_getLoanAgainstMFMsgText} =  An affordable, quick, and flexible loan. All paperless.
${e_loan_startSaveCheckEligibiliyText} =  Check your eligibility

#Insure Navigation Page Variables


#Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
#Loan Navigation Page
${KU_W_loanHeaderTitle} =      xpath=//div[@class='b-header__title']
${KU_W_loanHeaderMsg} =       xpath=//div[contains(text(),'Let your investments work for you. The only loan a')]
${KU_W_loanCheckEligibility} =  class=b-state-save-btn__text
${KU_W_loginPageTitle} =       xpath=//div[contains(text(),'Login. Start Investing.')]
${KU_W_loanLink} =             xpath=//a[@class='b-header__content__las']
${KU_W_loanCalculatorTitle} =      xpath=//div[@class='b-calculator__text-content']/div[1]
${KU_W_loanCalculatorMsgList} =   xpath=//div[@class='b-calculator__text-content']/div[2]
${KU_W_highlyFlexibleTitle} =      xpath=//div[@class='b-withdraw-30min__title']  
${KU_W_highlyFlexibleMsg} =       xpath=//div[@class='b-withdraw-30min__msg']/p
${KU_W_payForWhatYouUseTitle} =    xpath=(//div[@class='b-sleep__text-content']/div)[1] 
${KU_W_payForWhatYouUseMsg} =     xpath=(//div[@class='b-sleep__msg']/p)[1] 
${KU_W_loanRedemptionTitle} =     xpath=//div[@class='b-instant-redemption__title']     
${KU_W_loanRedemptionMsg} =     xpath=//div[@class='b-instant-redemption__msg-div']/p
${KU_W_saveSuperAffordableTitle} =  xpath=//div[@class='b-sleep b-kuvera-save__super-affordable']/div[1]/div[1]
${KU_W_saveSuperAffordableMsg} =  xpath=//div[@class='b-sleep b-kuvera-save__super-affordable']/div[1]/div[2]/p
${KU_W_startSaveTitle}=           xpath=//div[@class='b-start-save b-kuvera-save__start-save__item']/div[1]/div[1]
${KU_W_startSaveMsg} =        xpath=//div[@class='b-start-save b-kuvera-save__start-save__item']/div[1]/div[2]
${KU_W_flowchartImage1} =       xpath=//img[@class='b-flow-chart__image b-flow-chart-image-1']
${KU_W_image1Description} =     xpath=(//div[@class='b-flow-chart__description'])[1]
${KU_W_flowchartImage2} =        xpath=//img[@class='b-flow-chart__image b-flow-chart-image-2']
${KU_W_image2Description} =       xpath=(//div[@class='b-flow-chart__description'])[2]
${KU_W_flowchartImage3} =        xpath=//img[@class='b-flow-chart__image b-flow-chart-image-3']
${KU_W_image3Description} =        xpath=(//div[@class='b-flow-chart__description'])[3]
${KU_W_flowchartImage4}=         xpath=//img[@class='b-flow-chart__image b-flow-chart-image-4']
${KU_W_image4Description} =          xpath=(//div[@class='b-flow-chart__description'])[4]
${KU_W_getLoanAgainstMF} =          xpath=//div[@class='b-start-save b-kuvera-get-loan']/div[1]/div[1]
${KU_W_getLoanAgainstMFMsg} =        xpath=//div[@class='b-start-save b-kuvera-get-loan']/div[1]/div[2]
${KU_W_startSaveCheckEligibilityBtn} =  xpath=//button[@class='button-primary b-start-save__btn b-start-save__btn-desktop']

#Insure Navigation Page    
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      


                             