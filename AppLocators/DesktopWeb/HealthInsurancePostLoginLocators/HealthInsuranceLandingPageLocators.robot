*** Variables *** 
# Application Expected Values 'e_<variableName
# Application Locator 'KU_<locatorName>'
${e_HI_missingPANTitle} =  PAN missing
${e_HI_missingPANSubTitle} =  Submit PAN to enable Health Protect.
# Application Locator 'KU_<locatorName>'   
# Kuvera :: Wealth Management Simplified
${KU_W_HI_kuverLogo} =  xpath=//a[@class='navbar-brand']
${KU_W_HI_missingPANTitle} =  xpath=//div[@class='b-insurance__title b-insurance-confirm-modal__title']
${KU_W_HI_missingPANSubTitle} =  xpath=//div[@class='b-insurance__subtitle b-insurance-confirm-modal__subtitle']
${KU_W_HI_missingPANOkayBtn} =  xpath=//div[@class='b-insurance-confirm-modal__btn--okay']
${KU_W_HI_pageTitle} =  xpath=//div[@class='b-insurance__title']