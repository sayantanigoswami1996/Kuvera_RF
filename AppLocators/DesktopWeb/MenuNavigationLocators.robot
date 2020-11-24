*** Variables *** 
# Application Expected Values 'e_<variableName>'
# Loan List 
@{e_loan_calculatorMsgListItem} =  MF units remain secure with the fund house.  No fixed loan period. A 1yr loan auto renews on the 12th month.     Loan starting from ₹25,000 up to ₹10cr.  Full disclosure. No hidden fees.
# Loan Navigation Page Variables
${e_loan_headerTitleText} =  Get an instant loan backed by your portfolio
${e_loan_headerMsgText} =  Let your investments work for you. The only loan account you'll ever need.
${e_loan_checkElibilityBtnText} =  Check your eligibility
${e_loan_calculatorTitleText} =  An affordable loan
${e_loan_calculatorSubTitleText} =  up to 80% of your mutual fund portfolio.   
${e_loan_highlyFlexibleTitle} =  Highly flexible
${e_loan_highlyFlexibleMsg} =  Repay your outstanding loan, in full or in parts, anytime during the loan period.
${e_loan_payForWhatYouUseText} =  Pay for what you use
${e_loan_payForWhatYouUseMsgText} =  As EMI, you pay the interest portion of the outstanding loan. The Principal portion can be deposited based on comfort.
${e_loan_redemptionTitleText} =  Instant Approval
${e_loan_redemptionMsgText} =   Get money in two business days.
${e_loan_saveSuperAffordableTitleText} =  Super affordable
${e_loan_saveSuperAffordableMsgText} =  Pay as low as 10.50% per annum interest rate on a reducing balance basis.
${e_loan_startSaveTitleText} =  Easy as 1, 2, 3 & 4 
${e_loan_startSaveMsgText} =  Complete the process in under 3 minutes. It's secure, fast, and easy.
${e_loan_startSaveImage1Text} =  Import Portfolio to check eligibility
${e_loan_startSaveImage2Text} =  Select loan amount
${e_loan_startSaveImage3Text} =  Complete KYC and signature
${e_loan_startSaveImage4Text} =  Setup EMI
${e_loan_getLoanAgainstMFText} =  Get loan against Mutual Funds
${e_loan_getLoanAgainstMFMsgText} =  An affordable, quick, and flexible loan. All paperless.
${e_loan_startSaveCheckEligibiliyText} =  Check your eligibility


# Insure List
@{e_insure_treatmentListItem} =  COVID-19  Cancer care  Open heart surgery  Knee replacement
@{e_insure_policyListItem} =  Policy wording simple.  Premium cost low.  Year round support.

# Insure Navigation Page Variables
${e_insure_headerTitleText} =  Fair and friendly health insurance is here
${e_insure_headerMsgText} =  ₹50L cover starting at ₹900/month*. Secure your loved ones today.
${e_insure_T&CText} =  *T&C apply
${e_insure_checkPremiumBtnText} =  Check premium
${e_insure_costDetailsHeaderText} =  We understand cost
${e_insure_treatmentTitleText} =  Treatment
${e_insure_treatmentCostTitleText} =  Est.Cost
${e_insure_covid19TitleText} =  COVID-19
${e_insure_covid19CostText} =  ₹8L
${e_insure_cancerCareTitleText} =  Cancer care
${e_insure_cancerCareCostText} =  ₹25L
${e_insure_openHeartSurgeryTitleText} =  Open heart surgery
${e_insure_openHeartSurgeryCostText} =  ₹20L
${e_insure_kneeReplacementTitleText} =  Knee replacement
${e_insure_kneeReplacementCostText} =  ₹4.5L
${e_insure_grpHealthInsuranceTitleText} =  Thus we built a Group health insurance with Bharti AXA GIC
${e_insure_grpHealthInsuranceSubTitleText} =  that works for you and your loved ones by keeping:
${e_insure_covid19CardText} =  COVID-19 protection
${e_insure_covid19MsgText} =   Corona treatment covered after 30 days of policy issuance.
${e_insure_roomrentCardText} =  No room rent capping
${e_insure_roomrentMsgText} =  Get a single A/C room across all hospitals chains in India.
${e_insure_treatmentCappingCardText} =  No treatment capping
${e_insure_treatmentCappingMsgText} =  There is no capping on any specific treatment. Everything is up to sum insured.
${e_insure_copaymentCardText} =   No co-payment
${e_insure_copaymentMsgText} =  You don’t have to shell anything on any treatment. Absolutely zero cost sharing.
${e_insure_30daySettlementCardText} =  30-day settlement guarantee
${e_insure_30daySettlementMsgText} =  Get paid within 30 days of claim acceptance or get 2% above current bank rate interest till it is settled. 
${e_insure_ayushCoveredCardText} =  AYUSH covered
${e_insure_ayushCoveredMsgText} =  Ayurveda, Yoga and Naturopathy, Unani, Siddha and Homeopathy covered up to full sum insured. 
${e_insure_lowWaitingPeriodCardText} =  Lowest waiting period 
${e_insure_lowWaitingPeriodMsgText} =  Get your pre-existing and specific illness covered within 2 years.
${e_insure_dailyExpenseCardText} =  Daily cash expenses
${e_insure_dailyExpenseMsgText} =  Get up to ₹10k a day to cover out of pocket expenses during hospitalisation.
${e_insure_dedicatedSupportCardText} =  Dedicated support 
${e_insure_dedicatedSupportMsgText} =  Get year-round dedicated support. 

