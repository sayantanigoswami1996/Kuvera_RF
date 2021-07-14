*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_prod} =  Prod
${e_stage3} =  Stage3
${e_stage2} =  Stage2
${URL_prod} =  https://kuvera.in/
${URL_stage3} =  https://staging3.kuvera.in/branch-1.181/#/
${URL_stage2} =  https://staging2.kuvera.in/
${URL_equity} =  https://equity-test.kuvera.in/branch-1.181 
${e_title} =  Kuvera - Direct Mutual Funds | Stocks | Loans | Gold | Remit on Kuvera- Wealth Management Simplified
${e_regulatoryDisclosure} =  Regulatory Disclosure
${e_login} =  Log in 
${e_loginPageTitle} =  Login. Start Investing.
${e_emailLabel} =  EMAIL ADDRESS
${e_login_passwordLabel} =  PASSWORD
${e_signup} =  Sign up 
${e_signup_setPasswordLabel} =  SET A PASSWORD
${e_signup_mobileLabel} =  MOBILE
${e_signupPageTitle} =  Sign Up. Start Investing.
${e_mfWelcomeTitle} =  Wealth Simplified  
${e_mf_welcomeText} =  Zero fee. Higher return.  
${e_mfCategory} =   Equity
${e_mfSubCategory} =   All
${e_startInvestingBtn} =  Start Investing
${e_exploreELSSfundsBtn} =  Explore ELSS funds
${e_learnMoreLinkText} =   Learn more
${e_startHarvestingBtn} =   Start harvesting
${e_switchTodayBtn} =  Switch Today
${e_switchTodayLinkTitle} =  3 ways to "SWITCH" your Regular plans to Direct Mutual Fund plans - Kuvera
${e_upgradeFamilyAccountBtn} =  Upgrade to family account
${e_familyAccountLinkTitle} =  Joint And Family Accounts on Kuvera - Kuvera
${e_consolidateTrackBtn} =  Consolidate & track
${e_consolidateTrackLinkTitle} =  Automatic tracking of external transactions | Wealth Management Simplified | Kuvera
${e_manageTodayBtn} =  Manage Today
${e_manageTodayLinkTitle} =  Managed Accounts: add a manager to handhold your Kuvera account - Kuvera
${e_setAGoalBtn} =  Set a goal
${e_setAGoalLinkTitle} =  Unified goal planning or how to invest less and achieve your financial goals? - Kuvera
${e_sendMoneyBtn} =  Send money
${e_navigatedLinkTitle} =  Kuvera - Direct Mutual Funds | Stocks | FD | Gold | Insurance | Remit on Kuvera- Wealth Management Simplified
${e_summaryHeader} =   Earn up to 35% more in 20 years*
${e_careTitle} =  We care.
${e_careInfoMsg} =  Share your comments and feedback with Gaurav (CEO).
${e_adviceContent} =   We are data driven ex-money managers & technologists. We know how to make financial management easy.
${e_adviceTeam} =   More about our team
${e_emailLink} =  Email him
${e_usersLove} =  Our users love us
${e_coreAUAValue} =  ₹ 25,000
${e_coreAUAText} =  Crore AUA       
${e_citiesValue} =  11 Lakh
${e_citiesText} =   Investors
${e_transValue} =   2.8 Crore
${e_transText} =  Transactions

${e_stock_filterTitleText} =  Filter
${e_stock_filterTxt} =  Sector
${e_stock_subFilterTxt} =  Industry
${e_stock_headerTxt} =  Invest & track stocks    
${e_stock_subHeaderTxt} =  Powered by smallcase
${e_usstock_headerTxt} =  Diversify with US $tocks    
${e_usstock_subHeaderTxt} =  Powered by Vested 
${e_ss_headerTxt} =  Start SaveSmart today 
${e_ss_welcomeTxt} =  Deposits simplified
${e_ss_subheaderTxt} =  High return, instant liquidity
        
        
${e_gold_headerTxt} =  Buy 24K 99.9% gold
${e_gold_subheaderTxt} =  Powered by Augmont

        
#Feature-Widgets Variables
${e_feature_th_TitleText} =  Save up to ₹10,000 in LTCG taxes every financial year with Tax Harvesting.
${e_feature_ts_titleText} =  TradeSmart
${e_feature_fa_screenTitle} =  Invest with Your Loved Ones
${e_feature_manageAccountTitleText} =  Manage Account
${e_feature_sg_screenTitle} =  Set your goal
${e_remit_screenTitle} =  A cheaper & faster way to send money home




