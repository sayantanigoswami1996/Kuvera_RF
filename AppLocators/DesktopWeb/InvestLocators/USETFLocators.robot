*** Variables *** 
# Application Expected Values 'e_<variableName>'
#  US ETF Stocks
${e_invest_USETF_screenText} =  Other | Exchange-traded fund

# Application Locator 'KU_<locatorName>'
# Top Gainer Stocks Landing Navigation Page
${KU_W_UTF_screenTitle} =  xpath=(//div[@class='b-stock-item__col1__meta-info'])[1]