${e_insure_trustedPartnerTitleText} =  Trusted partner
${e_insure_trustedPartnerSubTitleText} =  With a 97% Claim settlement ratio, we’ve partnered with the best.
${e_insure_flexibleCoverageTitleText} =  Flexible coverage
${e_insure_flexibleCoevrageSubTitleText} =  Pick a Base/SuperTop-up/Daily-cash or all 3. Coverage from ₹3L to ₹75L.
${e_insure_saveTaxTitleText} =  Save up to ₹1 lakh in tax
${e_insure_saveTaxSubTitleText} =  Claim tax under section 80D.
${e_insure_healthCoverTitleText} =  Health cover that’s right for you.
${e_insure_checkPremiumBtn2Text} =  Check premium

# Remit List 
@{e_remit_whyTransferWiseList} =  No hidden fees  Up to 8x cheaper than banks  Trusted by 7 million users  Fast way to send money  Mid-market exchange rate
# Remit Navigation Page Variables
${e_remit_screenTitle} =  A cheaper & faster way to send money home
${e_remit_screenTitleDesc} =  Now invest easily through Kuvera, or send money to your loved ones. With our partner TransferWise, you can transfer money to India for the lowest-cost. It is simple and faster than any traditional provider.
${e_remit_transferNowBtn} =  Transer now
${e_remit_transferWiseSignupTitle} =  Transfer Money Online | Send Money Abroad with TransferWise - Sign up
${e_remit_transferWiseCross-borderTitle} =  Making cross-border investments with Kuvera seamless and easy | TransferWise - TransferWise

# Feature - Set a Goal
${e_feature_sg_screenTitle} =  SET YOUR GOAL
${e_feature_sg_screenSubTitle} =  We'll help you bring your dreams to life.
${e_feature_sg_content} =  Setting a financial goal is the first step to making your dreams a reality. Investing regularly is the next. We make it really simple for you, and we’re with you every step of the way. Simply choose your goal to get started.
${e_feature_sg_Q1} =  Hi there! What’s your name?
${e_feature_sg_Q2} =  And what’s your age?
${e_feature_sg_Q3} =  How much does your dream home cost today?
${e_feature_sg_Q4} =  In how many years do you want to buy this home?
${e_feature_sg_Q5} =  Will you be taking a home loan?
${e_feature_sg_Q6} =  How much will you make as downpayment?
${e_feature_sg_Q7} =  How much can you invest upfront? 
${e_feature_sg_A1_userName} =  Test
${e_feature_sg_A2_userAge} =  27 
${e_feature_sg_A3_homeCost} =  5000000
${e_feature_sg_A4_goalDuration} =  2
${e_feature_sg_A6_downPayment} =  15
${e_feature_sg_A7_upFront} =  5000
${e_feature_sg_almostDone} =  Almost done! Let’s personalise your plan.
${e_feature_sg_seeYourPlan} =  SEE YOUR PLAN
${e_feature_sg_getThisPlan} =  GET THIS PLAN

${e_feature_sg_buyaCar_Q3} =  How much does your dream car cost today?
${e_feature_sg_A3_carCost} =  6000000
${e_feature_sg_buyAcar_Q4} =  In how many years do you want to buy this car?
${e_feature_sg__saveTax_Q3} =  How much do you want to invest monthly?
${e_feature_sg_A3_monthlyInvestment} =  10000
${e_feature_sg_saveTax_Q4} =  For how long do you want to invest?
${e_feature_sg_saveTax_Q5} =  Enter a amount you can invest upfront, else enter 0.

# Feature-TradeSmart Navigation Page Variables
${e_feature_ts_titleText} =  TradeSmart
${e_feature_ts_subHeaderDesc} =  A switch or redeem order involves costs – taxes on short & long-term capital gains and exit load. TradeSmart shows you the optimal amount you can switch or redeem with the least tax and exit load.
${e_feature_ts_activationTitle} =  Activate once, use forever!
${e_feature_ts_activationSubTitle} =  Use 300 coins to activate TradeSmart, and use it forever.
${e_ts_activateBtnText} =  Activate with 300
${e_feature_helpTradeSmartTitleText} =  We help you trade smart
${e_feature_helpTradeSmartDesc1Text} =  See regular plan units as they become available to switch to direct plans with the least tax and exit load impact. Switching to Direct has never been easier or cheaper.
${e_feature_helpTradeSmartDesc2Text} =  See optimal number of fund units to switch or redeem before you transact. Make better decisions.
${e_feature_helpTradeSmartDesc3Text} =  We take care of all complexities. 1 year STCG for equity, 3 year for debt, indexation for debt, lock-in for ELSS schemes etc. We optimize over it all.

# Feature-Family Account Navigation Page 
${e_feature_fa_screenTitle} =  Invest with Your Loved Ones
${e_feature_fa_screenContent} =  Just Sign up with one account, and manage investment for your relatives and family members. Multiple accounts under same login. All in one place. Even Joint Account too!
${e_activateWithBtn} =  Activate with 200

