*** Variables *** 
# Application Expected Values 'e_<variableName>'

# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_postlogin_kuverLogo} =  xpath=//a[@class='navbar-brand']
${KU_W_postlogin_OkBtn} =  xpath=//button[contains(text(),'OK')]
${KU_W_postlogin_proceedBtn} =  xpath=//button[contains(text(),'Proceed')]
${KU_W_postlogin_okayBtn}=  xpath=//button[contains(text(),'Okay')]
${KU_W_postlogin_doneBtn} =  xpath=//button[contains(text(),'Done')]
${KU_W_postlogin_gotItPopupBtn} =  xpath=//button[contains(text(),'Got it')]
${KU_W_postlogin_checkBox} =  xpath=//img[@class='check-icon']
${KU_W_postlogin_continueBtn} =  xpath=//button[normalize-space()='CONTINUE']