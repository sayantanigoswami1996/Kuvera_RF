*** Variables *** 
# Application Expected Values 'e_<variableName>'
${e_managefolio_noFoliosInAcc} =  You do not have any folios linked to this account.
${e_managefolio_accType} =  SAVINGS | NON-DEMAT
${e_managefolio_completeKYCMsg} =  You need to register your KYC and bank details to manage your folios. 
                
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_managefolio_selectKuveraAcc} =  xpath=//label[normalize-space()='Select Kuvera Account']
${KU_W_managefolio_applicantName} =  xpath=//div[@class='dropdown-toggle clearfix b-dropdown-text-overflow']//span
${KU_W_managefolio_noFoliosInAcc} =  xpath=//div[@class='center-screen']
${KU_W_managefolio_accType} =  xpath=//div[@class='upcase']
${KU_W_managefolio_registrationBtn} =  xpath=//a[contains(text(),'COMPLETE REGISTRATION')]