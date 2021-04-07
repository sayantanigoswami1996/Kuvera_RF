*** Variables *** 
# Application Expected Values 'e_<variableName>'
${e_KYC_formTitle} =  Tell us about yourself      
${e_KYC_formSubTitle} =  So we can setup your account right. This will only take a few minutes. 
${e_KYC_PANLabel} =  PAN NUMBER
${e_KYC_PANNumber} =  GLXPS3070J
${e_KYC_DOBLabel} =  DATE OF BIRTH
${e_KYC_dateField} =  13
${e_KYC_monthField} =  08
${e_KYC_yearField} =  1993
${e_KYC_mobileNumLabel} =  MOBILE
${e_KYC_mobileNumField} =  9110880017 
${e_KYC_address1Field} =  Sri Lakshminarayana Mansion
${e_KYC_address2Field} =  Tata Silk Farm,Jayanagar
${e_KYC_countryField} =  India
${e_KYC_addSignatureSubTitle1} =  CAMS requires your signature to setup your investment account with CAMS serviced fund houses.
${e_KYC_addSignatureSubTitle2} =  Use a mouse or your finger to draw a reasonable likeness of your signature.
${e_KYC_signtaure} =  Moolya
${e_KYC_portfolioNameField} =  Portfolio Primary Tester
${e_KYC_linkBankAccDesc} =  Investing requires linking with your banking account. We use bank-grade security to make sure your information stays safe.
${e_KYC_IFSC} =  IDIB000C001
${e_KYC_IFSCLabel} =  IFSC CODE
${e_KYC_bankAccLabel} =  BANK ACCOUNT NUMBER
${e_KYC_bankAccField} =  12345678901234
${e_KYC_reBankAccLabel} =  CONFIRM BANK ACCOUNT
${e_KYC_bankConfirmedText} =  I have verified the account number entered above. Changes to bank details later will require paperwork and will impact redemption orders.
${e_KYC_bankCertifyText} =  I certify that BHAVANI SRUTI SOMARAJU VENKATA NAGA is an account holder of this bank account.
${e_KYC_addANomineeLabel} =  ADD A NOMINEE
${e_KYC_nomineeName} =  Mother Tester
${e_KYC_nomineeDOB} =  08
${e_KYC_nomineeMOB} =  09
${e_KYC_nomineeYOB} =  1965
${e_KYC_accountSetupTitle} =  Account setup complete
${e_KYC_accountSetupSubTitle} =  You have Set Up an Individual Account as Resident applicant(s). Your account is now ready for mutual fund investments.
${e_KYC_invalidPANNumber} =  GLXPS3071R
${e_KYC_KYCNotVerified} =  You are not KYC verified
${e_KYC_KYCNotVerifiedDesc} =  You need to be KYC compliant for investing in mutual funds. We will help you get this done. Download our mobile app to complete KYC now.

# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_KYC_startBtn} =  xpath=//button[contains(@class,'button-primary app-standard-notification__btn-2')]
${KU_W_KYC_formTitle} =  xpath=(//div[@class='title'])[1]
${KU_W_KYC_formSubTitle} =  xpath=//div[@class='sub-title left-aligned']
${KU_W_KYC_PANLabel} =  xpath=(//label[@class='upcase in-field-label'])[1]
${KU_W_KYC_PANTextField} =  xpath=//input[@id='pan']
${KU_W_KYC_DOBLabel} =  xpath=(//label[@class='upcase in-field-label'])[2]
${KU_W_KYC_dateField} =  xpath=//input[@placeholder='DD']
${KU_W_KYC_monthField} =  xpath=//input[@placeholder='MM']
${KU_W_KYC_yearField} =  xpath=//input[@placeholder='YYYY']
${KU_W_KYC_mobileNumLabel} =  xpath=(//label[@class='upcase in-field-label'])[3]
${KU_W_KYC_mobileNumField} =  xpath=//input[@id='mobile_phone']
${KU_W_KYC_nextBtn} =  xpath=//button[@type='button']
${KU_W_KYC_residenceStatus} =  xpath=//input[@placeholder='Select Residence Status']
${KU_W_KYC_residentIndividual} =  xpath=//a[contains(text(),'Resident Individual')]
${KU_W_KYC_address1Field} =  xpath=//input[@id='address-line-1']
${KU_W_KYC_address2Field} =  xpath=//input[@id='address-line-2']
${KU_W_KYC_cityField} =  xpath=//input[@id='city']
${KU_W_KYC_countryField} =  xpath=//div[@id='country_list']
${KU_W_KYC_countrySearchBar} =  xpath=(//input[@aria-label='Search for option'])[2]
${KU_W_KYC_countryDropdownList} =  xpath=(//ul[@class='dropdown-menu']//li)[2]
${KU_W_KYC_stateField} =  xpath=(//input[@aria-label='Search for option'])[3]
${KU_W_KYC_gender} =  xpath=//div[@emitvalue='F']
${KU_W_KYC_maritalStatus} =  xpath=(//div[@emitvalue='N'])[1]
${KU_W_KYC_taxReturnFiling} =  xpath=(//div[@emitvalue='N'])[2]
${KU_W_KYC_updateBtn} =  xpath=//button[contains(text(),'UPDATE')]
${KU_W_KYC_addSignatureTitle} =  xpath=(//div[@class='sip-name upcase'])[2]
${KU_W_KYC_addSignatureSubTitle1} =  xpath=//p[contains(text(),'CAMS requires your signature to setup your investm')]
${KU_W_KYC_addSignatureSubTitle2} =  xpath=//p[contains(text(),'Use a mouse or your finger to draw a')]
${KU_W_KYC_canvasSpace} =  xpath=//canvas[@id='canvas']
${KU_W_KYC_OKBtn} =  xpath=//button[@class='button-primary signature-canvas__submit-btn']
${KU_W_KYC_popupOkBtn} =  xpath=//button[@class='button-primary confirmed overlay-button-alignment']
${KU_W_KYC_confirmBtn} =  xpath=//button[@class='btn in-btn cta-for-page']
${KU_W_KYC_portfolioEmailField} =  xpath=//input[@id='portfolio_email']
${KU_W_KYC_portfolioNameField} =  xpath=//input[@id='portfolio_name']
${KU_W_KYC_errorFetchingPopup} =  xpath=(//div[@class='overlay-content']//div)[3]
${KU_W_KYC_applicantName} =  xpath=//div[@class='sip-name upcase']
${KU_W_KYC_tellUsAboutYourself} =  xpath=//div[normalize-space()='Tell us About Yourself']
${KU_W_KYC_tellUsAboutYourselfDesc} =  xpath=//div[contains(text(),'It will help us personalize your portfolio recommendation.')]
${KU_W_KYC_linkBankAccTitle} =  xpath=//div[contains(text(),'Link Bank Account')]
${KU_W_KYC_pageSubTitle} =  xpath=//div[@class='sub-title']
${KU_W_KYC_IFSCField} =  xpath=//input[@id='ifsc']
${KU_W_KYC_IFSCLabel} =  xpath=(//label[@class='in-field-label'])[1]
${KU_W_KYC_bankAccField} =  xpath=//input[@id='account_number']
${KU_W_KYC_bankAccLabel} =  xpath=(//label[@class='in-field-label'])[2]
${KU_W_KYC_reBankAccField} =  xpath=//input[@id='re_acc_no']
${KU_W_KYC_reBankAccLabel} =  xpath=(//label[@class='in-field-label'])[3]
${KU_W_KYC_bankConfirmedCheckBox} =  xpath=//label[@for='bank-confirmed']
${KU_W_KYC_bankConfirmedText} =  xpath=//label[@for='bank-confirmed']//span[1]
${KU_W_KYC_bankCertifyCheckBox} =  xpath=//label[@for='bank-certify']
${KU_W_KYC_bankCertifyText} =  xpath=//label[@for='bank-certify']//span[1]
${KU_W_KYC_addNomineeLabel} =  xpath=(//label[@class='in-field-label'])[5]
${KU_W_KYC_addNomineeCheckBox} =  xpath=//label[@for='add_nominee']
${KU_W_KYC_addNomineeText} =  xpath=//label[contains(text(),'I would like to add a nominee for investments made')]
${KU_W_KYC_nomineeName} =  xpath=//input[@name='nominee-name']
${KU_W_KYC_nomineeRelationshipField} =  xpath=//div[@class='standard-select-container b-add-nominee__relation__item']
${KU_W_KYC_nomineeRelationship} =  xpath=//div[@class='label'][normalize-space()='Mother']
${KU_W_KYC_nomineeAddress} =  xpath=//input[@placeholder='Nominee address']
${KU_W_KYC_confirmationTitle} =  xpath=//h1[@class='subscription-header']
${KU_W_KYC_confirmationSubTitle} =  xpath=//div[@class='app-full-screen-message__para']//p
${KU_W_KYC_DONEBtn} =  xpath=//button[normalize-space()='DONE']
${KU_W_KYC_KYCNotCertifiedTitle} =  xpath=//h1[@class='b-app-standard-modal-title']
${KU_W_KYC_KYCNotCertifiedSubTitle} =  xpath=//p[@class='b-app-standard-modal-sub-title']