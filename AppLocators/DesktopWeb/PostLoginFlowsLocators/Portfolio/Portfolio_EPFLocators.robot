*** Variables *** 
# Application Expected Values 'e_<variableName>' 
${e_portfolio_EPF_title} =  Employees Provident Fund                                             
${e_portfolio_EPF_subTitle} =  Track all your EPF transactions.                                                  
${e_portfolio_EPF_doNotStorePwd} =  Do not store my password                   
${e_portfolio_EPF_pwdContent} =  By not storing your password, you agree to update EPF account manually every month.                  
${e_portfolio_EPF_UANNum} =  100728131285
${e_portfolio_EPF_UANPwd} =  Vamsi$ruti1317@
${e_portfolio_EPF_tab} =  EPF

# Application Locator 'KU_<locatorName>'
# Gold Portfolio Navigation Page
${KU_W_portfolio_EPF_title} =  xpath=(//p[@class='tile-opt-label'])[7]
${KU_W_portfolio_EPF_subtitle} =  xpath=(//div[@class='tile-opt-sub-label-container'])[7]
${KU_W_portfolio_EPF_importAndTrackTitle} =  xpath=//div[contains(text(),'Import & track your EPF')]
${KU_W_portfolio_EPF_enterUANLabel} =  xpath=//label[normalize-space()='Enter UAN no']
${KU_W_portfolio_EPF_pwdLabel} =  xpath=//label[normalize-space()='Enter password']
${KU_W_portfolio_EPF_doNotStorePwd} =  xpath=//div[@class='b-new-uan__content__new-user__store-pwd__label']
${KU_W_portfolio_EPF_pwdContent} =  xpath=//div[@class='b-new-uan__content__new-user__store-pwd-note__content']
${KU_W_portfolio_EPF_UANField} =  xpath=//input[@placeholder='UAN no']
${KU_W_portfolio_EPF_EPFTab} =  xpath=//div[@class='b-portfolio-tab__key b-portfolio-tab__key--selected']
${KU_W_portfolio_EPF_manageEPF} =  xpath=//button[normalize-space()='Manage EPF']
${KU_W_portfolio_EPF_removeEPFAcc} =  xpath=//div[contains(text(),'Remove account')]
${KU_W_portfolio_EPF_removeEPFPopup} =  xpath=//button[normalize-space()='Remove EPF']
