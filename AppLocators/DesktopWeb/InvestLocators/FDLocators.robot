*** Variables *** 
# Application Expected Values 'e_<variableName>'
# FD 
${e_FD_allFDTab} =  All FDs
${e_FD_defaultTenurePeriod} =  3 years
${e_FD_increasedTenurePeriod} =  3 years 5 months
${e_FD_payout1} =  Monthly 
${e_FD_payout2} =  Quarterly  
${e_FD_payout3} =  Half yearly
${e_FD_payout4} =  Yearly
${e_FD_nameOnPAN} =  Shivam Singh
${e_FD_nomineeDOB} =  02
${e_FD_nomineeMOB} =  09
${e_FD_nomineeYOB} =  2005
${e_FD_nomineeMajorYOB} =  1998
${e_FD_nomineeName} =  Son Tester
${e_FD_minorNomineeMsg} =  Since your nominee is a minor, please enter his/her guardian’s details. The guardian should not be the same as the primary applicant - that’s you!
${e_FD_IFSC} =  CNRB0008693
${e_FD_accNum} =  1488101055962
${e_FD_PAN} =  EYWPS8144F
${e_FD_mobileNum} =  7204801946
${e_FD_dateField} =  20
${e_FD_monthField} =  12
${e_FD_yearField} =  1994
${e_FD_KYCBankCertifyText} =  I certify that SHIVAM SINGH is an account holder of this bank account.
${e_FD_nomineeName} =  Son Tester
${e_FD_tellUsAbout} =  Tell us about yourself
${e_FD_invalidPANMsg} =  GLXPS3071R is not CKYC verified.\nCKYC is needed to create an FD.\n\nCKYC verification\ncoming soon on Kuvera!
${e_FD_invalidDOBMsg} =  Bajaj Finance could not validate your PAN. Please try again later
${e_FD_disclaimerDesc1} =  1) I have gone through the financials and other statements/ particulars / representations furnished/ made by the company and after careful consideration, I am making the deposit with the company at my own risk and volition. Funds are transferred to Bajaj Finance Ltd.'s bank account through payment gateway by an intermediary. Interest date will be at T+1 working days based on fund realisation from payment gateway.
${e_FD_disclaimerDesc2} =  2)  I confirm the above information and my profile details are correct.\nI consent to Kuvera to share my personal & KYC details with Bajaj\nFinance Ltd and I read & agree to Terms and Conditions of 
${e_FD_T&CText} =  I confirm the above information and all details\nprovided by me are correct. I consent Kuvera to\nshare my KYC and profile data with Bajaj Finance\nLtd. I have read and agree to the T&C of
${e_FD_FDName} =  Bajaj Finance Ltd.
${e_FD_FDAmtInvested} =  ₹25,000

