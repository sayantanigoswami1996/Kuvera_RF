*** Variables *** 
# Application Expected Values 'e_<variableName>'               
${e_portfolio_USStocks_subTitle} =  Diversify with US Equities, create or link your existing portfolio.                                             
${e_portfolio_USStocks_allUSStocks} =   All US stocks    
${e_portfolio_USStocks_linkYourVestedAcc} =  Link your Vested account       
${e_portfolio_USStocks_updatePANDesc} =  A KYC compliant PAN is required to import your holdings so we can correctly map them against your account.
${e_portfolio_USStocks_onbaoarding} =  By proceeding, you agree to Vested's Terms of Service, Privacy policy and Disclaimers.
${e_portfolio_USStocks_selectAccDesc} =  Confirm the family account where you’d like to associate US stocks holding. Only single holders account t can be linked.
${e_portfolio_USStocks_stepsTitle} =  4 steps to link Vested portfolio                                                
${e_portfolio_USStocks_subTitle1} =  We will redirect you to Vested login.   
${e_portfolio_USStocks_subTitle2} =  Login using your existing account credentials.    
${e_portfolio_USStocks_subTitle3} =  Once logged in, close the Vested window.
${e_portfolio_USStocks_subTitle4} =  Track your holdings from the portfolio section. 

# Application Locator 'KU_<locatorName>'
# US Stocks Portfolio Navigation Page
${KU_W_portfolio_USStocks_title} =  xpath=(//p[@class='tile-opt-label'])[3]
${KU_W_portfolio_USStocks_subtitle} =  xpath=(//div[@class='tile-opt-sub-label-container'])[3]
${KU_W_portfolio_USStocks_exploreUSStocks} =  xpath=(//p[contains(text(),'Explore & invest')])[1]
${KU_W_portfolio_USStocks_exploreUSSDesc} =  xpath=//p[normalize-space()='Browse and invest in US stocks and ETFs.']
${KU_W_portfolio_USStocks_importTitle} =  xpath=//p[normalize-space()='Import & track']
${KU_W_portfolio_USStocks_importDesc} =  xpath=//p[normalize-space()='Link and manage existing Vested portfolio.']
${KU_W_portfolio_USStocks_allUSSStocks} =  xpath=//div[@class='disable-browser-text-select b-standard-tab__item b-standard-tab__item--active b-standard-tab__item--all']
${KU_W_portfolio_USStocks_linkYourVestedAcc} =  xpath=//div[@class='b-input__content__col1__title']
${KU_W_portfolio_USStocks_closePopup} =  xpath=//div[@class='b-us-equity-options-close']//img
${KU_W_portfolio_USStocks_vestedAccEmail} =  xpath=//input[@name='email']
${KU_W_portfolio_USStocks_vestedAccDesc} =  xpath=//div[contains(text(),'Confirm your Vested login email.')]
${KU_W_portfolio_USStocks_verifyEmail} =  xpath=//div[contains(text(),'We will verify this Email via OTP.')]
${KU_W_portfolio_USStocks_onboardingText} =  xpath=//p[@class='b-vested-onboarding__terms-text']
${KU_W_portfolio_USStocks_selectAcc} =  xpath=//div[contains(text(),'Select account')]
${KU_W_portfolio_USStocks_selectAccDesc} =  xpath=//div[@class='b-select-portfolio__text__desc']
${KU_W_portfolio_USStocks_accName} =  xpath=//div[@class='b-select-portfolio__list__item__name']
# 4 Steps
${KU_W_portfolio_USStocks_stepsTitle} =  xpath=//div[@class='b-instruction__title']
${KU_W_portfolio_USStocks_stepsTitle1} =  xpath=//div[normalize-space()='Step 1']
${KU_W_portfolio_USStocks_stepsTitle2} =  xpath=//div[normalize-space()='Step 2']
${KU_W_portfolio_USStocks_stepsTitle3} =  xpath=//div[normalize-space()='Step 3']
${KU_W_portfolio_USStocks_stepsTitle4} =  xpath=//div[normalize-space()='Step 4']
${KU_W_portfolio_USStocks_subTitle1} =  xpath=(//div[@class='b-instruction__steps__text__subtitle'])[1]
${KU_W_portfolio_USStocks_subTitle2} =  xpath=(//div[@class='b-instruction__steps__text__subtitle'])[2]
${KU_W_portfolio_USStocks_subTitle3} =  xpath=(//div[@class='b-instruction__steps__text__subtitle'])[3]
${KU_W_portfolio_USStocks_subTitle4} =  xpath=(//div[@class='b-instruction__steps__text__subtitle'])[4]
${KU_W_portfolio_USStocks_img1} =  xpath=(//img[@class='b-instruction__steps__img'])[1]
${KU_W_portfolio_USStocks_img2} =  xpath=(//img[@class='b-instruction__steps__img'])[2]
${KU_W_portfolio_USStocks_img3} =  xpath=(//img[@class='b-instruction__steps__img'])[3]
${KU_W_portfolio_USStocks_img4} =  xpath=(//img[@class='b-instruction__steps__img'])[4]
${KU_W_portfolio_USStocks_stepsPopupClose} =  xpath=//img[@class='b-instruction__close-icon']
${KU_W_portfolio_USStocks_completeAccSetup} =  xpath//div[contains(text(),'Complete account setup on Vested.')]