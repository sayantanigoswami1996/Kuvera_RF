*** Variables *** 
# Application Expected Values 'e_<variableName>' 
${e_portfolio_EPF_title} =  Employees Provident Fund                                             
${e_portfolio_EPF_subTitle} =  Track all your EPF transactions.                                                  
${e_portfolio_EPF_doNotStorePwd} =  Do not store my password                   
${e_portfolio_EPF_pwdContent} =  By not storing your password, you agree to update EPF account manually every month.                  
${e_portfolio_EPF_UANNum} =  100728131285
${e_portfolio_EPF_UANPwd} =  Vamsi$ruti1317@
${e_portfolio_EPF_tab} =  EPF
${e_portfolio_EPF_removeaccToastMsg} =  Your EPF account has been successfully removed
${e_portfolio_EPF_invalidUANNum} =  100727777851
${e_portfolio_EPF_invalidUANPwd} =  moolya123
${e_portfolio_EPF_invalidCredMsg} =  Your EPF investments couldn’t be updated because the UAN or password you have entered is invalid. Please retry entering your valid credentials.
    
# Application Locator 'KU_<locatorName>'
# Gold Portfolio Navigation Page
${KU_W_portfolio_EPF_title} =  xpath=(//p[@class='tile-opt-label'])[7]
${KU_W_portfolio_EPF_subtitle} =  xpath=(//div[@class='tile-opt-sub-label-container'])[7]
${KU_W_portfolio_EPF_tab} =  xpath=(//div[contains(text(),'EPF')])[1]
${KU_W_portfolio_EPF_importAndTrackTitle} =  xpath=//div[contains(text(),'Import & track your EPF')]
${KU_W_portfolio_EPF_enterUANLabel} =  xpath=//label[normalize-space()='Enter UAN no']
${KU_W_portfolio_EPF_pwdLabel} =  xpath=//label[normalize-space()='Enter password']
${KU_W_portfolio_EPF_addAsset} =  xpath=//button[contains(.,'Add Asset')]
${KU_W_portfolio_EPF_doNotStorePwd} =  xpath=//div[@class='b-new-uan__content__new-user__store-pwd__label']
${KU_W_portfolio_EPF_pwdContent} =  xpath=//div[@class='b-new-uan__content__new-user__store-pwd-note__content']
${KU_W_portfolio_EPF_UANField} =  xpath=//input[@placeholder='UAN no']
${KU_W_portfolio_EPF_EPFTab} =  xpath=//div[@class='b-portfolio-tab__key b-portfolio-tab__key--selected']
${KU_W_portfolio_EPF_manageEPF} =  xpath=//button[normalize-space()='Manage EPF']
${KU_W_portfolio_EPF_removeEPFAcc} =  xpath=//div[contains(text(),'Remove account')]
${KU_W_portfolio_EPF_removeEPFPopup} =  xpath=//button[normalize-space()='Remove EPF']
${KU_W_portfolio_EPF_waitingMsg} =  xpath=//div[contains(text(),'We will notify you by email once EPF data is updated.')]
${KU_W_portfolio_EPF_waitingSubMsg} =  xpath=//div[contains(text(),'Usually takes a few hours to update')]
${KU_W_portfolio_EPF_invalidCredMsg} =  xpath=//div[@class='b-epf-detail-invalid-cred__msg']
${KU_W_portfolio_EPF_companyName} =  xpath=(//div[contains(text(),'Moolya Software Testing Pvt Ltd')])[1]
${KU_W_portfolio_EPF_downloadBtn} =  xpath=//div[@class='b-summary__download']//img
${KU_W_portfolio_EPF_closeIcon} =  xpath=//img[@class='b-transactions__img-close']