*** Variables *** 
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
# Portfolio Page
${KU_W_portfolio_doYouWantTo} =  xpath=//div[contains(text(),'Do you want to')]
${KU_W_portfolio_importFolioTitle} =  xpath=//p[normalize-space()='Import Portfolio']
${KU_W_portfolio_getStartedBtn} =  xpath=//button[normalize-space()='Get Started']
${KU_W_portfolio_startInvesting} =  xpath=//p[contains(text(),'Start Investing!')]
${KU_W_portfolio_updatePAN} =  xpath=//div[contains(text(),'Update your PAN')]
${KU_W_portfolio_loginBtn} =  xpath=//button[normalize-space()='Login']
${KU_W_portfolio_logIN} =  xpath=//button[normalize-space()='LOG IN']
${KU_W_portfolio_signIN} =  xpath=//button[normalize-space()='SIGN IN']
${KU_W_portfolio_signinBtn} =  xpath=//button[normalize-space()='Sign In']
${KU_W_portfolio_doItLater} =  xpath=//p[contains(.,'Do it later')]