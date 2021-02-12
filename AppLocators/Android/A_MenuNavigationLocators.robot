*** Variables ***
# Application Expected Values 'e_<VariableName>'
# Insure
${e_insureLink} =  Insure
${e_insurePageTitle} =  Fair and friendly health insurance is here
${e_insurePageSubTitle} =  ₹50L cover starting at ₹900 p.m. Secure your loved ones today. T&C apply
${e_insure_grpHealthInsureTitle} =  Group health insurance is for Kuvera users only
${e_insure_grpHealthInsurePoint1} =  Sign up to India’s first completely free wealth management platform.
${e_insure_grpHealthInsurePoint2} =  Explore Mutual fund, Gold, SaveSmart, Indian & US stocks, Insurance, Loan and more.
${e_insure_grpHealthInsurePoint3} =  No fees. No commission. No conflict of interest.
${e_insure_accountTitle} =  Already have an account? 
${e_insure_understandCost} =  We understand cost
${e_insure_treatmentTitle} =  Treatment
${e_insure_estCostTitle} =  Est.Cost
${e_insure_covid19} =  COVID-19
${e_insure_cancer} =  Cancer care
${e_insure_heartSurgery} =  Open heart surgery
${e_insure_kneeReplacement} =  Knee replacement
${e_insure_cancerCost} =  ₹25L
${e_insure_heartSurgeryCost} =  ₹20L
${e_insure_kneeReplacementCost} =  ₹4.5L
${e_insure_covidCost} =  ₹8L
${e_insure_bhartiAxaTitle} =  Thus we built a Group health insurance with Bharti AXA GIC
${e_insure_bhartiAxaSubTitle} =  that works for you and your loved ones by keeping:
${e_insure_everythingUNeed} =  Everything you’d need
${e_insure_gotYouCovered} =  We’ve got you covered
${e_insure_MFSubTitle} =  Sub Category
${e_insure_MFSubTitle} =  Equity
${e_insure_MFSubTitle} =  All
# Loans
${e_loansLink} =  Loans
${e_loansTitle} =  Get an instant loan backed by your portfolio
${e_loansSubTitle} =  Let your investments work for you. The only loan account you'll ever need.
${e_loans_eligibilityBtn} =  Check your eligibility
${e_loans_affordableLoanTitle} =  An affordable loan
${e_loans_affordableLoanSubTitle} =  up to 80% of your mutual fund portfolio.
${e_loans_affordableLoanPoint1} =  MF units remain secure with the fund house.
${e_loans_affordableLoanPoint2} =  No fixed loan period. A 1yr loan auto renews on the 12th month.
${e_loans_affordableLoanPoint3} =  Loan starting from ₹25,000 up to ₹10cr.
${e_loans_affordableLoanPoint4} =  Full disclosure. No hidden fees.
${e_loans_checkSavings} =  Check your savings over 3 years.
${e_loans_savingAmt} =  200000
${e_loans_portfolioTitle} =  Loan against Portfolio
${e_loans_personalLoanTitle} =  Personal Loan
${e_loans_monthlyEMI} =  Monthly EMI
${e_loans_interest} =  Interest
${e_loans_charges} =  Charges
${e_loans_highlyFlexibleTitle} =  Highly flexible
${e_loans_highlyFlexibleSubTitle} =  Repay your outstanding loan, in full or in parts, anytime during the loan period.

# Remit
${e_remitLink} =  Remit
${e_remitTitle} =  A cheaper & faster way to send money home
${e_remitSubTitle} =  Now invest easily through Kuvera, or send money to your loved ones. With our partner TransferWise, you can transfer money to India for the lowest-cost. It is simple and faster than any traditional provider.
${e_remit_tansferwiseScreenTitle} =  A cheaper, smarter alternative to international bank transfers.
${e_remit_whyTransferWise} =  Why TransferWise?
${e_remit_transferWisePoint1} =  No hidden fees
${e_remit_transferWisePoint2} =  Up to 8x cheaper than banks
${e_remit_transferWisePoint3} =  Trusted by 7 million users

# Features- Set A Goal
${e_featureLink} =  Features
${e_feature_SG_screenTitle} =  SET YOUR GOAL
${e_feature_SG_screenSubTitle} =  We'll help you bring your dreams to life.
${e_feature_SG_username} =  Test
${e_feature_SG_age} =  27
${e_feature_SG_Q_username} =  Hi there! What’s your name?
${e_feature_SG_Q_age} =  And what’s your age?

