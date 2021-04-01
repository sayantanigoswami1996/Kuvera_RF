*** Variables *** 
# Application Expected Values 'e_<variableName>'
# Gilt Funds
${e_invest_giltFund_screenText} =  Gilt Fund
${e_invest_giltFund_filteredFundText} =  Debt						

# Application Locator 'KU_<locatorName>'
# Gilt Funds Landing Navigation Page
${KU_invest_giltFund_toastMssg} =  xpath=//*[@id='toast-container']/div/div[1][@class='toast-message']