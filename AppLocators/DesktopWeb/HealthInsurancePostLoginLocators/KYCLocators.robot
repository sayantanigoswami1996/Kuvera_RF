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
${e_KYC_portfolioNameField} =  Portfolio Primary

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