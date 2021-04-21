*** Variables *** 
# Application Expected Values 'e_<variableName>'
${e_dashboard_addAccSubTitle} =  ‎Manage investment for your relatives and family members.
${e_dashboard_addAccNavigatedTitle} =  Invest with Your Loved Ones       
${e_dashboard_trackInvestTitle} =  Track external investment
${e_dashboard_trackInvestSubTitle} =  MF, EPF, stocks & more in one place.Take better investment decision.
${e_dashboard_newsAndAdviceTitle} =  News & advice
${e_dashboard_newsScreenTitle} =  Kuvera - Wealth Management, Simplified
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_dashboard_pageSubTitle} =  xpath=//p[contains(text(),'Complete account setup and start growing your weal')]
${KU_W_dashboard_addAccTitle} =  xpath=//h6[normalize-space()='Add new account']
${KU_W_dashboard_addAccSubTitle} =  xpath=//p[contains(text(),'Manage investment for your relatives and family members.')]
${KU_W_dashboard_addAccNavigatedTitle} =  xpath=//h1[@class='b-family-account__what__heading']
${KU_W_dashboard_trackInvestTitle} =  xpath=//h6[contains(@class,'b-standard-tile-with-redirect__title')]
${KU_W_dashboard_trackInvestSubTitle} =  xpath=//div[contains(text(),'MF, EPF, stocks & more in one place')]
${KU_W_dashboard_popupTitle} =  xpath=//h3[normalize-space()='Track external investment']
${KU_W_dashboard_trackInvest_MF} =  xpath=//h6[contains(text(),'MF')]
${KU_W_dashboard_trackInvest_MFDesc} =  xpath=//p[contains(text(),'Import funds you’ve already invested')]
${KU_W_dashboard_trackInvest_stocks} =  xpath=//h6[contains(text(),'Stocks')]
${KU_W_dashboard_trackInvest_stocksDesc} =  xpath=//p[contains(text(),'Import stocks you already own')]
${KU_W_dashboard_trackInvest_USStocks} =  xpath=//h6[contains(text(),'US stocks')]
${KU_W_dashboard_trackInvest_USStocksDesc} =  xpath=//p[contains(text(),'Link your existing Vested portfolio')]
${KU_W_dashboard_trackInvest_digiGold} =  xpath=//h6[contains(text(),'Digi gold')]
${KU_W_dashboard_trackInvest_digiGoldDesc} =  xpath=//p[contains(text(),'Manually enter gold bought externally')]
${KU_W_dashboard_trackInvest_EPF} =  xpath=//h6[contains(text(),'EPF')]
${KU_W_dashboard_trackInvest_EPFDesc} =  xpath=//p[contains(text(),'Track all your EPF transactions.')]
${KU_W_dashboard_popupClose} =  xpath=//img[@class='b-app-bottom-sheet__plugin-card-close-icon']
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
${KU_W_dashboard_ownHomeScreen} =  xpath=//h2[normalize-space()='Own a Home']
${KU_W_dashboard_savetaxIcon} =  xpath=//span[contains(text(),'Save tax')]
${KU_W_dashboard_savetaxScreen} =  xpath=//h2[normalize-space()='Save Tax']
${KU_W_dashboard_moreIcon} =  xpath=//span[normalize-space()='More']
${KU_W_dashboard_superChargeTitle} =  xpath=//h6[normalize-space()='Supercharge portfolio!']
${KU_W_dashboard_superChargeSubTitle} =  xpath=//p[contains(.,'Tools to help you to manage portfolio')]
${KU_W_dashboard_taxHarvestingImg} =  xpath=(//div[@class='b-std-inline-tile--img k-flex k-aic']//img)[17]
${KU_W_dashboard_tardeSmartImg} =  xpath=(//div[@class='b-std-inline-tile--img k-flex k-aic']//img)[18]
${KU_W_dashboard_taxHarvestingIcon} =  xpath=//span[normalize-space()='Tax harvesting']
${KU_W_dashboard_tradeSmartIcon} =  xpath=//span[normalize-space()='TradeSmart']
${KU_W_dashboard_newsAndAdviceTitle} =  xpath=//h6[@class='k-ui__standard-section-heading']
${KU_W_dashboard_viewAllLink} =  xpath=//a[normalize-space()='View all']
${KU_W_dashboard_incompleteAccSetup} =  xpath=//div[contains(text(),'Your account setup is incomplete')]
${KU_W_dashboard_doItLaterBtn} =  xpath=//button[@class='button-primary b-kyc-not-verified__action-continue b-kyc-not-verified__action__do-later']
${KU_W_dashboard_allStocks} =  xpath=//div[contains(text(),'All stocks')]
${KU_W_dashboard_allUSStocks} =  xpath=//div[contains(text(),'All US stocks')]
${KU_W_dashboard_exploreTitle} =  xpath=//h6[contains(text(),'Explore')]
${KU_W_dashboard_insure} =  xpath=//span[contains(text(),'Insure')]
${KU_W_dashboard_loan} =  xpath=//span[contains(text(),'Loan')]
${KU_W_dashboard_remit} =  xpath=//span[contains(text(),'Remit')]