@{e_fndHouse_firstColumn} =  ADITYA BIRLA SUN LIFE  AXIS  BARODA  BHARTI AXA  BNP PARIBAS  CANARA ROBECO  DSP  EDELWEISS  FRANKLIN TEMPLETON  HDFC  HSBC  ICICI  PRUDENTIAL  IDBI  IDFC  IIFL  INDIA BULLS  INVESCO  ITI  JM FINANCIAL  KOTAK   
@{e_fndHouse_secondColumn} =  L&T  LIC  MAHINDRA  MIRAE ASSET  MOTILAL OSWAL  NAVI  NIPPON INDIA  PGIM INDIA  PPFAS    PRINCIPAL  QUANT  QUANTUM  SBI  SUNDARAM  TATA  TAURUS  UNION  UTI  YES 


# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_regulatoryDisclosure} =  xpath=//h1[@class='b-regulatory-disclosure__heading'] 
${KU_W_logo_signup} =  xpath=//a[@class='navbar-brand active']/img
# ${KU_W_title}=  Kuvera - Direct Mutual Funds | Stocks | Loans | Gold | Remit on Kuvera- Wealth Management Simplified
${KU_W_logo} =  xpath=//*[@class='b-header__content__logo']
${KU_W_close} =  xpath=//button[@class='button-primary b-regulatory-disclosure__btn']
${KU_W_bannerFrame} =  xpath=//iframe[contains(@id,'container')]
#${KU_W_sliderContentFrame} =  xpath=//iframe[contains(@class,'hellobar hb-animateIn')]
${KU_W_bannerCloseBtn} =  xpath=(//*[@class='icon-close'])[2]
${KU_W_menu} =  xpath=//*[@class='b-header__content']
${KU_W_headers} =  xpath=//*[@class='b-header__content__middle']/a
${KU_W_exploreELSS} =  xpath=//button[contains(text(),'Explore ELSS funds')]
${KU_W_login} =  xpath=//a[@class='b-header__content__right__signin']	
${KU_W_loginPageTitle} =  xpath=//div[contains(text(),'Login. Start Investing.')]
${KU_W_signup} =   xpath=//a[@class='b-header__content__right__singup']
${KU_W_signupPageTitle} =  xpath=//div[contains(text(),'Sign Up. Start Investing.')]

${KU_W_emailLabel} =  xpath=//label[contains(text(),'Email Address')]
${KU_W_emailTxt} =  id=email
${KU_W_login_passwordLabel} =  xpath=//label[contains(text(),'Password')]
${KU_W_passwordTxt} =  id=password
${KU_W_login_forgotPasswordLink} =  xpath=//span[@class='link forgot-password']
${KU_W_googleSigninButton} =  xpath=//button[@class='btn in-btn-google']
${KU_W_fbSigninButton} =  xpath=//button[@class='btn in-btn-fb']
${KU_W_signup_mobileLabel} =  xpath=//label[contains(text(),'Mobile')]
${KU_W_signup_mobileTxt} =  id=mobile_number
${KU_W_signup_setPasswordLabel} =  xpath=//label[contains(text(),'Set a Password')]
${KU_W_signup_inviteCodeLabel} =  xpath=//label[contains(text(),'invite code (optional)')]
${KU_W_signup_inviteCodeTxt} =  id=invite_code
${KU_W_signup_signupButton} =  xpath=//*[@class='upcase btn in-btn']

${KU_W_langSwitch} =  xpath=//div[@class='b-header__content__right--language-switcher']

${KU_W_mf_category} =   xpath=//div[@class='b-mf-wiget__mf-category--input']
${KU_W_mf_subcategory} =  xpath=//div[@class='b-mf-wiget__mf-subcategory--input']
${KU_W_fund_list} =   xpath=//div[@class='b-fund-list__row b-fund-list__row--custom']
${KU_W_loginpage_loginButton} =   xpath=//button[@class='button-primary']                        
${KU_W_loginButton} =   xpath=//button[@class='button-primary b-login-signup__login']
${KU_W_signUpButton} =  xpath=//button[@class='button-primary b-login-signup__register'] 
${KU_W_explore_MF_Stocks_USStocks} =  xpath=//a[contains(.,'Explore more')] 
${KU_W_mobileFirst} =  xpath=//div[contains(text(),'Mobile First')]

${KU_W_watchlistIcon} =   xpath=(//*[local-name()='svg'])[2]
${KU_W_mf_mfTab} =   xpath=(//div[contains(text(),'Mutual Funds')])[1]             
${KU_W_android_image} =  xpath=//img[@class='b-mobile-first__img-android']
${KU_W_apple_image} =   xpath=//img[@class='b-mobile-first__img-apple']
${KU_W_coreaua_val} =   xpath=//div[@class='b-investment-count__count__aua__val']
${KU_W_coreaua_text} =  xpath=//div[@class='b-investment-count__count__aua__text']

${KU_W_stock_filterTitle} =   xpath=//span[@class='b-explore-stock__action-title b-explore-stock__filter-action-title']
${KU_W_stock_filter} =   xpath=//div[@class='b-filter-stock__box-sector']
${KU_W_stock_fundList} =   xpath=//div[@class='b-explore-stocks--widget-container']
${KU_W_mf_stock_button} =   xpath=//div[contains(text(),'Stocks')]
${KU_W_stock_subFilter} =  xpath=//div[@class='b-filter-stock__box b-filter-stock--dropdown-title--disabled b-filter-stock__box--widget']
${KU_W_stock_usstocks_gold_subHeader} =  xpath=//div[@class='b-us-stocks-widget__introduction__detail__title2']//div[1]
${KU_W_stock_usstocks_mf_ss_gold_header} =  xpath=//div[@class='b-us-stocks-widget__introduction__detail__title1']
${KU_W_stock_usstocks_gold_warningMsg} =  xpath=(//div[contains(.,'This service is not part of our investment advisory.')])[11]

${KU_W_USStockButton} =  xpath=//div[contains(text(),'US stocks')]
${KU_W_usstock_filter} =  xpath=//div[@class='b-action-bar__filter__item__sector']
${KU_W_usstock_subFilter} =  xpath=//div[@class='b-action-bar__filter__item__geography__label']
${KU_W_usstock_fundList} =  xpath=//div[@class='b-us-stocks--widget-container']
${KU_W_usstock_filterTitle} =  xpath=//div[@class='b-action-bar__filter__header__label']


${KU_W_saveSmartButton} =  xpath=//div[contains(text(),'SaveSmart')]
${KU_W_saveSmartTitle} =  xpath=//div[@class='b-save-smart-home__title']

${KU_W_goldButton} =  xpath=(//div[contains(text(),'Gold')])[1]

${KU_W_cities_val} =  xpath=//div[@class='b-investment-count__count__cities__val']
${KU_W_cities_text} =   xpath=//div[@class='b-investment-count__count__cities__text']
${KU_W_trans_val} =  xpath=//div[@class='b-investment-count__count__transaction__val']
${KU_W_trans_text} =  xpath=//div[@class='b-investment-count__count__transaction__text']
${KU_W_faqbot_icon} =   xpath=//div[@class='faq-bot-button faq-bot-button--show']
${KU_W_faqbotFrame} =  xpath=//iframe[@id='faq-bot-iframe']
${KU_W_faqbotCloseBanner} =  xpath=//div[@class='faq-bot-top-banner-cross']
${KU_W_faqbotQA1} =  xpath=(//div[@class='qa-q-item-title']/a)[1]
${KU_W_mf_ss_welcomeText} =  xpath=//div[@class='b-us-stocks-widget__para']

${KU_W_ELSS_learnMoreLink} =  xpath=(//a[@class='b-feature-card__link'])[1]
${KU_W_ELSS_searchFundBar} =  xpath=(//div[@class='b-explore-fund__action-title'])[1]
${KU_W_startHarvest} =  xpath=//button[contains(text(),'Start harvesting')]
${KU_W_harvest_learnMoreLink} =  xpath=(//a[@class='b-feature-card__link'])[2]
${KU_W_switchToday} =   xpath=//button[contains(text(),'Switch Today')]
${KU_W_switchToday_learnMoreLink} =  xpath=(//a[@class='b-feature-card__link'])[3]
${KU_W_next_button} =   xpath=//div[@class='b-feature-card-list__btns__next b-feature-card-list__btns__next--active']
${KU_W_upgrade_familyAccount} =  xpath=//button[contains(text(),'Upgrade to family account')]
${KU_W_familyAccount_learnMoreLink} =  xpath=(//a[@class='b-feature-card__link'])[4]
${KU_W_consolidate_track} =  xpath=//button[contains(text(),'Consolidate & track')]
${KU_W_automatedTrack_learnMoreLink} =  xpath=(//a[@class='b-feature-card__link'])[5]
${KU_W_manage_today} =  xpath=//button[contains(text(),'Manage Today')]
${KU_W_manageToday_learnMoreLink} =  xpath=(//a[@class='b-feature-card__link'])[6]
${KU_W_set_a_goal} =  xpath=//button[contains(text(),'Set a goal')]
${KU_W_setAGoal_learnMoreLink} =  xpath=(//a[@class='b-feature-card__link'])[7]
${KU_W_send_money} =  xpath=//button[contains(text(),'Send money')]
${KU_W_sendMoney_learnMoreLink} =  xpath=(//a[@class='b-feature-card__link'])[8]
${KU_W_summary_msg} =   xpath=//div[@class='b-feature-summary__percent__summary__msg__heading']
${KU_W_summary_learn} =   xpath=//a[@class='b-feature-summary__percent__summary__learn']
${KU_W_care_title} =  xpath=//div[@class='b-care__title']
${KU_W_care_info_msg} =   xpath=//div[@class='b-care__info__message']
${KU_W_careInfoEmailLink} =  xpath=//a[@class='b-care__info__email']
${KU_W_advice_Title} =  xpath=//div[@class='b-why-kuvera__content__messages__grid1__advice__title']
${KU_W_advice_content} =  xpath=//div[@class='b-why-kuvera__content__messages__grid1__advice__content']
${KU_W_advice_team} =   xpath=//a[@class='b-why-kuvera__content__messages__grid1__advice__team']
${KU_W_why_startInvesing} =  xpath=//button[@class='button-primary b-why-kuvera__btn']

${KU_W_happyUsers} =   xpath=//div[@class='b-users__happy-user']
${KU_W_users_love} =   xpath=//div[@class='b-users__love']
${KU_W_earn_title} =   xpath=//div[@class='b-earn__text-content__title']
${KU_W_start_investButton} =   xpath=//button[@class='button-primary b-start-invest__text-content__btn']
${KU_W_fundHouse_title} =   xpath=//div[@class='b-fund-house__info__title1']
${KU_W_fundHouse_subtitle} =   xpath=//div[@class='b-fund-house__info__title2']
${KU_W_ab_fundHouse} =  xpath=//a[contains(text(),'ADITYA BIRLA SUN LIFE')]
${KU_W_axis_fundHouse} =  xpath=//a[contains(text(),'AXIS')]
${KU_W_fundHouse_title} =   xpath=//div[@class='b-fund-house__info__title1']
${KU_W_fundHouse_subtitle} =   xpath=//div[@class='b-fund-house__info__title2']
${KU_W_fundHouses_firstColumn} =  xpath=//div[@class='b-fund-house__list__column']/a
${KU_W_fundHouses_secondColumn} =  xpath=//div[@class='b-fund-house__list__column b-fund-house__list__column--col2']/a

# Feature-Widgets
${KU_W_searchBarForFunds} =  xpath=(//div[@class='b-explore-fund__action-title'])[1]
${KU_W_feature_th_screenTitle} =  xpath=//div[@class='paras-about-tax-harvesting']/h3
${KU_W_feature_ts_title} =  xpath=//div[@class='b-trade-smart__header__desc__title'] 
${KU_W_feature_fa_screenTitle} =  xpath=//h1[@class='b-family-account__what__heading']
${KU_W_feature_manageAccountTitle} =  xpath=//div[@class='b-manage-account__what']/h1
${KU_W_remit_screenTitle} =  xpath=//div[@class='b-introduction__desc']//div[2]

${KU_W_tc_facebookBtn} =  xpath=//div[@class='b-app-standard-social-options-container']//a[1]
${KU_W_tc_twitterBtn} =  xpath=//div[@class='b-app-standard-social-options-container']//a[2]
${KU_W_tc_whatsappBtn} =  xpath=//div[@class='b-app-standard-social-options-container']//a[3]
${KU_W_tc_telegramBtn} =  xpath=//div[@class='b-app-standard-social-options-container']//a[4]
${KU_W_tc_mailBtn} =  xpath=//div[@class='b-app-standard-social-options-container']//a[5]
${KU_W_toastMssg} =  xpath=//div[@class='b-app-standard-snackbar__box-text']