# Application Locator 'KU_<locatorName>'
# Insure 
${KU_A_insureLink} =  xpath=//*[@text='Insure']
${KU_A_insurePageTitle} =  xpath=//*[@text='Fair and friendly health insurance is here']
${KU_A_insurePageSubTitle} =  xpath=//*[@text='₹50L cover starting at ₹900 p.m. Secure your loved ones today. T&C apply']
${KU_A_insure_imgIcon} =  xpath=//*[@text='insurance-landing-page-img']
${KU_A_insure_premiumBtn} =  xpath=//*[@class='android.widget.Button']
${KU_A_insure_grpHealthInusreImg} =  xpath=(//*[@class='android.widget.Image'])[3]
${KU_A_insure_grpHealthInsureTitle} =  xpath=//*[@text='Group health insurance is for Kuvera users only']
${KU_A_insure_grpHealthInsurePoint1} =  xpath=//*[@text='Sign up to India’s first completely free wealth management platform.']
${KU_A_insure_grpHealthInsurePoint2} =  xpath=//*[@text='Explore Mutual fund, Gold, SaveSmart, Indian & US stocks, Insurance, Loan and more.']
${KU_A_insure_grpHealthInsurePoint3} =  xpath=//*[@text='No fees. No commission. No conflict of interest.']
${KU_A_insure_accountTitle} =  xpath=//*[@text='Already have an account? ']
${KU_A_insure_loginLink} =  xpath=//*[@text='Login']
${KU_A_insure_understandCost} =  xpath=//*[@text='We understand cost']
${KU_A_insure_treatmentTitle} =  xpath=//*[@text='Treatment']
${KU_A_insure_estCostTitle} =  xpath=//*[@text='Est.Cost']
${KU_A_insure_covidImg} =  xpath=(//*[@text='insurance-landing-page-img__cost-details'])[1]
${KU_A_insure_cancerImg} =  xpath=(//*[@text='insurance-landing-page-img__cost-details'])[2]
${KU_A_insure_heartSurgeryImg} =  xpath=(//*[@text='insurance-landing-page-img__cost-details'])[3]
${KU_A_insure_kneeReplacementImg} =  xpath=(//*[@text='insurance-landing-page-img__cost-details'])[4]
${KU_A_insure_covid19} =  xpath=//*[@text=' COVID-19']
${KU_A_insure_cancer} =  xpath=//*[@text=' Cancer care']
${KU_A_insure_heartSurgery} =  xpath=//*[@text=' Open heart surgery']
${KU_A_insure_kneeReplacement} =  xpath=//*[@text=' Knee replacement']
${KU_A_insure_covidCost} =  xpath=//*[@text='₹8L']
${KU_A_insure_cancerCost} =  xpath=//*[@text='₹25L']
${KU_A_insure_heartSurgeryCost} =  xpath=//*[@text='₹20L']
${KU_A_insure_kneeReplacementCost} =  xpath=//*[@text='₹4.5L']
${KU_A_insure_bhartiAxaTitle} =  xpath=//*[@text='Thus we built a Group health insurance with Bharti AXA GIC']
${KU_A_insure_bhartiAxaSubTitle} =  xpath=//*[@text='that works for you and your loved ones by keeping:']
${KU_A_insure_bhartiAxaList} =  xpath=//*[@class='android.widget.ListView']
${KU_A_insure_everythingUNeed} =  xpath=//android.view.View[@text='Everything you’d need']
${KU_A_insure_gotYouCovered} =  xpath=//*[@text='We’ve got you covered']

# Loans
${KU_A_loansLink} =  xpath=//*[@text='Loans']
${KU_A_loansTitle} =  xpath=//*[@text='Get an instant loan backed by your portfolio']
${KU_A_loansSubTitle} =  xpath=//*[@text=concat('Let your investments work for you. The only loan account you', "'", 'll ever need.')]
${KU_A_loans_imgIcon} =  xpath=//*[@text='las-landing']
${KU_A_loans_eligibilityBtn} =  xpath=//*[@text='Check your eligibility']
${KU_A_loans_affordableLoanTitle} =  xpath=//*[@text='An affordable loan']
${KU_A_loans_affordableLoanSubTitle} =  xpath=//*[@text='up to 80% of your mutual fund portfolio.']
${KU_A_loans_affordableLoanPoint1} =  xpath=//*[@text='MF units remain secure with the fund house.']
${KU_A_loans_affordableLoanPoint2} =  xpath=//*[@text='No fixed loan period. A 1yr loan auto renews on the 12th month.']
${KU_A_loans_affordableLoanPoint3} =  xpath=//*[@text='Loan starting from ₹25,000 up to ₹10cr.']
${KU_A_loans_affordableLoanPoint4} =  xpath=//*[@text='Full disclosure. No hidden fees.']
${KU_A_loans_checkSavings} =  xpath=//*[@text='Check your savings over 3 years.']
${KU_A_loans_portfolioTitle} =  xpath=//*[@text='Loan against Portfolio']
${KU_A_loans_monthlyEMI} =  xpath=//*[@text='Monthly EMI']
${KU_A_loans_interest} =  xpath=//*[@text='Interest']
${KU_A_loans_charges} =  xpath=//*[@text='Charges']
${KU_A_loans_personalLoanTitle} =  xpath=//*[@text='Personal Loan']
${KU_A_loans_highlyFlexibleTitle} =  xpath=//*[@text='Highly flexible']
${KU_A_loans_highlyFlexibleSubTitle} =  xpath=//*[@text='Repay your outstanding loan, in full or in parts, anytime during the loan period.']
${KU_A_loans_charges} =  xpath=//*[@text='Charges']
${KU_A_loans_personalLoanTitle} =  xpath=//*[@text='Personal Loan']
${KU_A_loans_highlyFlexibleImg} =  xpath=//*[@text='highlyflexible']
${KU_A_loans_personalChargesVal} =  xpath=//*[@text='₹6,000']
${KU_A_loans_personalIntVal} =  xpath=//*[@text='15.00%']
${KU_A_loans_personalEMIVal} =  xpath=//*[@text='₹6,933']
${KU_A_loans_portfolioChargesVal} =  xpath=//*[@text='₹1,999']
${KU_A_loans_portfolioEMIVal} =  xpath=//*[@text='₹1,750']
${KU_A_loans_portfolioIntVal} =  xpath=//*[@text='10.50%']

# Remit
${KU_A_remitLink} =  xpath=//*[@text='Remit']
${KU_A_remitTitle} =  xpath=//*[@text='A cheaper & faster way to send money home']
${KU_A_remitSubTitle} =  xpath=//*[@text='Now invest easily through Kuvera, or send money to your loved ones. With our partner TransferWise, you can transfer money to India for the lowest-cost. It is simple and faster than any traditional provider.']
${KU_A_remit_imgIcon} =  xpath=(//*[@class='android.widget.Image'])[3]
${KU_A_remit_kuveraLogoImg} =  xpath=(//*[@text='kuvera-logo-dark'])[2]
${KU_A_remit_transferwiseImg} =  xpath=//*[@text='transferwise-logo']
${KU_A_remit_transferNowBtn} =  xpath=//*[@text='Transfer now']
${KU_A_remit_sendMoneyBtn} =  xpath=//*[@text='Send money']
${KU_A_remit_conitnueBtn} =  xpath=//*[@text='Continue']
${KU_A_remit_nextStepsTitle} =  xpath=//*[@text='Next steps']
${KU_A_remit_nextStepsSubTitle} =  xpath=//*[@text='Transfer online in under 5 minutes.']
${KU_A_remit_step1} =  xpath=//*[@text='Step 1']
${KU_A_remit_step1Desc} =  xpath=//*[@text='Register with Transferwise. It is required by regulation.']
${KU_A_remit_step2} =  xpath=//*[@text='Step 2']
${KU_A_remit_step2Desc} =  xpath=//*[@text='Enter your transfer amount']
${KU_A_remit_step3} =  xpath=//*[@text='Step 3']
${KU_A_remit_step3Desc} =  xpath=//*[@text='Add your bank details']
${KU_A_remit_step4} =  xpath=//*[@text='Step 4']
${KU_A_remit_step4Desc} =  xpath=//*[@text='Pay for your transfer and you are done!']
${KU_A_remit_transferwiseScreenTitle} =  xpath=//*[@text='A cheaper, smarter alternative to international bank transfers.']
${KU_A_remit_whyTransferWise} =  xpath=//*[@text='Why TransferWise?']
${KU_A_remit_whyTransferWisePoint1} =  xpath=//*[@text='No hidden fees']
${KU_A_remit_whyTransferWisePoint2} =  xpath=//*[@text='Up to 8x cheaper than banks']
${KU_A_remit_whyTransferWisePoint3} =  xpath=//*[@text='Trusted by 7 million users']
${KU_A_remit_noHiddenFeesImg} =  xpath=//*[@text='no_hidden_fee']
${KU_A_remit_8TimesCheaperImg} =  xpath=//*[@text='8_times_cheaper']
${KU_A_remit_trustedCustomersImg} =  xpath=//*[@text='trusted_customers']

# Feature- Set A Goal
${KU_A_featureLink} =  xpath=//*[@text='Features ']
${KU_A_featureDropdown} =  xpath=//*[@class='android.widget.Image' and (./preceding-sibling::* | ./following-sibling::*)[@class='android.widget.TextView']]
${KU_A_feature_setAGoalLink} =  xpath=//*[@text='Set a Goal']
${KU_A_feature_ownAHome} =  xpath=//*[@text='OWN A HOME']
${KU_A_feature_SG_screenTitle} =  xpath=//*[@text='SET YOUR GOAL']
${KU_A_feature_SG_screenSubTitle} =  xpath=//*[@text=concat('We', "'", 'll help you bring your dreams to life.')]
${KU_A_feature_SG_questionScreen} =  xpath=//*[@text='YOUR GOAL']
${KU_A_feature_SG_Q_username} =  xpath=//*[@text='Hi there! What’s your name?']
${KU_A_feature_SG_Q_age} =  xpath=//*[@text='And what’s your age?']
${KU_A_feature_SG_continueBtn} =  xpath=//*[@text='Continue']