# Feature-ManageAccount Navigation Page Variables
${e_feature_manageAccountTitleText} =  Manage Account
${e_feature_manageAccountDesc1Text} =  Add your financial advisor as a Manager to your Kuvera account and let them guide your investments.
${e_feature_manageAccountDesc2Text} =  You retain full access to your account. All transactions would be validated & approved by you via OTP.
${e_feature_addManagerBtnText} =  Add  manager

# Feature-Tax Harvesting Navigation Page Variables
${e_feature_th_TitleText} =  Save up to ₹10,000 in LTCG taxes every financial year with Tax Harvesting.
${e_feature_th_subTitleText} =  Minimise your long term tax impact by realising up to ₹1 Lakh of Long Term Capital Gain (LTCG) every financial year with no tax.
${e_feature_th_subscribeBtnText} =  Subscribe 499 / FY
${e_feature_whatIsTHTitleText} =  What is Tax Harvesting?
${e_feature_th_definitionText} =  Long-term gains from equity funds are taxed at 10%. Tax Harvesting is a technique that reduces this impact. It utilises the ₹1 Lakh annual LTCG exemption by selling and buying back part of your investment such that you “realise” gains every year. Learn more
${e_feature_th_learnMoreLnkTxt} =  Learn more
${e_feature_th_learnMoreTitle} =  Tax Harvesting can save up to ₹10,000 in LTCG taxes every year! - Kuvera
${e_feature_th_assumptionText} =  Let’s say your investment yields gains of ₹1L every year. After 3 years, the gains are ₹3L and you decide to sell.
${e_feature_withTHTitleText} =  With Tax Harvesting
${e_feature_withoutTHTitleText} =  Without Tax Harvesting
${e_feature_th_tableRow1Text} =  Pre-tax Gains\n₹3.0L\n₹3.0L
${e_feature_th_tableRow2Text} =  Taxable Gains\n(minus 1L exempt)\n₹2.0L\nNIL
${e_feature_th_tableRow3Text} =  LTCG tax @10%\n₹0.2L\nNIL
${e_feature_th_tableSumupRowText} =  In-hand gains\n₹2.8L\n₹3.0L
${e_feature_th_workCardTitleText1} =  Receive  timely recommendations       
${e_feature_th_workCardTitleText2} =  Follow the transaction recommended
${e_feature_th_workCardTitleText3} =  Congrats, you’ve reduced your tax impact!
${e_feature_th_workCardDescText1} =  We monitor your portfolio, and recommend a transaction when applicable.  
${e_feature_th_workCardDescText2} =  You initiate the transaction. To minimise NAV impact, we advise buying and selling the fund(s) on the same day.  
${e_feature_th_workCardDescText3} =  Sit back and enjoy the fruits of Tax Harvesting.  
${e_feature_th_pricingTitleText} =  Pricing 
${e_feature_th_coinAmount} =  499 
${e_feature_th_yearText} =  per financial year
${e_feature_th_checkDescText1} =  Receive timely recommendations to harvest tax  
${e_feature_th_checkDescText2} =  View history of tax harvested each financial year  
${e_feature_th_checkDescText3} =  Automatic calculation of tax harvested on any sell transaction  
${e_feature_th_startHarvestText} =  The time is ripe! Start harvesting today.  

# Features-Save Taxes Navigation Page Variables
${e_feature_st_screenTitleText} =  Top rated tax saving funds  
${e_feature_st_screenContentText} =  Funds that feature in “Best Tax Saving Mutual Fund” lists across the web.
${e_feature_st_taxHeadingText} =  Save Taxes.  
${e_feature_st_taxDescText} =  Tax Saving ELSS Mutual Funds can help save upto ₹ 46,350 in taxes 
${e_feature_st_commissionHeadingText} =  Save Commissions.  
${e_feature_st_commissionDescText} =  We are a Direct Plan platform. You save upto 1.5% per year in commission
${e_feature_st_feesHeadingText} =  Save Fees. 
${e_feature_st_feesDescText} =  We are free. No investment fees whatsover. It doesn't get better than this.
${e_feature_st_fundingTitleText} =  How the ‘Tax Saving Funds’ work
${e_feature_st_fundingDescText} =  Investments in Tax Saving Mutual Funds (also called ELSS funds) are eligible as deductions under Section 80C of the Income Tax Act. You can invest up to Rs 1.5 lakhs in eligible investments. At the highest tax bracket this would lead to a tax saving of Rs 46,350. There is a lock-in of 3 years, during which time you cannot redeem your investment.
${e_feature_st_learnHowLinkText} =  Learn how!
${e_feature_st_pageTitleText} =  Tax Archives - Kuvera            
${e_feature_st_investmentText} =  Investment
${e_feature_st_lockInText} =  Lock In 
${e_feature_st_historicalReturnsText} =  Historical Returns 
${e_feature_st_tableRow1Text} =  Tax Saving Funds 3 Years  17 - 24%
${e_feature_st_tableRow2Text} =  Life Insurance  5 Years  0-6%
${e_feature_st_tableRow3Text} =  PPF  15 Years  8.5%
${e_feature_st_tableRow4Text} =  NSC  5/10 Years  8.5%
${e_feature_st_tableRow5Text} =  FD  5 Years  9.0%

