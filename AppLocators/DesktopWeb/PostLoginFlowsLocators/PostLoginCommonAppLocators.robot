*** Variables *** 
# Application Expected Values 'e_<variableName>'
${e_postlogin_googlePlayStore} =  Kuvera Personal Finance App - Apps on Google Play
${e_postlogin_appStoreScreen} =  App Store Preview
${e_postlogin_portfolioTitle} =  Portfolio 
${e_postlogin_noActiveSIPTitle} =  You have no Active SIP. It’s easy to start an SIP
${e_postlogin_emailID} =  moolya@kuvera.in 
${e_postlogin_pwd} =  kuveratesting123
${e_postlogin_prod_KYCVerifiedEmail} =  moolya+automation@kuvera.in 
${e_postlogin_prod_NonKYCVerifiedEmail} =  moolya+auto_177@kuvera.in 
${e_postlogin_prod_NonKYCVerifiedPwd} =  sg123456 
${e_postlogin_stocks_importPopup} =  Import stocks
${e_postlogin_USStocks_linkYourVestedAcc} =  Link your Vested account  
${e_postlogin_stage3_MFSIPAcc} =  moolya+MFSIP@kuvera.in
${e_postlogin_copyLink} =  Code copied to clipboard!
${e_postlogin_T&CDesc1} =   Arevuk Advisory Services Pvt Ltd (“Kuvera”) and Transferwise Inc (“Transferwise”) have entered into an arrangement wherein Kuvera provides its users the ability to access and use the Transferwise website and/or mobile application for the purpose of initiating a cross border funds transfer.

# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_postlogin_kuverLogo} =  xpath=//a[@class='navbar-brand']
${KU_W_postlogin_OkBtn} =  xpath=//button[contains(text(),'OK')]
${KU_W_postlogin_proceedBtn} =  xpath=//button[contains(text(),'Proceed')]
${KU_W_postlogin_proceedButton} =  xpath=//button[normalize-space()='PROCEED']
${KU_W_postlogin_okayBtn}=  xpath=//button[contains(text(),'Okay')]
${KU_W_postlogin_doneBtn} =  xpath=//button[contains(text(),'Done')]
${KU_W_postlogin_gotItPopupBtn} =  xpath=//button[contains(text(),'Got it')]
${KU_W_postlogin_checkBox} =  xpath=//img[@class='check-icon']
${KU_W_postlogin_continueBtn} =  xpath=//button[normalize-space()='CONTINUE']
${KU_W_postlogin_homeTab} =  xpath=//a[normalize-space()='Home']
${KU_W_postlogin_appStoreBtn} =  xpath=//div[@class='b-app-standard-modal']//div[2]//a[1]//img[1]
${KU_W_postlogin_playStoreBtn} =  xpath=//div[@class='b-download-app-links-container']//div[1]//a[1]//img[1]
${KU_W_postlogin_portfolio} =  xpath=//div[@class='b-portfolio-header__title']
${KU_W_postlogin_dasboardTab} =  xpath=//a[normalize-space()='Dashboard']
${KU_W_postlogin_portfolioTab} =  xpath=//a[normalize-space()='Portfolio']
${KU_W_postlogin_rewardsTab} =  xpath=//a[contains(text(),'Rewards')]
${KU_W_postlogin_blogTab} =  xpath=//a[contains(text(),'Blog')]
${KU_W_postlogin_appStoreScreen} =  xpath=//div[@class='localnav-title we-localnav__title']
${KU_W_postlogin_kuveraAppTitle} =  xpath=//h1[contains(.,'Kuvera Personal Finance')]
${KU_W_postlogin_reportsTab} =  xpath=//a[contains(text(),'Reports')]
${KU_W_postlogin_importPortfolioTab} =  xpath=//a[text()='Import Portfolio']
${KU_W_postlogin_primaryPortfolioTab} =  xpath=//span[@class='username']
${KU_W_postlogin_inviteFriendsTab} =  xpath=//a[contains(text(),'Invite Friends')]
${KU_W_postlogin_manageFolioTab} =  xpath=//a[contains(text(),'Manage Folio')]
${KU_W_postlogin_SIP_STP_SWPTab} =  xpath=//a[contains(.,'SIP, STP & SWP')]
${KU_W_postlogin_setAGoalTab} =  xpath=//ul[@class='nav sidebar-nav-second']//a[normalize-space()='Set a goal']
${KU_W_postlogin_setAGoalTopTab} =  xpath=//a[@class='dropdown-custom-option'][normalize-space()='Set a goal']
${KU_W_postlogin_noActiveSIPTitle} =  xpath=//div[@class='no-sip-title-text']
${KU_W_postlogin_completeKYCMsg} =  xpath=//div[@class='complete-account-setup']//p
${KU_W_postlogin_pageTitle} =  xpath=//h2[contains(text(),'Complete Registration')]
${KU_W_postlogin_placeOrder} =  xpath=//button[normalize-space()='Place order']
${KU_W_postlogin_netBankingOption} =  xpath=//div[contains(text(),'Net Banking')]
${KU_W_postlogin_proceedToPay} =  xpath=//button[contains(text(),'Proceed to Pay')]
${KU_W_postlogin_chooseBank} =  xpath=//div[@class='fancy-radio-checkbox tick-mark']
${KU_W_postlogin_payNow} =  xpath=//button[normalize-space()='PAY NOW']
${KU_W_postlogin_cartBtn} =  xpath=//li[@id='top-nav-desktop-cart']//a
${KU_W_postlogin_yesDeleteBtn} =  xpath=//button[contains(text(),'Yes, delete')]
${KU_W_postlogin_goBackBtn} =  xpath=//button[normalize-space()='Go Back']
${KU_W_postlogin_paymentPageTitle} =  xpath=//span[normalize-space()='Select Payment Mode']
${KU_W_postlogin_confirmBtn} =  xpath=//button[normalize-space()='Confirm']
${KU_W_postlogin_razorPayFrame} =  xpath=//iframe[@class='razorpay-checkout-frame']
${KU_W_postlogin_razorPayFrame1} =  xpath=(//iframe[@class='razorpay-checkout-frame'])[2]
${KU_W_postlogin_razorPayFrame2} =  xpath=(//iframe[@class='razorpay-checkout-frame'])[3]
${KU_W_postlogin_noContinueBtn} =  xpath=//button[normalize-space()='No, Continue']
${KU_W_postlogin_yesQuitBtn} =  xpath=//div[contains(text(),'Yes, Quit')]
${KU_W_postlogin_yesQuit} =  xpath=//div[contains(text(),'Yes, quit')]
${KU_W_postlogin_yesQuit1} =  xpath=//button[normalize-space()='Yes, quit']
${KU_W_postlogin_continue} =  xpath=//button[normalize-space()='Continue']
${KU_W_postlogin_submitBtn} =  xpath=//button[normalize-space()='Submit']
${KU_W_postlogin_pwdField} =  xpath=//input[@placeholder='Password']
${KU_W_postlogin_kuveraLogo} =  xpath=//a[@class='navbar-brand active']
${KU_W_postlogin_yesDelBtn} =  xpath=//button[normalize-space()='Yes, delete']
${KU_W_postlogin_noCancelBtn} =  xpath=//button[normalize-space()='No, cancel']
${KU_W_postlogin_cancelBtn} =  xpath=//div[contains(text(),'Cancel')]
${KU_W_postlogin_OKButton} =  xpath=//button[normalize-space()='OK']
${KU_W_postlogin_skipButton} =  xpath=//div[contains(text(),'Skip')]
${KU_W_postlogin_successBtn} =  xpath=//button[normalize-space()='success']
${KU_W_postlogin_greatBtn} =  xpath=//button[normalize-space()='Great']
${KU_W_postlogin_stocks_importStocksPopup} =  xpath=//div[@class='b-upload-stock__heading']
${KU_W_postlogin_orderStatusLabel} =  xpath=//div[contains(text(),'Order status')]
${KU_W_postlogin_inProcessTag} =  xpath=(//div[@class='b-order-row__tag'])[2]
${KU_W_postlogin_clearFiltersBtn} =  xpath=//button[normalize-space()='Clear filters']
${KU_W_postlogin_USStocks_linkYourVestedAcc} =  xpath=//div[@class='b-input__content__col1__title']
${KU_W_postlogin_mandate_doItLaterBtn} =  xpath=//p[contains(.,'Do it later')]
${KU_W_postlogin_okThanksBtn} =  xpath=//button[normalize-space()='OK, THANKS']
${KU_W_postlogin_saveBtn} =  xpath=//button[normalize-space()='Save']
${KU_W_postlogin_okaySureBtn} =  xpath=//button[normalize-space()='OK, SURE']
${KU_W_postlogin_chooserajaGPortfolio} =  xpath=//span[normalize-space()='Rajagopal (MF+GOLD+SS+EPF))']
${KU_W_postlogin_rajaGPortfolio} =  xpath=(//span[normalize-space()='Rajagopal (MF+GOLD+SS+EPF))'])[1]
${KU_W_postlogin_feature_referFriendTitle} =  xpath=//p[normalize-space()='Refer a Friend']
${KU_W_postlogin_feature_referCoins} =  xpath=(//div[@class='tile-opt-sub-label-container'])[1]
${KU_W_postlogin_authorizeAccessBtn} =  xpath=//button[normalize-space()='Authorize Access']
${KU_W_postlogin_takeMeBackLink} =  xpath=//a[normalize-space()='No, Take me back']
${KU_W_postlogin_resendBtn} =  xpath=//button[contains(text(),'Resend')]
${KU_W_postlogin_revokeBtn} =  xpath=//button[normalize-space()='Revoke']
${KU_W_postlogin_learnMoreLink} =  xpath=//a[normalize-space()='Learn More']
${KU_W_postlogin_registrationBtn} =  xpath=//button[normalize-space()='Complete Registration']
${KU_W_postlogin_feature_getCoinText} =  xpath=//p[@class='m-subheading']
${KU_W_postlogin_feature_watchlistHeader} =  xpath=//h6[normalize-space()='Watchlist']
${KU_W_postlogin_feature_copyLink} =  xpath=//div[@class='b-app-standard-social-options-button']//img
${KU_W_postlogin_inProcessTab} =  xpath=//div[normalize-space()='In process']
${KU_W_postlogin_recentTab} =  xpath=//div[normalize-space()='Recent']
${KU_W_postlogin_addBankBtn} =  xpath=//button[normalize-space()='ADD BANK']
${KU_W_postlogin_updateBtn} =  xpath=//button[normalize-space()='Update']
${KU_W_postlogin_completeAccSetup} =  xpath=//div[contains(text(),'Complete your Acount Setup')]
${KU_W_postlogin_viewAllLink} =  xpath=//a[normalize-space()='View all']
${KU_W_postlogin_botButton} =  xpath=//div[@id='faq-bot-button']
${KU_W_postlogin_completeAccSetupDesc} =  xpath=//div[normalize-space()='A valid account is required to continue. Please complete your account registration.']
# Gold Banner
${KU_W_postlogin_bannerLogo} =  xpath=//img[@class='b-transferwise-banner__img']
${KU_W_postlogin_bannerTitle} =  xpath=//div[contains(text(),'Win ₹1,000 digital gold on your first transfer.')]     
${KU_W_postlogin_bannerKnowMoreBtn} =  xpath=//div[contains(text(),'Know more')]    
${KU_W_postlogin_howToWinGold} =  xpath=//div[contains(text(),'How to win digital gold')]
${KU_W_postlogin_step1Desc} =  xpath=//div[contains(text(),'Sign up on Wise via Kuvera on or after 12th February 2021.')]     
${KU_W_postlogin_step2Desc} =  xpath=//div[contains(text(),'Complete your first international transfer.')]
${KU_W_postlogin_step3Desc} =  xpath=//div[contains(text(),'Get ₹1,000 digital gold in your Kuvera account.')]
${KU_W_postlogin_note} =  xpath=//div[contains(text(),'Note: Offer valid for Kuvera logged in users who sign up on Wise during offer period.')]
${KU_W_postlogin_T&C} =  xpath=//div[@class='b-win-gold-content__tc']
${KU_W_postlogin_T&CTitle} =  xpath=//h1[normalize-space()='Remit Gold offer terms and conditions']
${KU_W_postlogin_T&CDesc1} =  xpath=(//div[@class='b-tos-win-gold-remit']//p)[1]
${KU_W_postlogin_loginToWinBtn} =  xpath=//button[normalize-space()='Login to win']
${KU_W_postlogin_transferAndWinBtn} =  xpath=//button[normalize-space()='Transfer and win']
${KU_W_postlogin_step1} =  xpath=//div[normalize-space()='Step 1']
${KU_W_postlogin_step2} =  xpath=//div[normalize-space()='Step 2']
${KU_W_postlogin_step3} =  xpath=//div[normalize-space()='Step 3']
${KU_W_postlogin_step1Logo} =  xpath=(//img[@class='b-win-gold-content__step__item__img__content'])[1]
${KU_W_postlogin_step2Logo} =  xpath=(//img[@class='b-win-gold-content__step__item__img__content'])[2]
${KU_W_postlogin_step3Logo} =  xpath=(//img[@class='b-win-gold-content__step__item__img__content'])[3]
${KU_W_postlogin_importBtn} =  xpath=//button[normalize-space()='Import']
${KU_W_postlogin_retryBtn} =  xpath=//button[normalize-space()='Retry']
${KU_W_postlogin_policiesTab} =  xpath=//div[contains(text(),'Policies')]
# Dashboard
${KU_W_postlogin_db_investDashboardLabel} =  xpath=//div[@class='b-tab-with-background disable-browser-text-select b-tabs-with-background__tab-container--item b-tab-with-background--active']
${KU_W_postlogin_db_featureDashboardLabel} =  xpath=//div[contains(@class,'b-dark-tab disable-browser-text-select b-basic-tabs__tab-container__item b-dark-tab--active')]
${KU_W_postlogin_db_allTimeReturnLabel} =  xpath=//div[normalize-space()='All-time return']
${KU_W_postlogin_db_oneDayReturnLabel} =  xpath=//div[contains(text(),'1D return')]
${KU_W_postlogin_db_allTimeReturnVal} =  xpath=//body/div[@id='app']/div[@class='b-template template container-fluid override-container-fluid app-view__pos-adjust']/div[@class='full-height main-section mainbar']/div/div/div[@class='k-pb40 b-dashboard__desktop']/div[@class='k-mt44-d']/div[@class='b-dashboard-summary-card k-mb48-d']/div[@class='b-tabs-with-background']/div[@class='b-asset-card-container k-mt32-m k-mt56-d']/div[@class='b-asset-card']/div[@class='b-asset-card__value-container']/div[@class='b-asset-card__return-container']/div[@class='b-return-tile b-asset-card__return--first']/div[@class='b-return-tile__container']/div[1]
${KU_W_postlogin_db_oneDayReturnVal} =  xpath=//div[@class='b-return-tile']//div[@class='b-return-tile__container']//div[1]
${KU_W_postlogin_db_oneDayReturnPer} =  xpath=//div[contains(@class,'b-return-tile__percentage theme-2')]
${KU_W_postlogin_db_addIcon} =  xpath=//div[@class='k-ml24 k-mt2 k-mt4-m k-cursor--pointer k-pr24-m']//*[local-name()='svg']
${KU_W_postlogin_db_addAssetTitle} =  xpath=//div[contains(text(),'Add an Asset')]