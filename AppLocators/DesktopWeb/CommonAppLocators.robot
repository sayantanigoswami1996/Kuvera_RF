*** Variables ***
#Desired Capabilities
${URL}    https://kuvera.in/
#For headless chrome use: ${BROWSER}     headlesschrome
${BROWSER}     Chrome

#Application Expected Values 'e_<VariableName>'
${e_login} =  Log in 
${e_signup} =  Sign up 
${e_mfWelcomeTitle} =  Investments Simplified
${e_mf_welcomeText} =  First free Direct Mutual Fund investing platform. Zero fees, higher returns.
${e_mfCategory} =   Equity
${e_mfSubCategory} =   All
${e_startInvestingBtn} =  Start Investing
${e_exploreELSSfundsBtn} =  Explore ELSS funds
${e_startHarvestingBtn} =   Start harvesting
${e_switchTodayBtn} =  Switch Today
${e_upgradeFamilyAccountBtn} =  Upgrade to family account
${e_consolidateTrackBtn} =  Consolidate & track
${e_manageTodayBtn} =  Manage Today
${e_setAGoalBtn} =  Set a goal
${e_sendMoneyBtn} =  Send money
${e_summaryHeader} =   Earn up to 35% more in 20 years*
${e_careTitle} =  How much do we care?
${e_careInfoMsg} =  Our CEO, Gaurav Rastogi, invites you to share your questions, comments or feedback. Email him
${e_adviceContent} =   Our team’s successful money management experience, applied strategies and real-time data-driven approach ensure our recommendations are rooted in reality.
${e_adviceTeam} =   More about our team
${e_emailLink} =  Email him
${e_usersLove} =  Our users love us
${e_usersMsg} =   We revolutionized the way India invests. With your feedback we are making it even better.
${e_earnTitle} =  Earn up to 1.5% more returns*
${e_earnMsg} =  We pioneered commission free Direct Plan investing.\nEarn from our expertise and don't pay commission ever.
${e_earnLearnLink} =   Learn how!
${e_coreAUAValue} =  ₹ 16,000
${e_coreAUAText} =  Crore AUA       
${e_citiesValue} =  3 Lakh
${e_citiesText} =   Goals
${e_transValue} =   1.8 Crore
${e_transText} =  Transactions


@{e_fndHouse_firstColumn} =  Create List    ADITYA BIRLA SUN LIFE  AXIS  BARODA  BHARTI AXA  BNP PARIBAS  CANARA ROBECO  DSP  EDELWEISS  ESSEL  FRANKLIN TEMPLETON    HDFC  HSBC  ICICI  PRUDENTIAL  IDBI  IDFC  IIFL  INDIA BULLS  INVESCO  ITI  JM FINANCIAL    
@{e_fndHouse_secondColumn} =  Create List    KOTAK  L&T  LIC  MAHINDRA  MIRAE ASSET  MOTILAL OSWAL  NIPPON INDIA  PGIM INDIA  PPFAS    PRINCIPAL  QUANT  QUANTUM  SBI  SUNDARAM  TATA  TAURUS  UNION  UTI  YES 


#Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_title}=  Kuvera - Direct Mutual Funds | Stocks | Loans | Gold | Remit on Kuvera- Wealth Management Simplified
${KU_W_logo} =  xpath=//*[@class='b-header__content__logo']
${KU_W_close} =  xpath=//button[@class='button-primary b-regulatory-disclosure__btn']
${KU_W_bannerFrame} =  id=p9e7d2f05349193e9421e568b092da688e5010650-container
${KU_W_bannerCloseBtn} =  (//*[@class='icon-close'])[2]
${KU_W_menu} =  xpath=//*[@class='b-header__content']
${KU_W_headers} =  xpath=//*[@class='b-header__content__middle']/a
${KU_W_exploreELSS} =  xpath=//button[contains(text(),'Explore ELSS funds')]
${KU_W_login} =  xpath=//*[@class='b-header__content__right__signin']
${KU_W_signup} =   xpath=//*[@class='b-header__content__right__singup']

${KU_W_langSwitch} =  xpath=//div[@class='b-header__content__right--language-switcher']
${KU_W_mf_category} =   xpath=//div[@class='b-mf-wiget__mf-category--input']
${KU_W_mf_subcategory} =  xpath=//div[@class='b-mf-wiget__mf-subcategory--input']
${KU_W_fund_list} =   xpath=//div[@class='b-fund-list__row']                               
${KU_W_loginButton} =   xpath=//button[@class='button-primary b-login-signup__login']
${KU_W_signUpButton} =  xpath=//button[@class='button-primary b-login-signup__register'] 
${KU_W_explore_MF} =  xpath=//a[@class='b-funds-list__explore-fund'] 
${KU_W_mf_listIcon} =   xpath=//img[@class='b-fund-list__watchlist-icon']                    
${KU_W_android_image} =  xpath=//img[@class='b-mobile-first__img-android']
${KU_W_apple_image} =   xpath=//img[@class='b-mobile-first__img-apple']
${KU_W_coreaua_val} =   xpath=//div[@class='b-investment-count__count__aua__val']
${KU_W_coreaua_text} =  xpath=//div[@class='b-investment-count__count__aua__text']
${KU_W_cities_val} =  xpath=//div[@class='b-investment-count__count__cities__val']

${KU_W_cities_text} =   xpath=//div[@class='b-investment-count__count__cities__text']
${KU_W_trans_val} =  xpath=//div[@class='b-investment-count__count__transaction__val']
${KU_W_trans_text} =  xpath=//div[@class='b-investment-count__count__transaction__text']
${KU_W_faqbot_icon} =   xpath=//div[@class='faq-bot-button ']
${KU_W_mf_welcomeTitle} =  xpath=//div[@class='b-investment-simplified__title']
${KU_W_mf_welcomeText} =  xpath=//div[@class='b-investment-simplified__text']
${KU_W_startHarvest} =  xpath=//button[contains(text(),'Start harvesting')]
${KU_W_switchToday} =   xpath=//button[contains(text(),'Switch Today')]
${KU_W_next_button} =   xpath=//div[@class='b-feature-card-list__btns__next b-feature-card-list__btns__next--active']
${KU_W_upgrade_familyAccount} =  xpath=//button[contains(text(),'Upgrade to family account')]
${KU_W_consolidate_track} =  xpath=//button[contains(text(),'Consolidate & track')]
${KU_W_manage_today} =  xpath=//button[contains(text(),'Manage Today')]
${KU_W_set_a_goal} =  xpath=//button[contains(text(),'Set a goal')]
${KU_W_send_money} =  xpath=//button[contains(text(),'Send money')]
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
${KU_W_users_msg} =  xpath=//div[@class='b-users__message']
${KU_W_earn_title} =   xpath=//div[@class='b-earn__text-content__title']
${KU_W_earn_msg} =   xpath=//div[@class='b-earn__text-content__message']
${KU_W_earn_learnLink} =  xpath=//a[@class='b-earn__text-content__learn']
${KU_W_start_investButton} =   xpath=//button[@class='button-primary b-start-invest__text-content__btn']
${KU_W_fundHouse_title} =   xpath=//div[@class='b-fund-house__info__title1']
${KU_W_fundHouse_subtitle} =   xpath=//div[@class='b-fund-house__info__title2']
${KU_W_ab_fundHouse} =  xpath=//a[contains(text(),'ADITYA BIRLA SUN LIFE')]
${KU_W_axis_fundHouse} =  xpath=//a[contains(text(),'AXIS')]
${KU_W_fundHouse_title} =   xpath=//div[@class='b-fund-house__info__title1']
${KU_W_fundHouse_subtitle} =   xpath=//div[@class='b-fund-house__info__title2']
${KU_W_fundHouses_firstColumn} =  xpath=//div[@class='b-fund-house__list__column']/a
${KU_W_fundHouses_secondColumn} =  xpath=//div[@class='b-fund-house__list__column b-fund-house__list__column--col2']/a
