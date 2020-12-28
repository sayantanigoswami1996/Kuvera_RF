*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_footer_aboutUs} =  ABOUT US
${e_footer_theTeam} =  The Team
${e_footer_theTeamTitle} =  We’re on a mission to make investing simple.
${e_footer_whyKuvera} =  Why Kuvera
${e_footer_press} =  Press 
${e_footer_inPressTitle} =  In Press 
${e_footer_termsOfUsageTitle} =  Terms of Use & Agreement
${e_footer_termsLink} =  Terms
${e_footer_privacyPolicy} =  Privacy Policy
${e_footer_fbIcon} =  Kuvera - Home | Facebook
${e_footer_tweeterIcon} =  Profile / Twitter
# Switch to Direct Funds
${e_footer_switchToDirectFunds} =  Switch to Direct Funds
${e_footer_switchToDirectTitle} =  Introducing 1-Click Switch to Direct Plans.
${e_footer_exploreFunds} =  Explore Funds
${e_mutualFundPageTitle} =  Kuvera - Direct Mutual Funds | Stocks | Loans | Gold | Remit on Kuvera- Wealth Management Simplified
${e_blog} =  Blog
${e_blogScreenTitle} =  Your Investment Magazine
${e_getFinanceInsightsTitle} =  Subscribe to weekly updates

# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_footer_aboutUs} =  xpath=//li[@class='title']
${KU_W_footer_theTeam} =  xpath=//ul[@class='list-unstyled']/li[2]/a
${KU_W_footer_theTeamTitle} =  xpath=//h1[contains(text(),'We’re on a mission to make investing simple.')]
${KU_W_footer_whyKuvera} =  xpath=//ul[@class='list-unstyled']/li[3]/a
${KU_W_footer_press} =  xpath=//ul[@class='list-unstyled']/li[4]/a
${KU_W_footer_inPressTitle} =  xpath=//*[@class='b-press__recent-coverage']/h1
${KU_W_footer_termsLink} =  xpath=//p[@class='links']/a
${KU_W_footer_termsOfUsageTitle} =  xpath=//h2[@class='title']
${KU_W_footer_privacyPolicyLink} =  xpath=//p[@class='links']/a[2]
${KU_W_footer_privacyPolicyTitle} =  xpath=//h2[@class='title text-center']
${KU_W_footer_fbIcon} =  xpath=//ul[@class='list-unstyled']/li[5]/a[1]
${KU_W_footer_tweeterIcon} =  xpath=//ul[@class='list-unstyled']/li[5]/a[2]
# Switch to Direct Funds
${KU_W_footer_switchToDirectFunds} =  xpath=(//ul[@class='list-unstyled'])[2]/li[2]/a
${KU_W_footer_switchToDirectTitle} =  xpath=//*[@class='container page-heading']/div/div/h1
${KU_W_footer_setAGoal} =  xpath=//a[contains(text(),'Set a goal')]
${KU_W_footer_exploreFunds} =  xpath=//a[contains(text(),'Explore Funds')]
${KU_W_blog} =  xpath=//a[contains(text(),'Blog')]
${KU_W_blogScreenTitle} =  xpath=///h1[contains(text(),'Your Investment Magazine')]
${KU_W_googlePlay} =  xpath=(//ul[@class='list-unstyled'])[3]/li[3]/a
${KU_W_appStore} =  xpath=(//ul[@class='list-unstyled'])[3]/li[4]/a
${KU_W_getFinanceInsights} =  xpath=//button[@class='btn active-btn']
${KU_W_getFinanceInsightsTitle} =  xpath=//*[@class='b-finance-insights__heading']