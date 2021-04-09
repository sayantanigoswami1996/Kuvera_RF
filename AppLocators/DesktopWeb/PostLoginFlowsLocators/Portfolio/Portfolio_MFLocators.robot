*** Variables *** 
${e_portfolio_mf_title} =  Mutual Funds                
${e_portfolio_mf_subTitle} =  Explore & invest in mutual funds              
${e_portfolio_mf_allFundsText} =  All funds     
${e_portfolio_mf_externalFundsDesc} =  Consolidate and track all your mutual\nfund investments in one place.        
${e_portfolio_mf_emailLabel} =  Import Portfolio
${e_portfolio_mf_emailDesc} =  Enter an email address you use for investments external to Kuvera. We’ll use this to request the Consolidated Account Statement (CAS) of all mutual fund investments linked with that email. 
${e_portfolio_mf_investmentEmailID} =  sayantani.goswami@moolya.com
${e_portfolio_mf_importDesc} =  Visit CAMS website and follow the instructions given in the video:
${e_portfolio_mf_CMSPageTitle} =  Get Consolidated Account Statement - CAMS+KFintech+FTAMIL+SBFS
${e_portfolio_mf_alreadyHaveCAS} =  Already have a CAS?
${e_portfolio_mf_uploadCASTitle} =  Upload CAS
${e_portfolio_mf_uploadCASSubTitle} =  If you prefer to upload your CAS, instead of forwarding it to us, upload it here.
${e_portfolio_mf_uploadCAS} =  Upload PDF received from Karvy or CAMS.
${e_portfolio_mf_CASPwd} =  1234567890
${e_portfolio_mf_popupDesc} =  We have successully imported all your historic transactions. You can now track them in the Portfolio page.
      

# Application Locator 'KU_<locatorName>'
# MF Portfolio Navigation Page
${KU_W_portfolio_mf_startInvesting} =  xpath=//p[contains(text(),'Start Investing!')]
${KU_W_portfolio_mf_title} =  xpath=(//p[@class='tile-opt-label'])[1]
${KU_W_portfolio_mf_subTitle} =  xpath=(//div[@class='tile-opt-sub-label-container'])[1]
${KU_W_portfolio_mf_exploreFunds} =  xpath=//p[contains(.,'Explore Funds')]
${KU_W_portfolio_mf_exploreFundsSubTitle} =  xpath=//p[normalize-space()='Browse and invest in mutual funds.']
${KU_W_portfolio_mf_importfolioSubDesc} =  xpath=//p[contains(text(),'Import funds you’ve already invested in, so you ca')]
${KU_W_portfolio_mf_allFundsTitle}=  xpath=//div[@class='b-mutual-funds-explore__tab_item b-mutual-funds-explore__tab--selected']
${KU_W_portfolio_mf_title} =  xpath=(//p[@class='tile-opt-label'])[1]
${KU_W_portfolio_mf_exFundsSubTitle} =  xpath=//div[@class='b-import-portfolio__get-start__content']
${KU_W_portfolio_mf_emailDesc} =  xpath=//p[@class='b-add-email__label-description']
${KU_W_portfolio_mf_emailLabel} =  xpath=//p[@class='b-add-email__label']
${KU_W_portfolio_mf_investmentEmailID} =  xpath=//input[@placeholder='Email Address']
${KU_W_portfolio_mf_requestCASBtn} =  xpath=//button[normalize-space()='Request CAS']
${KU_W_portfolio_mf_importDesc} =  xpath=//div[@class='b-import-instruction__desc']
${KU_W_portfolio_mf_CMSLink} =  xpath=//button[normalize-space()='Visit CAMS website']
${KU_W_portfolio_mf_closeImport} =  xpath=//img[@class='b-import-instruction__img-close']
${KU_W_portfolio_mf_mailID} =  xpath=//div[@class='b-cas-list__box__item__btns__email-label']
${KU_W_portfolio_mf_alreadyHaveCAS} =  xpath=//span[@class='b-import-portfolio__bottom__label-have-cas']
${KU_W_portfolio_mf_uploadItHereLink} =  xpath=//span[contains(text(),'Upload it here')]
${KU_W_portfolio_mf_uploadCASTitle} =  xpath=//div[@class='b-upload-cas__title']
${KU_W_portfolio_mf_uploadCASSubTitle} =  xpath=//div[@class='b-upload-cas__desc']
${KU_W_portfolio_mf_uploadCASLabel} =  xpath=//p[@class='b-upload-cas__btn-box__msg']
${KU_W_portfolio_mf_CASPwdLabel} =  xpath=//label[normalize-space()='Password to open CAS']
${KU_W_portfolio_mf_uploadLink} =  xpath=//span[@class='b-upload-cas__btn-box__content__label']
${KU_W_portfolio_mf_pwdField} =  xpath=//input[@placeholder='Password']
${KU_W_portfolio_mf_importedInvest} =  xpath=///div[contains(text(),'Imported your Investments')]
${KU_W_portfolio_mf_importedInvestDesc} =  xpath=(//div[@class='message'])[1]