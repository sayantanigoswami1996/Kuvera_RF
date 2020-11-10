*** Variables ***
#Desired Capabilities
${loginURL}    https://kuvera.in/
${BROWSER}     Chrome

#Application Locator 'KU_<locatorName>'
${KU_W_Title}               Kuvera - Direct Mutual Funds | Stocks | Loans | Gold | Remit on Kuvera- Wealth Management Simplified
${KU_skip} =               xpath=//*[@text="Skip"]
${KU_W_logo} =             xpath://a[@class='router-link-exact-active active']
${KU_W_close} =            xpath://button[contains(text(),'Close')]
${KU_W_signupLink} =       xpath://a[contains(text(),'Sign up')]
${KU_W_signupButton} =     xpath://button[contains(text(),'Sign up')]
${KU_W_logInButton} =      xpath://button[contains(text(),'Log in')]
${KU_W_loginLink} =        xpath://a[contains(text(),'Log in')]                          
${KU_W_loginMssg} =        xpath://div[contains(text(),'Login. Start Investing.')]
${KU_W_signupMssg} =       xpath://div[contains(text(),'Sign Up. Start Investing.')]
${KU_W_loginMssgTitle} =        Login. Start Investing.
${KU_W_signupMssgTitle} =       Sign Up. Start Investing.
${KU_W_faqBotButton} =            xpath://div[@id='faq-bot-button']
${KU_W_faqBotOpeningMssg} =         xpath://p[contains(text(),'Search our help articles ...')]
${KU_W_languageSwitch} =         xpath://div[@class='b-header__content__right--language-switcher']

