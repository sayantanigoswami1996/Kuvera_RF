*** Variables *** 
# Application Expected Values 'e_<variableName>'
${e_RTAHeader} =  Registrar and Transfer Agent (RTA)
${e_websiteHeader} =  Website
${e_addressHeader} =  Address
${e_phoneNumHeader} =  Phone number
${e_emailHeader} =  Contact email
${e_investorLoginHeader} =  Investor Login

# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_fh_fundName} =   xpath=//div[@class='fund-page-heading row']//div[2]
${KU_W_fh_fundLogo} =  xpath=//div[@class='fund-page-heading row']/div[1]/img
${KU_W_fh_fundIntroDesc} =  xpath=(//div[contains(@class,'house-info')]//p)[1]
${KU_W_fh_RTAHeader} =  xpath=(//div[contains(@class,'house-info')]//h2)[1]
${KU_W_fh_RTADesc} =  xpath=(//div[contains(@class,'house-info')]//p)[2]
${KU_W_fh_websiteHeader} =  xpath=(//div[contains(@class,'house-info')]//h2)[2]
${KU_W_fh_websiteURL} =  xpath=(//div[contains(@class,'house-info')]//p)[3]
${KU_W_fh_websiteLink} =  xpath=(//div[contains(@class,'house-info')]//p//a)[1]
${KU_W_fh_addressHeader} =  xpath=(//div[contains(@class,'house-info')]//h2)[3]
${KU_W_fh_addressDesc} =  xpath=(//div[contains(@class,'house-info')]//p)[4]
${KU_W_fh_phoneNumHeader} =  xpath=(//div[contains(@class,'house-info')]//h2)[4]
${KU_W_fh_phoneNumber} =  xpath=(//div[contains(@class,'house-info')]//p)[5]
${KU_W_fh_emailHeader} =  xpath=(//div[contains(@class,'house-info')]//h2)[5]
${KU_W_fh_companyEmail} =  xpath=(//div[contains(@class,'house-info')]//p)[6]
${KU_W_fh_investorLoginHeader} =  xpath=(//div[contains(@class,'house-info')]//h2)[6]
${KU_W_fh_investorLoginURL} =  xpath=(//div[contains(@class,'house-info')]//p)[7]
${KU_W_fh_investorLoginLink} =  xpath=(//div[contains(@class,'house-info')]//p//a)[3]
<<<<<<< HEAD
${KU_W_fh_fundManagedHeader} =  xpath=(//div[contains(@class,'house-info')]//h2)[7]
=======
${KU_W_fh_fundManagedHeader} =  xpath=(//div[contains(@class,'house-info')]//h2)[7]
>>>>>>> db7ba5b50658fdbf6fc5babd5839bef4f7725d1d
