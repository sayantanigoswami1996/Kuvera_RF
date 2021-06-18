*** Variables *** 
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_profile_profileTitle} =  xpath=//div[@class='title'][normalize-space()='Profile']
${KU_W_profile_profileTab} =  xpath=(//div[normalize-space()='Profile'])[1]
${KU_W_profile_profileLink} =  xpath=//span[text()='Profile']
${KU_W_profile_subTitle} =  xpath=//div[contains(text(),'Information as per KYC')]
${KU_W_profile_accHolderName} =  xpath=//h1[normalize-space()='Bhavani Sruti Somaraju Venkata Naga']
${KU_W_profile_holderNameLabel} =  xpath=//div[normalize-space()="Primary Holder's Full Name"]
${KU_W_profile_PANLastDigit} =  xpath=//div[contains(text(),'******070J')]
${KU_W_profile_residentialLabel} =  xpath=//div[normalize-space()='RESIDENTIAL STATUS']
${KU_W_profile_indianStatus} =  xpath=//div[contains(text(),'Indian')]
${KU_W_profile_PANLabel} =  xpath=//div[normalize-space()='PAN']