# Application Locator 'KU_<locatorName>'
# FD Landing Navigation Page
${KU_W_FD_allFDTab} =  xpath=//div[contains(text(),'All FDs')]
${KU_W_FD_FDIcon} =  xpath=//span[contains(text(),'FD')]
${KU_W_FD_startFDBtn} =  xpath=(//button[contains(text(),'Start this FD')])[1]
${KU_W_FD_FDDetailsTitle} =  xpath=//span[contains(.,'Enter FD details')]
${KU_W_FD_investmentAmtTitle} =  xpath=//div[normalize-space()='Enter investment amount']
${KU_W_FD_defaultInvestmentVal} =  xpath=//div[@class='form-group-rupee has-feedback']
${KU_W_FD_minInvestmentVal} =  xpath=//span[contains(text(),'Min: ₹25,000 |')]
${KU_W_FD_maxInvestmentVal} =  xpath=//span[contains(text(),'Max: ₹5.0 Cr')]
${KU_W_FD_tenureLabel} =  xpath=(//div[contains(text(),'Tenure')])[3]
${KU_W_FD_incrementBtn} =  xpath=//div[contains(@class,'b-fd-counter-button')]
${KU_W_FD_interestPayoutLabel} =  xpath=//div[normalize-space()='Interest payout']
${KU_W_FD_maturityVal} =  xpath=(//div[contains(text(),'Maturity')])[2]
${KU_W_FD_incrementOption} =  xpath=//div[normalize-space()='+']
${KU_W_FD_incrementVal} =  xpath=//div[contains(text(),'10,000')]
${KU_W_FD_decrementOption} =  xpath=//div[normalize-space()='-']
${KU_W_FD_disabledDecrementOption} =  xpath=//div[contains(@class,'b-fd-counter__text k-mr8 k-cursor--pointer b-fd-counter-disable')]
${KU_W_FD_tenurePeriod} =  xpath=(//div[@class='k-flex b-enter-fd-tenure']//div)[2]
${KU_W_FD_nonCumulativeBtn} =  xpath=//div[contains(text(),'Non Cumulative')]
${KU_W_FD_cumulativeBtn} =  xpath=(//div[contains(text(),'Cumulative')])[1]
${KU_W_FD_interestRateLabel} =  xpath=//div[normalize-space()='Interest rate']
${KU_W_FD_maturityAmtLabel} =  xpath=//div[normalize-space()='On maturity, you will receive']
${KU_W_FD_interestRateCummulative} =  xpath=//div[@class='k-description__2b3d51 k-fs16 k-mt4']
${KU_W_FD_beforeTaxesLabel} =  xpath=//div[contains(text(),'*Before taxes')]
${KU_W_FD_seniorCitizenLabel} =  xpath=//div[contains(text(),'I am a senior citizen.')]
${KU_W_FD_maturityLabel} =  xpath=//div[@class='b-fd-invest-card']//div//div[@class='k-flex']
${KU_W_FD_bajajFinance} =  xpath=(//span[contains(.,'Bajaj Finance Ltd.')])[1]
${KU_W_FD_depositOptions} =  xpath=//div[contains(text(),'Deposit options')]
${KU_W_FD_slider} =  xpath=//div[@class='b-app-standard-slider__bar b-app-standard-slider__right-bar b-invest-landing__slider-bar']
${KU_W_FD_payoutContainer} =  xpath=//div[@class='b-standard-select-label__selected-container']
${KU_W_FD_payout1} =  xpath=(//div[@class='b-standard-select-option'])[1]
${KU_W_FD_payout2} =  xpath=(//div[@class='b-standard-select-option'])[2]
${KU_W_FD_payout3} =  xpath=(//div[@class='b-standard-select-option'])[3]
${KU_W_FD_payout4} =  xpath=(//div[@class='b-standard-select-option'])[4]
${KU_W_FD_checkBox} =  xpath=//div[@class='b-standard-checkbox__checkmark k-mr16 k-cursor--pointer k-flex']
${KU_W_FD_seniorCitizenIntRate} =  xpath=(//div[@class='b-fd-invest-card']//div)[3]
${KU_W_FD_monthlyAmtLabel} =  xpath=//div[normalize-space()='Monthly, you will receive']
${KU_W_FD_confirmFDDeatilsBtn} =  xpath=//button[normalize-space()='Confirm FD details']
# Timer Details
${KU_W_FD_checkingEligibilityLabel} =  xpath=//div[.='Checking eligibility.']
${KU_W_FD_PANVerifiedKYCLabel} =  xpath=//div[contains(text(),'Bajaj requires that your PAN be CKYC verified.')]
# PAN Details
${KU_W_FD_verifyDetailsTitle} =  xpath=//span[text()='Verify your details']
${KU_W_FD_PANLabel} =  xpath=//label[normalize-space()='PAN']
${KU_W_FD_PANNum} =  xpath=//input[@name='pan']
${KU_W_FD_unslectedRadioBtn1} =  xpath=(//div[@class='b-k-ui-radio-button__radio-icon-container--unselected'])[1]
${KU_W_FD_unslectedRadioBtn2} =  xpath=(//div[@class='b-k-ui-radio-button__radio-icon-container--unselected'])[2]
${KU_W_FD_unslectedRadioBtn3} =  xpath=(//div[@class='b-k-ui-radio-button__radio-icon-container--unselected'])[3]
${KU_W_FD_fullNameLabel} =  xpath=//label[normalize-space()='Full name (as on PAN)']
${KU_W_FD_msLabel} =  xpath=//div[contains(text(),'Ms')]
${KU_W_FD_mrsLabel} =  xpath=//div[contains(text(),'Mrs')]
${KU_W_FD_mrLabel} =  xpath=//div[@class='b-k-ui-radio-button__radios__label k-ml8'][normalize-space()='Mr']
${KU_W_FD_nameOnPAN} =  xpath=//input[@placeholder='Enter name']
${KU_W_FD_emailLabel} =  xpath=//label[normalize-space()='Email']
${KU_W_FD_emailID} =  xpath=//input[@placeholder='Enter your email address']
${KU_W_FD_mobileNumLabel} =  xpath=//label[normalize-space()='Mobile number']
${KU_W_FD_mobileNum} =  xpath=//input[@placeholder='Enter your mobile number']
${KU_W_FD_genderLabel} =  xpath=//div[contains(text(),'Gender')]
${KU_W_FD_femaleRadioBtn} =  xpath=(//div[@class='b-k-ui-radio-button__radio-icon-container--unselected'])[4]
${KU_W_FD_maleRadioBtn} =  xpath=(//div[@class='b-k-ui-radio-button__radio-icon-container--unselected'])[5]
${KU_W_FD_othersRadioBtn} =  xpath=(//div[@class='b-k-ui-radio-button__radio-icon-container--unselected'])[6]
${KU_W_FD_femaleLabel} =  xpath=//div[contains(text(),'Female')]
${KU_W_FD_maleLabel} =  xpath=//div[contains(text(),'Male')]
${KU_W_FD_othersLabel} =  xpath=//div[contains(text(),'Others')]
${KU_W_FD_associatedWithBajajLabel} =  xpath=//div[contains(text(),'Are you associated with Bajaj Finance Ltd.?')]
${KU_W_FD_disabledBtn} =  xpath=//button[@class='k-base-button--primary k-base-button--disabled']
${KU_W_FD_bajajDefaultVal} =  xpath=//div[contains(text(),'No')]
${KU_W_FD_verifyDetailsBtn} =  xpath=//button[normalize-space()='Verify details']
${KU_W_FD_bajajPopupTitle} =  xpath=//span[contains(.,'Are you associated with Bajaj Finance Ltd.?')]
${KU_W_FD_defaultCheckedBox} =  xpath=//div[contains(@class,'b-standard-checkbox__checkmark k-mr16 k-cursor--pointer k-flex b-standard-checkbox__checkmark--checked')]
${KU_W_FD_noTitle} =  xpath=//div[@id='no']
${KU_W_FD_RDLabel} =  xpath=//div[@id='relative of director']
${KU_W_FD_BFLLabel} =  xpath=//div[@id='director & promoter of bfl']
${KU_W_FD_shareholderLabel} =  xpath=//div[@id='shareholder']
${KU_W_FD_employeeLabel} =  xpath=//div[@id='employee']
${KU_W_FD_closeBajajPopup} =  xpath=//img[@class='b-standard-multi-select-mobile__content__close-action-icon k-cursor--pointer']
# Address
${KU_W_FD_addDetsLabel} =  xpath=//span[contains(.,'Address details')]
${KU_W_FD_addDetsDesc} =  xpath=//div[contains(text(),'Please provide your address as per your CKYC details.')]
${KU_W_FD_houseNumField} =  xpath=//input[@placeholder='House no., Apartment, Building name']
${KU_W_FD_areaField} =  xpath=//input[@placeholder='Street name, Area, Locality']
${KU_W_FD_cityField} =  xpath=//input[@name='city']
${KU_W_FD_stateField} =  xpath=//input[@name='state']
${KU_W_FD_pincodeField} =  xpath=//input[@name='pincode']
${KU_W_FD_addAddressBtn} =  xpath=//button[normalize-space()='Add address']
${KU_W_FD_addNomineeLabel} =  xpath=//span[contains(text(),'Add nominee')]
${KU_W_FD_fillNomineeDets} =  xpath=//div[contains(text(),'Please fill out nominee details for your FD')]
${KU_W_FD_nomineeNameField} =  xpath=//input[@placeholder='Name of the nominee']
${KU_W_FD_son} =  xpath=(//div[contains(text(),'Son')])[1]
${KU_W_FD_relationshipDropdown1} =  xpath=(//div[@class='b-standard-select-label__selected-container']//img)[1]
${KU_W_FD_minorNomineeMsg} =  xpath=(//div[@class='b-fd-add-nominee-details__gaurdian-details']//div)[1]
${KU_W_FD_guardianNomineeName} =  xpath=//input[@placeholder='Name of guardian']
${KU_W_FD_relationshipDropdown2} =  xpath=(//div[@class='b-standard-select-label__selected-container']//img)[2]
${KU_W_FD_guradianRelationship} =  xpath=//div[@class='b-standard-select-option__option k-cursor--pointer'][normalize-space()='Mother']
${KU_W_FD_addNoimineeBtn} =  xpath=//button[normalize-space()='Add nominee']
# Select Bank
${KU_W_FD_selectBank} =  xpath=//span[contains(text(),'Select a bank')]
${KU_W_FD_selectBankDesc} =  xpath=//div[.=' FD payout will be credited to the same bank accountCurrently added bank accounts are not supported ']
${KU_W_FD_supportedBankLink} =  xpath=//div[contains(text(),'View banks supported by Bajaj.')]
${KU_W_FD_supportedBankTitle} =  xpath=//span[normalize-space()='Banks supported by Bajaj']
${KU_W_FD_supportedBankList} =  xpath=//div[@class='b-fd-suppured-bank']//div
${KU_W_FD_supportedBankClose} =  xpath=(//img[@class='b-standard-nav-nav__close-img k-asc k-cursor--pointer'])[2]
${KU_W_FD_bankAccValidateMsg} =  xpath=//div[contains(text(),'Your bank account will be validated with a penny drop.')]
${KU_W_FD_addBankAcc} =  xpath=//div[contains(text(),'+ Add bank account')]
${KU_W_FD_disabledSelectBankBtn} =  xpath=//button[@class='b-select-bank_btn k-base-button--primary k-base-button--disabled']
# Add Bank Account
${KU_W_FD_addBankTitle} =  xpath=//span[normalize-space()='Add bank account']
${KU_W_FD_addBankDesc} =  xpath=//div[contains(text(),'Investing requires adding your banking account.                 Rest assured, we use bank-grade security to make                 sure your information stays safe.')]
${KU_W_FD_IFSCField} =  xpath=//input[@placeholder='Enter IFSC code']
${KU_W_FD_accNumField} =  xpath=//input[@placeholder='Enter account number']
${KU_W_FD_confirmAccNumField} =  xpath=//input[@placeholder='Confirm account number']
${KU_W_FD_savingsField} =  xpath=//div[contains(text(),'Savings')]
${KU_W_FD_currentField} =  xpath=//div[text()='Current ']
${KU_W_FD_consentMsg} =  xpath=//div[contains(text(),'I have verified the account number entered                            above. Changes to bank account details later                            require paperwork and will impact redemption                            orders.')]
${KU_W_FD_bankBranchDets} =  xpath=//div[contains(text(),'CANARA BANK - TOWN HALL WELFARE CENTRE, BANGALORE - BANGALORE')]
${KU_W_FD_selectedBankName} =  xpath=//div[contains(text(),'HDFC BANK')]
${KU_W_FD_selectedBankAccDets} =  xpath=//div[contains(text(),'Account no. ***********962')]
${KU_W_FD_selectBankBtn} =  xpath=//button[normalize-space()='Select bank']
# Confirm FD Details
${KU_W_FD_confirmFDDetsTitle} =  xpath=//span[contains(text(),'Confirm FD details')]
${KU_W_FD_FDName} =  xpath=//div[contains(text(),'Bajaj finance ltd.')]
${KU_W_FD_nameLabel} =  xpath=//div[text()='Name ']
${KU_W_FD_holderName} =  xpath=//div[contains(text(),'Shivam Singh')]
${KU_W_FD_amtLabel} =  xpath=//div[normalize-space()='Amount']
${KU_W_FD_FDAmt} =  xpath=//div[text()='₹25,000 ']
${KU_W_FD_FDRateLabel} =  xpath=//div[normalize-space()='FD rate']
${KU_W_FD_tenureLabel} =  xpath=//div[text()='Tenure ']
${KU_W_FD_tenure} =  xpath=//div[normalize-space()='41 months']
${KU_W_FD_payoutLabel} =  xpath=//div[normalize-space()='Payout']
${KU_W_FD_payout} =  xpath=//div[normalize-space()='Monthly']
${KU_W_FD_payByLabel} =  xpath=//div[normalize-space()='Pay by']
${KU_W_FD_payByBank} =  xpath=//div[normalize-space()='CANARA BANK Bank']
${KU_W_FD_payByAcc} =  xpath=//div[contains(text(),'Account no. ********5962')]
${KU_W_FD_completeDisclaimer} =  xpath=//div[contains(text(),'See complete disclaimer >')]
${KU_W_FD_disclaimerTitle} =  xpath=//div[contains(text(),'Bajaj Finance Limited disclaimer')]
${KU_W_FD_disclaimerDesc1} =  xpath=//div[@class='b-invest-fd-disclamer']//div//div[1]
${KU_W_FD_disclaimerDesc2} =  xpath=//div[@class='b-invest-fd-disclamer']//div[2]
${KU_W_FD_T&CText} =  xpath=//div[@class='b-standard-checkbox__content__option--label']
${KU_W_FD_T&CCheckBox} =  xpath=//img[@class='b-check-box__img k-asc']
# FD Order Placed
${KU_W_FD_FDOrderPlaced} =  xpath=//div[contains(text(),'FD order placed')]
${KU_W_FD_FDOrderPlacedDesc} =  xpath=//div[contains(text(),'It will take 2-3 business days for your FD to get approved.')]
${KU_W_FD_FDOrdered} =  xpath=//div[contains(text(),'Bajaj Finance Limited')]
${KU_W_FD_orderPlacedLabel} =  xpath=//div[normalize-space()='Order placed']
${KU_W_FD_amtInvestedLabel} =  xpath=//div[normalize-space()='Amount invested']
${KU_W_FD_orderPlacedDate} =  xpath=(//div[@class='k-ui-information-card']//div)[2]
${KU_W_FD_orderPlacedIntRate} =  xpath=(//div[@class='k-ui-information-card']//div)[8]
${KU_W_FD_orderOnInProcess} =  xpath=//div[@class='b-order-row order-status__row']
${KU_W_FD_FDOrderedName} =  xpath=//div[@class='b-order-row__title']//a
${KU_W_FD_FDAmtInvested} =  xpath=(//div[@class='b-order-row__value'])[4]
# NON-KYC PAN user
${KU_W_FD_enterPAN} =  xpath=//input[@placeholder='Enter your PAN']
${KU_W_FD_tellUsAboutYourself} =  xpath=//div[@class='b-standard-nav-nav__container k-bgfff k-flex']
${KU_W_FD_tellUsAboutYourselfDesc} =  xpath=//div[contains(text(),'A bit about your current financial situation.')]
# Invalid PAN 
${KU_W_FD_invalidPAN_DOBMsg} =  xpath=//div[contains(@class,'k-description__2b3d51 k-fs14 k-mt16 k-tac')]

