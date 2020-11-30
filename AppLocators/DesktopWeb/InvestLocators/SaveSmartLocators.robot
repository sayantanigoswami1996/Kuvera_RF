*** Variables *** 
# Application Expected Values 'e_<variableName>'
# Invest
${e_invest_ss_screenText} =  Start SaveSmart today
${e_invest_ss_amount} =  2000
${e_invest_ss_saveBtnText} =  Save now 
${e_invest_ss_headerTitleText} =  The smart way to save!
${e_invest_ss_headerMsgText} =  Liquid fund returns, higher instant withdrawal\n (upto ₹2 lakhs or 90% of holdings within 30 min)
${e_invest_ss_calcTitleText} =  Not your Dad’s savings account   
${e_invest_ss_calcMsgText} =  A smart alternative to savings bank accounts.
${e_invest_ss_calcTitleText} =  Not your Dad’s savings account      
${e_invest_ss_trailingHeaderText} =  Trailing annualised returns of liquid funds as a category as on 5th Aug, 2020 are:
${e_invest_ss_trailingReturnText} =  Period
${e_invest_ss_returnPeriod1} =  3 months  
${e_invest_ss_returnPeriod2} =  1 year
${e_invest_ss_returnPeriod3} =  3 years


# Application Locator 'KU_<locatorName>'
# Invest Navigation Page
${KU_W_ss_screenTitle} =  xpath=//div[@class='b-save-now__title']
${KU_W_ss_inputAmount} =  xpath=(//input[@name='amount'])[1]
${KU_W_ss_saveBtn} =  xpath=//button[@class='button-primary b-save-now__btn-save']
${KU_W_ss_headerTitle} =  xpath=//div[@class='b-header__title']
${KU_W_ss_headerMsg} =  xpath=//div[@class='b-header__msg']
${KU_W_ss_calcTitle} =  xpath=//div[@class='b-calculator__title']
${KU_W_ss_calcMsg} =  xpath=//div[@class='b-calculator__msg']
${KU_W_ss_trailingHeader} =  xpath=//div[@class='b-calculator__trailing-returns__header']
${KU_W_ss_trailingReturnTitle} =  xpath=(//div[@class='b-calculator__trailing-returns__title'])[1]
${KU_W_ss_trailingPeriod1} =  xpath=//div[@class='b-calculator__return-save-smart__years']/div[2]
${KU_W_ss_trailingPeriod2} =  xpath=//div[@class='b-calculator__return-save-smart__years']/div[3]
${KU_W_ss_trailingPeriod3} =  xpath=//div[@class='b-calculator__return-save-smart__years']/div[4]
${KU_W_ss_trailingPeriod1} =  xpath=//div[@class='b-calculator__return-save-smart__years']/div[2]