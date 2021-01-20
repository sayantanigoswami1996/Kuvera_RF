*** Variables *** 
# Application Expected Values 'e_<variableName
# Application Locator 'KU_<locatorName>'
${e_HI_missingPANTitle} =  PAN missing
${e_HI_missingPANSubTitle} =  Submit PAN to enable Health Protect.
${e_HI_premiumText} =  Premium
${e_HI_defaultPremiumValue} =  ₹0/Y
${e_HI_pincodeField} =  560004
${e_HI_stateField} =  Karnataka
${e_HI_cityField} =  Bengaluru
# Application Locator 'KU_<locatorName>'   
# Kuvera :: Wealth Management Simplified
${KU_W_HI_kuverLogo} =  xpath=//a[@class='navbar-brand']
${KU_W_HI_missingPANTitle} =  xpath=//div[@class='b-insurance__title b-insurance-confirm-modal__title']
${KU_W_HI_missingPANSubTitle} =  xpath=//div[@class='b-insurance__subtitle b-insurance-confirm-modal__subtitle']
${KU_W_HI_missingPANOkayBtn} =  xpath=//div[@class='b-insurance-confirm-modal__btn--okay']
${KU_W_HI_pageTitle} =  xpath=//div[@class='b-insurance__title']
${KU_W_HI_proceedBtn} =  xpath=//button[contains(text(),'Proceed')]
${KU_W_HI_okayBtn} =  xpath=//button[contains(text(),'Okay')]
${KU_W_HI_doneBtn} =  xpath=//button[contains(text(),'Done')]
${KU_W_HI_gotItPopupBtn} =  xpath=//button[contains(text(),'Got it')]
${KU_W_HI_pincodeField} =  xpath=//input[@id='pincode']
${KU_W_HI_state_cityDropdownList} =  xpath=(//ul[@class='dropdown-menu']//li)[1]
${KU_W_HI_phoneNum_usernameLabel} =  xpath=(//label[@class='b-text-field__label'])[1]
${KU_W_HI_checkBox} =  xpath=//img[@class='check-icon']
${KU_W_HI_dropdownIndicator} =  xpath=//img[@class='indicator-alignment']