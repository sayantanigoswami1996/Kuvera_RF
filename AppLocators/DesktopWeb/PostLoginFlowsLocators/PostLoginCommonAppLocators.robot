*** Variables *** 
# Application Expected Values 'e_<variableName>'
${e_postlogin_googlePlayStore} =  Kuvera Personal Finance App - Apps on Google Play
${e_postlogin_appStore} =  Kuvera Personal Finance on the App Store
# Dashboard
${e_dashboard_addAccSubTitle} =  ‎Manage investment for your relatives and family members.
${e_dashboard_addAccNavigatedTitle} =  Invest with Your Loved Ones       
${e_dashboard_trackInvestTitle} =  Track external investment
${e_dashboard_trackInvestSubTitle} =  MF, EPF, stocks & more in one place.Take better investment decision.
${e_dashboard_newsAndAdviceTitle} =  News & advice
${e_dashboard_newsScreenTitle} =  Kuvera - Wealth Management, Simplified
${e_dashboard_portfolioTitle} =  Portfolio 
${e_dashboard_reportsTitle} =  Reports
${e_dashboard_inviteFriendsTitle} =  Each1Teach1 - help your friends plan for their future
${e_dashboard_noActiveSIPTitle} =  You have no Active SIP. It’s easy to start an SIP
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
${KU_W_postlogin_portfolio} =  xpath=//div[@class='b-portfolio-header__title']
${KU_W_postlogin_dasboardTab} =  xpath=//a[contains(text(),'Dashboard')]
${KU_W_postlogin_portfolioTab} =  xpath=//a[.='Portfolio']
${KU_W_postlogin_rewardsTab} =  xpath=//a[contains(text(),'Rewards')]
${KU_W_postlogin_blogTab} =  xpath=//a[contains(text(),'Blog')]
${KU_W_postlogin_reportsTab} =  xpath=//a[contains(text(),'Reports')]
${KU_W_postlogin_importPortfolioTab} =  xpath=//a[text()='Import Portfolio']
${KU_W_postlogin_primaryPortfolioTab} =  xpath=//span[@class='username']
${KU_W_postlogin_inviteFriendsTab} =  xpath=//a[contains(text(),'Invite Friends')]
${KU_W_postlogin_manageFolioTab} =  xpath=//a[contains(text(),'Manage Folio')]
${KU_W_postlogin_SIP_STP_SWPTab} =  xpath=//a[contains(.,'SIP, STP & SWP')]
${KU_W_postlogin_setAGoalTab} =  xpath=//ul[@class='nav sidebar-nav-second']//a[normalize-space()='Set a goal']
${KU_W_postlogin_setAGoalTopTab} =  xpath=//a[@class='dropdown-custom-option'][normalize-space()='Set a goal']
# Dashboard
${KU_W_dashboard_pageSubTitle} =  xpath=//p[contains(text(),'Complete account setup and start growing your weal')]
${KU_W_dashboard_addAccTitle} =  xpath=//h6[normalize-space()='Add new account']
${KU_W_dashboard_addAccSubTitle} =  xpath=//p[contains(text(),'Manage investment for your relatives and family members.')]
${KU_W_dashboard_addAccNavigatedTitle} =  xpath=//h1[@class='b-family-account__what__heading']
${KU_W_dashboard_trackInvestTitle} =  xpath=//h6[contains(@class,'b-standard-tile-with-redirect__title')]
${KU_W_dashboard_trackInvestSubTitle} =  xpath=//div[contains(text(),'MF, EPF, stocks & more in one place')]
${KU_W_dashboard_popupTitle} =  xpath=//h3[normalize-space()='Track external investment']
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
${KU_W_dashboard_insure} =  xpath=//span[contains(text(),'Insure')]
${KU_W_dashboard_loan} =  xpath=//span[contains(text(),'Loan')]
${KU_W_dashboard_remit} =  xpath=//span[contains(text(),'Remit')]
${KU_W_dashboard_reportTitle} =  xpath=//div[@class='b-reports__heading']
${KU_W_dashboard_inviteFriendsTitle} =  xpath=//div[@class='b-invitation-page__heading']
${KU_W_dashboard_manageFolioTitle} =  xpath=//h2[contains(text(),'Complete Registration')]
${KU_W_dashboard_noActiveSIPTitle} =  xpath=//div[@class='no-sip-title-text']