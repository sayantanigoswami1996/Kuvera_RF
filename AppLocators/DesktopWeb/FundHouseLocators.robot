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
${KU_W_fundHouse_fundName} =   xpath=//div[@class='fund-page-heading row']//div[2]
${KU_W_fundHouse_fundLogo} =  xpath=//div[@class='fund-page-heading row']/div[1]/img
${KU_W_fundHouse_fundIntroDesc} =  xpath=(//div[contains(@class,'house-info')]//p)[1]
${KU_W_fundHouse_RTAHeader} =  xpath=(//div[contains(@class,'house-info')]//h2)[1]
${KU_W_fundHouse_RTADesc} =  xpath=(//div[contains(@class,'house-info')]//p)[2]
${KU_W_fundHouse_websiteHeader} =  xpath=(//div[contains(@class,'house-info')]//h2)[2]
${KU_W_fundHouse_websiteURL} =  xpath=(//div[contains(@class,'house-info')]//p)[3]
${KU_W_fundHouse_websiteLink} =  xpath=(//div[contains(@class,'house-info')]//p//a)[1]
${KU_W_fundHouse_addressHeader} =  xpath=(//div[contains(@class,'house-info')]//h2)[3]
${KU_W_fundHouse_addressDesc} =  xpath=(//div[contains(@class,'house-info')]//p)[4]
${KU_W_fundHouse_phoneNumHeader} =  xpath=(//div[contains(@class,'house-info')]//h2)[4]
${KU_W_fundHouse_phoneNumber} =  xpath=(//div[contains(@class,'house-info')]//p)[5]
${KU_W_fundHouse_emailHeader} =  xpath=(//div[contains(@class,'house-info')]//h2)[5]
${KU_W_fundHouse_companyEmail} =  xpath=(//div[contains(@class,'house-info')]//p)[6]
${KU_W_fundHouse_investorLoginHeader} =  xpath=(//div[contains(@class,'house-info')]//h2)[6]
${KU_W_fundHouse_investorLoginURL} =  xpath=(//div[contains(@class,'house-info')]//p)[7]
${KU_W_fundHouse_investorLoginLink} =  xpath=(//div[contains(@class,'house-info')]//p//a)[3]
${KU_W_fundHouse_fundManagedHeader} =  xpath=(//div[contains(@class,'house-info')]//h2)[7]
