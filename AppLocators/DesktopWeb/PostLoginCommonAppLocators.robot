*** Variables *** 
# Application Expected Values 'e_<variableName>'
${e_postlogin_googlePlayStore} =  Kuvera Personal Finance App - Apps on Google Play
${e_postlogin_appStore} =   ‎Kuvera Personal Finance on the App Store
# Dashboard
${e_dashboard_addAccSubTitle} =   ‎Manage investment for your relatives and family members.
${e_dashboard_addAccNavigatedTitle} =  Invest with Your Loved Ones       
${e_dashboard_trackInvestTitle} =   Track external investment
${e_dashboard_trackInvestSubTitle} =   ‎MF, EPF, stocks & more in one place.Take better investment decision.

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
${KU_W_postlogin_homeTab} =  xpath=//a[normalize-space()='Home']
${KU_W_postlogin_appStoreBtn} =  xpath=//div[@class='b-app-standard-modal']//div[2]//a[1]//img[1]
${KU_W_postlogin_playStoreBtn} =  xpath=//div[@class='b-download-app-links-container']//div[1]//a[1]//img[1]
# Dashboard
${KU_W_dashboard_pageSubTitle} =  xpath=//p[contains(text(),'Complete account setup and start growing your weal')]
${KU_W_dashboard_addAccTitle} =  xpath=//h6[normalize-space()='Add new account']
${KU_W_dashboard_addAccSubTitle} =  xpath=//p[contains(@class,'-standard-redirect-tile__para')]
${KU_W_dashboard_addAccNavigatedTitle} =  xpath=//h1[@class='b-family-account__what__heading']
${KU_W_dashboard_trackInvestTitle} =  xpath=//h6[contains(@class,'b-standard-tile-with-redirect__title')]
${KU_W_dashboard_trackInvestSubTitle} =  xpath=//p[@class='b-standard-tile-with-redirect__para']
${KU_W_dashboard_addSIPsTitle} =  xpath=//h6[normalize-space()='Add SIPs']
${KU_W_dashboard_addSIPSubTitle} =  xpath=//p[normalize-space()='Invest regularly to grow your portfolio overtime.']
${KU_W_dashboard_addSIPMFImg} =  xpath=(//div[@class='b-std-inline-tile--img k-flex k-aic']//img)[11]
${KU_W_dashboard_addSIPSSImg} =  xpath=(//div[@class='b-std-inline-tile--img k-flex k-aic']//img)[12]
${KU_W_dashboard_addSIPDGImg} =  xpath=(//div[@class='b-std-inline-tile--img k-flex k-aic']//img)[13]

${KU_W_dashboard_addSIPMFIcon} =  xpath=(//span[contains(text(),'MF')])[2]
${KU_W_dashboard_allFunds} =  xpath=//div[contains(text(),'All funds')]
${KU_W_dashboard_addSIPSSIcon} =  xpath=(//span[contains(text(),'SaveSmart')])[2]
${KU_W_dashboard_addGoalsTitle} =  xpath=//h6[normalize-space()='Add goals']
${KU_W_dashboard_addGoalsSubTitle} =  xpath=//p[normalize-space()='Our users add 2.2 goals on average.']

${KU_W_dashboard_ownHomeImg} =  xpath=(//div[@class='b-std-inline-tile--img k-flex k-aic']//img)[14]
${KU_W_dashboard_saveTaxImg} =  xpath=(//div[@class='b-std-inline-tile--img k-flex k-aic']//img)[15]
${KU_W_dashboard_moreImg} =  xpath=(//div[@class='b-std-inline-tile--img k-flex k-aic']//img)[16]
${KU_W_dashboard_ownHomeIcon} =  xpath=//span[contains(text(),'Own home')]