#Features- Consolidate Navigatio Page Variables
${e_feature_cd_pageHeaderText} =  Informed, disciplined investing grows your money, long-term 
${e_feature_cd_subHeaderText} =  Follow a structured approach and invest regularly, for the long-haul. This is the best way to grow your wealth over time
${e_feature_cd_setAGoalTitleText} =  DREAMS DO COME TRUE  
${e_feature_cd_setAGoalSubTitle} =  Make your goals a reality
${e_feature_cd_setAGoalDescTitle} =   A new car, owning your own home, sending your kids to study abroad - you may have many reasons to invest. We help you build investment action plans that’ll help you make enough to make these goals a reality. More about goal-based investing
${e_feature_cd_goalBsdInvestingLinkText} =  More about goal-based investing
${e_feature_cd_financialSuccessTitleText} =  3 Steps To Financial Success Using Goal-Based Investing - Kuvera
${e_feature_cd_setAGoalBtnText} =  SET A GOAL

# Application Locator 'KU_<locatorName>'

# Button 
${KU_W_button} =  xpath=(//button[@class='button-primary'])[1]

# Loan Navigation Page
${KU_W_loanLink} =  xpath=//a[contains(text(),'Loans')]
${KU_W_loanHeaderTitle} =  xpath=//div[@class='b-header__title']
${KU_W_loanHeaderMsg} =  xpath=//div[contains(text(),'Let your investments work for you. The only loan a')]
${KU_W_loanCheckEligibility} =  class=b-state-save-btn__text
${KU_W_loanCalculatorTitle} =  xpath=//div[@class='b-calculator__text-content']/div[1]
${KU_W_loanCalculatorMsgList} =  xpath=//ul[@class='b-calculator__list']/li
${KU_W_highlyFlexibleTitle} =  xpath=//div[@class='b-withdraw-30min__title']  
${KU_W_highlyFlexibleMsg} =  xpath=//div[@class='b-withdraw-30min__msg']/p
${KU_W_payForWhatYouUseTitle} =  xpath=(//div[@class='b-sleep__text-content']/div)[1] 
${KU_W_payForWhatYouUseMsg} =  xpath=(//div[@class='b-sleep__msg']/p)[1] 
${KU_W_loanRedemptionTitle} =  xpath=//div[@class='b-instant-redemption__title']     
${KU_W_loanRedemptionMsg} =  xpath=//div[@class='b-instant-redemption__msg-div']/p
${KU_W_saveSuperAffordableTitle} =  xpath=//div[@class='b-sleep b-kuvera-save__super-affordable']/div[1]/div[1]
${KU_W_saveSuperAffordableMsg} =  xpath=//div[@class='b-sleep b-kuvera-save__super-affordable']/div[1]/div[2]/p
${KU_W_startSaveTitle} =  xpath=//div[@class='b-start-save b-kuvera-save__start-save__item']/div[1]/div[1]
${KU_W_startSaveMsg} =  xpath=//div[@class='b-start-save b-kuvera-save__start-save__item']/div[1]/div[2]
${KU_W_flowchartImage1} =  xpath=//img[@class='b-flow-chart__image b-flow-chart-image-1']
${KU_W_image1Description} =  xpath=(//div[@class='b-flow-chart__description'])[1]
${KU_W_flowchartImage2} =  xpath=//img[@class='b-flow-chart__image b-flow-chart-image-2']
${KU_W_image2Description} =  xpath=(//div[@class='b-flow-chart__description'])[2]
${KU_W_flowchartImage3} =  xpath=//img[@class='b-flow-chart__image b-flow-chart-image-3']
${KU_W_image3Description} =  xpath=(//div[@class='b-flow-chart__description'])[3]
${KU_W_flowchartImage4}=  xpath=//img[@class='b-flow-chart__image b-flow-chart-image-4']
${KU_W_image4Description} =  xpath=(//div[@class='b-flow-chart__description'])[4]
${KU_W_getLoanAgainstMF} =  xpath=//div[@class='b-start-save b-kuvera-get-loan']/div[1]/div[1]
${KU_W_getLoanAgainstMFMsg} =  xpath=//div[@class='b-start-save b-kuvera-get-loan']/div[1]/div[2]
${KU_W_startSaveCheckEligibilityBtn} =  xpath=//button[@class='button-primary b-start-save__btn b-start-save__btn-desktop']
  
# Insure Navigation Page  
${KU_W_insureLink} =  xpath=//a[contains(text(),'Insure')]
${KU_W_insureHeaderTitle} =  xpath=(//div[@class='b-health-insurance-landing__title--main'])[1]
${KU_W_insureHeaderMsg} =  xpath=(//div[@class='b-health-insurance-landing__title--text'])[1]
${KU_W_termsAndConditions} =  xpath=//span[@class='b-health-insurance-landing__term-condition']
${KU_W_checkPremiumBtn1} =  xpath=(//button[@class='button-primary'])[1]
${KU_W_costDetailsHeaderTitle} =  xpath=//div[@class='b-health-insurance-landing__cost-details--table__text']
${KU_W_treatmentTitle} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__treatment'])[1]
${KU_W_treatmentCostTitle} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__cost'])[1]

${KU_W_covid19Cost} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__cost'])[2]
${KU_W_cancerCareCost} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__cost'])[3]
${KU_W_OpenHeartSurgeryCost} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__cost'])[4]
${KU_W_kneeReplacementCost} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__cost'])[5]

${KU_W_covid19Title} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__treatment'])[2]
${KU_W_cancerCareTitle} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__treatment'])[3]
${KU_W_heartSurgeryTitle} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__treatment'])[4]
${KU_W_kneeReplacmentTitle} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__treatment'])[5]

${KU_W_covid19Image} =  xpath=(//img[@class='b-health-insurance-landing__cost-details--img'])[1] 
${KU_W_cancerCareImage} =  xpath=(//img[@class='b-health-insurance-landing__cost-details--img'])[2] 
${KU_W_openHeartSurgeryImage} =  xpath=(//img[@class='b-health-insurance-landing__cost-details--img'])[3] 
${KU_W_kneeReplacementImage} =  xpath=(//img[@class='b-health-insurance-landing__cost-details--img'])[4] 

${KU_W_groupHealthInsuranceTitle} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--brief']/div)[1] 
${KU_W_grpHealthInsurranceSubTitle} =  xpath=(//div[@class='b-health-insurance-landing__title--text'])[2]
${KU_W_insurancePolicyLists} =  xpath=//ul[@class='b-health-insurance-landing__policy-list']/li 

${KU_W_covid19CardTitle} =  xpath=(//div[@class='b-feature-card__title'])[1]
${KU_W_covid19Msg} =  xpath=(//div[@class='b-feature-card__msg'])[1]
${KU_W_roomrentCardTitle} =  xpath=(//div[@class='b-feature-card__title'])[2] 
${KU_W_roomrentMsg} =  xpath=(//div[@class='b-feature-card__msg'])[2] 
${KU_W_treatmentCappingCardTitle} =  xpath=(//div[@class='b-feature-card__title'])[3] 
${KU_W_treatmentCappingMsg} =  xpath=(//div[@class='b-feature-card__msg'])[3] 
${KU_W_copaymentCardTitle} =  xpath=(//div[@class='b-feature-card__title'])[4] 
${KU_W_copaymentMsg} =  xpath=(//div[@class='b-feature-card__msg'])[4]
${KU_W_30daySettlemenCardTitle} =  xpath=(//div[@class='b-feature-card__title'])[5] 
${KU_W_30daySettlemenMsg} =  xpath=(//div[@class='b-feature-card__msg'])[5]
${KU_W_ayushCoveredCardTitle} =  xpath=(//div[@class='b-feature-card__title'])[6] 
${KU_W_ayushCoveredMsg} =  xpath=(//div[@class='b-feature-card__msg'])[6] 
${KU_W_lowWaitingPeriodCardTitle} =  xpath=(//div[@class='b-feature-card__title'])[7] 
${KU_W_lowWaitingPeriodMsg} =  xpath=(//div[@class='b-feature-card__msg'])[7]
${KU_W_dailyExpenseCardTitle} =  xpath=(//div[@class='b-feature-card__title'])[8]
${KU_W_dailyExpenseMsg} =  xpath=(//div[@class='b-feature-card__msg'])[8]
${KU_W_dedicatedSupportCardTitle} =  xpath=(//div[@class='b-feature-card__title'])[9] 
${KU_W_dedicatedSupportMsg} =  xpath=(//div[@class='b-feature-card__msg'])[9]
${KU_W_sliderButton} =  xpath=//div[@class='b-slide-card-list__btns__next b-slide-card-list__btns__next--active']

${KU_W_trustedPartnerTitle} =  xpath=(//div[@class='b-health-insurance-landing__insurance-brief__row--items__content']/div)[1] 
${KU_W_trustedPartnerSubTitle} =  xpath=(//div[@class='b-health-insurance-landing__insurance-brief--subheading'])[1] 
${KU_W_flexibleCoverageTitle} =  xpath=(//div[@class='b-health-insurance-landing__insurance-brief__row--items__content']/div)[3]
${KU_W_flexibleCoverageSubtitle} =  xpath=(//div[@class='b-health-insurance-landing__insurance-brief--subheading'])[2] 
${KU_W_saveTaxTitle} =  xpath=(//div[@class='b-health-insurance-landing__title--main'])[6]
${KU_W_saveTaxSubTitle} =  xpath=(//div[@class='b-health-insurance-landing__insurance-brief--subheading'])[3]
${KU_W_healthCoverTitle} =  xpath=//div[@class='b-health-insurance-landing__healthcare-cover--wrapper']/div 
${KU_W_checkPremiumBtn2} =  xpath=(//button[@class='button-primary'])[2]

# Remit Page    
${KU_W_remit_Link} =  xpath=//a[contains(text(),'Remit')]
${KU_W_remit_screenTitle} =  xpath=//*[@class='b-introduction__desc__title']
${KU_W_remit_screenTitleDesc} =  xpath=//*[@class='b-introduction__desc__content']      
${KU_W_remit_transferNowTopBtn} =  xpath=//*[@class='button-primary b-introduction__btn-transfer__item']      
${KU_W_remit_whyTransferWise} =  xpath=//*[@class='b-why-transferwise b-transferwise__calculator-why__item__content']/div    
${KU_W_remit_whyTransferWiseList} =  xpath=//*[@class='b-why-transferwise__list']/div     
${KU_W_transferWiseStepsModal} =  xpath=//*[@class='b-transferwise-transfer-step__title__items__1']
${KU_W_transferWiseNextStepsList} =  xpath=//*[@class='b-transferwise-transfer-step__step__item__content']/div
${KU_W_transferWiseNextStepsContinueBtn} =  xpath=//*[@class='button-primary b-transferwise-transfer-step__btn-continue__item']
${KU_W_transferWiseStepsClose} =  xpath=//*[@class='b-transferwise-transfer-step__title__img-close']
${KU_W_transferWiseVideo} =  xpath=//*[@class='b-how b-transferwise__how']
${KU_W_remit_calculator_iFrame} =  xpath=//iFrame[@class='b-calculator__iframe-transferwise'] 
${KU_W_remit_sendMoneyBtn} =  xpath=(//button[@type='button'])[3]      
${KU_W_remit_knowMoreBtn} =  xpath=//button[@class='button-primary b-why-transferwise__btn-know-more']  
${KU_W_remit_calculatorTarget} =  xpath=//*[@id="tw-calculator-target"]
${KU_W_remit_transferNoBottomBtn} =  xpath=//button[@class='button-primary b-how__btn-transfer']

# Feature 
${KU_W_featureSubList} =  xpath=//div[@class='b-header__sub-content']/div/a

# Feature - Set a Goal
${KU_W_feature_setAGoalLink} =  xpath=//a[contains(text(),'Set a Goal')]
${KU_W_feature_goalsList} =  xpath=//*[@class='cards']/a/p
${KU_W_feature_sg_screenTitle} =  xpath=//*[@class='goals-index col-sm-4']/h2
${KU_W_feature_sg_screenSubTitle} =  xpath=//*[@class='goals-index col-sm-4']/h1
${KU_W_feature_sg_content} =  xpath=//p[@class='hidden-xs']
${KU_W_feature_sg_ownAHome} =  xpath=(//p[@class='card-title'])[1]
${KU_W_feature_sg_buyACar} =  xpath=(//p[@class='card-title'])[2]
${KU_W_feature_sg_saveTax} =  xpath=(//p[@class='card-title'])[3]
${KU_W_feature_sg_retireEasy} =  xpath=(//p[@class='card-title'])[4]
${KU_W_feature_sg_25thAnniversary} =  xpath=(//p[@class='card-title'])[5]
${KU_W_feature_sg_foreignVacation} =  xpath=(//p[@class='card-title'])[6]
${KU_W_feature_sg_educateMyChild} =  xpath=(//p[@class='card-title'])[7]
${KU_W_feature_sg_createMyOwn} =  xpath=(//p[@class='card-title'])[8]
${KU_W_feature_sg_questionScreen} =  id=title-box
${KU_W_feature_sg_titleBoxSection} =  id=p9e7d2f05349193e9421e568b092da688e5010650-container
${KU_W_feature_sg_goalName} =  xpath=//*[@id="title-box"]/h2
${KU_W_feature_sg_Q1} =  xpath=(//p[@class='question'])[1]
${KU_W_feature_sg_Q2} =  xpath=(//p[@class='question'])[2]
${KU_W_feature_sg_Q3} =  xpath=(//p[@class='question'])[3]
${KU_W_feature_sg_Q4} =  xpath=(//p[@class='question'])[4]
${KU_W_feature_sg_Q5} =  xpath=(//p[@class='question'])[5]
${KU_W_feature_sg_Q6} =  xpath=(//p[@class='question'])[6]
${KU_W_feature_sg_Q7} =  xpath=(//p[@class='question'])[7]
${KU_W_feature_sg_Q1_userName} =  xpath=//input[@name='username']
${KU_W_feature_sg_Q2_userAge} =  xpath=//input[@name='userage']
${KU_W_feature_sg_Q3_homeCost} =  xpath=//input[@name='costofhome']
${KU_W_feature_sg_Q4_goalDuration} =  xpath=//input[@name='goalduration']
${KU_W_feature_sg_Q5_yes} =  xpath=//button[@class='btn btn-lg btn-custom btn-custom-yes']
${KU_W_feature_sg_Q5_no} =  xpath=//button[@class='btn btn-lg btn-custom btn-custom-no btn-danger']
${KU_W_feature_sg_Q6_downPayment} =  xpath=//input[@name='downpayment']
${KU_W_feature_sg_A7_upFront} =  xpath=//input[@name='upfront']
${KU_W_feature_sg_almostDone} =  xpath=//div[@class='risk-profile-heading']/h2
${KU_W_feature_sg_continue} =  xpath=//button[@class='btn in-btn']
${KU_W_feature_sg_investmentSummary} =  xpath=//*[@class='investment-summary']
${KU_W_feature_sg_seeYourPlan} =  xpath=//button[@class='btn in-btn']
${KU_W_feature_sg_getThisPlan} =  xpath=//button[@class='btn in-btn hidden-xs']
${KU_W_feature_sg_closeBtn} =  xpath=//a[@class='header-actions close-nav close-btn active']
${KU_W_feature_sg_Q3_carCost} =  xpath=//input[@name='costtoday'] 
${KU_W_feature_sg_Q3_monthlyInvestment} =  xpath=//input[@name='sip']

# Feature-TradeSmart Page
${KU_W_featureLink} =  xpath=//a[contains(text(),'Features')]
${KU_W_feature_ts_Link} =  xpath=//a[contains(text(),'TradeSmart')]
${KU_W_feature_ts_title} =  xpath=//div[@class='b-trade-smart__header__desc__title'] 
${KU_W_feature_ts_subHeaderTitle} =  xpath=//div[@class='b-trade-smart__header__desc__content']
${KU_W_feature_ts_activationTitle} =  xpath=//div[@class='b-trade-smart__header__desc__activate-title']
${KU_W_feature_ts_activationMsg} =  xpath=//div[@class='b-trade-smart__header__desc__activate-desc']
${KU_W_feature_ts_activateBtn} =  xpath=//button[@class='button-primary b-trade-smart__header__desc__activate-btn']
${KU_W_feature_ts_coinImage} =  xpath=//img[@class='b-trade-smart__header__desc__activate-btn__coin-icon']
${KU_W_feature_helpTradeSmartTitle} =  xpath=//div[@class='b-trade-smart__help-title']
${KU_W_feature_helpTradeSmart1Msg} =  xpath=//div[@class='b-trade-smart__help-desc']/div[1] 
${KU_W_feature_helpTradeSmart2Msg} =  xpath=//div[@class='b-trade-smart__help-desc']/div[2]
${KU_W_feature_helpTradeSmart3Msg} =  xpath=//div[@class='b-trade-smart__help-desc']/div[3]
${KU_W_feature_aboutUs} =  xpath=(//ul[@class='list-unstyled']/li)[1]


# Feature-Family Account
${KU_W_feature_familyAccountLink} =  xpath=//a[contains(text(),'Family Account')]  
${KU_W_feature_fa_screenTitle} =  xpath=//h1[@class='b-family-account__what__heading']
${KU_W_feature_fa_screenContent} =  xpath=//div[@class='b-family-account__what__des']

# Feature-ManageAccount Page
${KU_W_feature_manageAccountLink} =  xpath=//a[contains(text(),'Manage Account')]
${KU_W_feature_manageAccountTitle} =  xpath=//div[@class='b-manage-account__what']/h1
${KU_W_feature_manageAccountDesc1} =  xpath=(//div[@class='b-manage-account__what__des'])[1]
${KU_W_feature_manageAccountDesc2} =  xpath=(//div[@class='b-manage-account__what__des'])[2]

# Feature-TaxHarvesting Page
${KU_W_feature_taxHarvestingLink} =  xpath=//a[contains(text(),'Tax Harvesting')]
${KU_W_feature_th_screenTitle} =  xpath=//div[@class='paras-about-tax-harvesting']/h3
${KU_W_feature_th_screenContent} =  xpath=//p[@class='minimise-impact-text']
${KU_W_feature_th_coinImage1} =  xpath=(//img[@class='btn-coin-icon'])[1]
${KU_W_feature_whatIsTHTitle} =  xpath=//div[@class='what-is-tax-harvesting-ans']/h4
${KU_W_feature_th_definition} =   xpath=//p[@class='what-is-tax-harvesting-para']
${KU_W_feature_th_learnMoreLink} =  xpath=//a[@class='link learn-more-tax-harvesting']
${KU_W_feature_th_assumptions} =  xpath=//h3[@class='tax-harvesting-assumption']
${KU_W_feature_th_satusIconimage} =  xpath=//img[@class='normal-status-icon']
${KU_W_feature_withoutTHTitle} =  xpath=(//div[@class='text-container'])[1]
${KU_W_feature_withTHTitle} =  xpath=(//div[@class='text-container'])[2]
${KU_W_feature_th_assumptions} =  xpath=//h3[@class='tax-harvesting-assumption']
${KU_W_feature_tHTableRow1} =  xpath=(//div[@class='table-intermediate-container']/div)[1]
${KU_W_feature_tHTableRow2} =  xpath=(//div[@class='table-intermediate-container']/div)[2]
${KU_W_feature_tHTableRow3} =  xpath=(//div[@class='table-intermediate-container']/div)[3]
${KU_W_feature_tHTableSumupRow} =  xpath=//div[@class='tax-harvesting-table-sumup-container']/div
${KU_W_feature_th_workCardHeading1} =  xpath=(//p[@class='how-tax-harvesting-works-card-heading'])[1]
${KU_W_feature_th_workCardHeading2} =  xpath=(//p[@class='how-tax-harvesting-works-card-heading'])[2]
${KU_W_feature_th_workCardHeading3} =  xpath=(//p[@class='how-tax-harvesting-works-card-heading'])[3]
${KU_W_feature_th_workCardDesc1} =  xpath=(//p[@class='how-tax-harvesting-works-card-text'])[1]
${KU_W_feature_th_workCardDesc2} =  xpath=(//p[@class='how-tax-harvesting-works-card-text'])[2]
${KU_W_feature_th_workCardDesc3} =  xpath=(//p[@class='how-tax-harvesting-works-card-text'])[3]
${KU_W_feature_th_subscribe2Btn} =  xpath=(//button[@class='button-primary'])[2]
${KU_W_feature_th_coinImage2} =  xpath=(//img[@class='btn-coin-icon'])[2]
${KU_W_feature_th_pricingTite} =  xpath=//h1[@class='pricing-heading']
${KU_W_feature_th_pricingcoinIcon} =  xpath=//img[@class='coin-icon']
${KU_W_feature_th_pricingcoinAmt} =  xpath=//div[@class='coin-count-container']/h2
${KU_W_feature_th_pricingPerYear} =  xpath=//p[@class='per-year']
${KU_W_feature_th_pricingcheckIcon1} =  xpath=(//img[@class='check-icon'])[1]
${KU_W_feature_th_pricingcheckIcon2} =  xpath=(//img[@class='check-icon'])[2]
${KU_W_feature_th_pricingcheckIcon3} =  xpath=(//img[@class='check-icon'])[3]
${KU_W_feature_th_pricingcheckDesc1} =  xpath=(//p[@class='check-label'])[1]
${KU_W_feature_th_pricingcheckDesc2} =  xpath=(//p[@class='check-label'])[2]
${KU_W_feature_th_pricingcheckDesc3} =  xpath=(//p[@class='check-label'])[3]
${KU_W_feature_th_startHarvestTitle} =  xpath=//h2[@class='start-harvesting-today-heading']
${KU_W_feature_th_coinImage3} =  xpath=(//img[@class='btn-coin-icon'])[3]
${KU_W_feature_th_subscribe3Btn} =  xpath=(//button[@class='button-primary'])[3]

# Feature-SaveTaxes Page
${KU_W_feature_saveTaxesLink} =  xpath=(//a[contains(text(),'Save Taxes')])[1]
${KU_W_feature_st_screenTitle} =  xpath=//div[@class='b-tax-saver-info__top-funds__heading']
${KU_W_feature_st_screenContent} =  xpath=//div[@class='b-tax-saver-info__top-funds__exp']
${KU_W_feature_saveTaxesHeading} =  xpath=(//div[@class='b-tax-saver-info__save__heading'])[1]
${KU_W_feature_saveCommissionHeading} =  xpath=(//div[@class='b-tax-saver-info__save__heading'])[2]
${KU_W_feature_saveFeesHeading} =  xpath=(//div[@class='b-tax-saver-info__save__heading'])[3]
${KU_W_feature_saveTaxesDesc} =  xpath=(//div[@class='b-tax-saver-info__save__des'])[1]
${KU_W_feature_saveCommissionDesc} =  xpath=(//div[@class='b-tax-saver-info__save__des'])[2]
${KU_W_feature_saveFeesDesc} =  xpath=(//div[@class='b-tax-saver-info__save__des'])[3]
${KU_W_feature_st_watchlistBtn} =  xpath=(//div[@class='b-fund-list__watchlist']/img)[1]
${KU_W_feature_st_fundingTitle} =  xpath=//div[@class='b-tax-saver-details__working__heading']
${KU_W_feature_st_fundingDesc} =  xpath=//div[@class='b-tax-saver-details__working__text']
${KU_W_feature_st_learnHowLink} =  xpath=//a[@class='b-tax-saver-details__working__learn-how']
${KU_W_feature_st_investmentTitle} =  xpath=//th[contains(text(),'Investment')]
${KU_W_feature_st_lockInTitle} =  xpath=//th[contains(text(),'Lock In')]
${KU_W_feature_st_historicalReturnsTitle} =  xpath=//th[contains(text(),'Historical Returns')]
${KU_W_feature_st_tableRow1} =  xpath=//tr[@class='b-tax-saver-row']
${KU_W_feature_st_tableRow2} =  xpath= //tbody/tr[2]
${KU_W_feature_st_tableRow3} =  xpath= //tbody/tr[3]
${KU_W_feature_st_tableRow4} =  xpath= //tbody/tr[4]
${KU_W_feature_st_tableRow5} =  xpath= //tbody/tr[5]

# Features-Consolidate Page
${KU_W_feature_consolidateLink} =  xpath=//a[contains(text(),'Consolidate')]
${KU_W_feature_cd_pageHeader} =  xpath=//header[@class='page-heading']/h1
${KU_W_feature_cd_pageSubHeader} =  xpath=//header[@class='page-heading']/p
${KU_W_feature_setAGoalPageTitle} =  xpath=(//div[contains(@class,'why-invest-text')]/h4)[1]
${KU_W_feature_setAGoalPageSubTitle} =  xpath=(//div[contains(@class,'why-invest-text')]/h3)[1]
${KU_W_feature_setAGoalPageDesc} =  xpath=//div[@class='set-a-goal-text']/p
${KU_W_feature_goalBasedInvestingLink} =  xpath=//a[contains(text(),'More about goal-based investing')]
${KU_W_feature_setAGoalBtn} =  xpath=(//button[@class='btn in-btn'])[1]
${KU_W_feature_entryHeaderTitle} =  xpath=//h1[@class='entry-title post-title']

 
 












      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
                             
