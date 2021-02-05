*** Variables ***

# Desired Capabilities
${server} =  http://localhost:4723/wd/hub
${platform} =  Android
${platform_version} =  8.1.0
${device} =  ZY322BW52K
${app_package} =  com.gooogle.android.kuvera.app
${app_activity} =  com.gooogle.android.kuvera.app.MainActivity
${appium} =  appium
${apkPath} =  Resources/APK/Kuvera-prod-1.169.1.apk
# Browserstack Credentials
${browserstack_userName}    sayantanigoswami3
${browserstack_accessKey}   4vxxLyC8jKmbV77szpuB
${remote_URL}    http://${browserstack_userName}:${browserstack_accessKey}@hub.browserstack.com:80/wd/hub

# Application Expected Values 'e_<VariableName>'
${e_realDevice} =  Local
${e_browserstackDevice} =  Browserstack
${e_signupLink} =  Sign up
${e_MFLabel} =  Mutual Funds
${e_MFTitle} =  Investments Simplified
${e_MFSubTitle} =  First free direct mutual fund investing platform zero fees, higher returns.
${e_loginLink} =  Log in
${e_loginTitle} =  Login. Start Investing.
${e_signupTitle} =  Sign Up. Start Investing.
${e_croreAUAVal} =  ₹ 12,000
${e_croreAUALabel} =  Crore AUA
${e_goalsLabel} =  Goals
${e_goalsVal} =  12 Lakh
${e_transactionsLabel} =  Transactions
${e_transactionsVal} =  2.5 Crore
${e_stocksLabel} =  Stocks
${e_stocksSubTitle} =  Explore, Invest and track all your stock investments
${e_USStocksLabel} =  US stocks
${e_USStocksTitle} =  Diversify with US stocks
${e_savesmartLabel} =  SaveSmart
${e_savesmartTitle} =  Best deposit account in India!
${e_goldLabel} =  Gold
${e_goldTitle} =  Buying gold has never been this simple!
${e_MF_categoryLabel} =  Category
${e_MF_subcategoryLabel} =  Sub Category
${e_MF_categoryVal} =  Equity
${e_MF_subcategoryVal} =  All

# Application Locator 'KU_<locatorName>'
${KU_A_slider5} =  xpath=//*[@text="Go to slide 5"]
${KU_A_slider1} =  xpath=//*[@text="Go to slide 1"]
${KU_A_skip} =  xpath=//*[@text="Skip"]
${KU_A_logo} =  xpath=//*[@text='kuvera-logo-dark']
${KU_A_close} =  xpath=//*[@text='Close']
${KU_A_hamburgerMenu} =  xpath=//*[@text='hamburger-menu']
${KU_A_signupLink} =  xpath=//*[@text='Sign up']
${KU_A_MFLabel} =  xpath=//*[@text='Mutual Funds']
${KU_A_MFTitle} =  xpath=//*[@text='Investments Simplified']
${KU_A_MFSubTitle} =  xpath=//*[@text='First free direct mutual fund investing platform zero fees, higher returns.']
${KU_A_loginLink} =  xpath=//*[@text='Log in']
${KU_A_loginTitle} =  xpath=//*[@text='Login. Start Investing.']
${KU_A_signupTitle} =  xpath=//*[@text='Sign Up. Start Investing.']
${KU_A_signupBtn} =  xpath=(//*[@text='Sign up'])[2]
${KU_A_croreAUALabel} =  xpath=//*[@text='Crore AUA']
${KU_A_croreAUAVal} =  xpath=//*[@text='₹ 12,000']
${KU_A_goalsLabel} =  xpath=//*[@text='Goals']
${KU_A_goalsVal} =  xpath=//*[@text='12 Lakh']
${KU_A_transactionsLabel} =  xpath=//*[@text='Transactions']
${KU_A_transactionsVal} =  xpath=//*[@text='2.5 Crore']
${KU_A_stocksLabel} =  xpath=//*[@text='Stocks']
${KU_A_stocksSubTitle} =  xpath=//*[@text='Explore, Invest and track all your stock investments']
${KU_A_USStocksLabel} =  xpath=//*[@text='US stocks']
${KU_A_USStocksTitle} =  xpath=//*[@text='Diversify with US stocks']
${KU_A_savesmartLabel} =  xpath=//*[@text='SaveSmart']
${KU_A_savesmartTitle} =  xpath=//*[@text='Best deposit account in India!']
${KU_A_goldLabel} =  xpath=//*[@text='Gold']
${KU_A_goldTitle} =  xpath=//*[@text='Buying gold has never been this simple!']
${KU_A_MF_categoryLabel} =  xpath=//*[@text='Category']
${KU_A_MF_subcategoryLabel} =  xpath=//*[@text='Sub Category']
${KU_A_MF_categoryVal} =  xpath=//*[@text='Equity']
${KU_A_MF_subcategoryVal} =  xpath=//*[@text='All']
${KU_A_MF_fundName} =  xpath=//*[@text='Mirae Asset Emerging Bluechip Growth Direct Plan']
${KU_A_MF_watchListBtn} =  xpath=//*[@text='watchlist-unselected-blue']
${KU_A_MF_exploreMFLink} =  xpath=//*[@text='Explore mutual funds']
${KU_A_MF_faqBotBtn} =  xpath=//*[@resource-id='faq-bot-codestart-id']