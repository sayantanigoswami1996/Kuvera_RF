*** Variables *** 
# Application Expected Values 'e_<variableName>' 
${e_portfolio_mf_title} =  Mutual Funds                
${e_portfolio_mf_subTitle} =  Explore & invest in mutual funds              
${e_portfolio_mf_allFundsText} =  All funds     
${e_portfolio_mf_externalFundsDesc} =  Consolidate and track all your mutual\nfund investments in one place.        
${e_portfolio_mf_emailLabel} =  Import Portfolio
${e_portfolio_mf_emailDesc} =  Enter an email address you use for investments external to Kuvera. We’ll use this to request the Consolidated Account Statement (CAS) of all mutual fund investments linked with that email. 
${e_portfolio_mf_investmentEmailID} =  moolya@kuvera.in
${e_portfolio_mf_importDesc} =  Visit CAMS website and follow the instructions given in the video:
${e_portfolio_mf_CMSPageTitle} =  Get Consolidated Account Statement - CAMS+KFintech+FTAMIL+SBFS
${e_portfolio_mf_alreadyHaveCAS} =  Already have a CAS?
${e_portfolio_mf_uploadCASTitle} =  Upload CAS
${e_portfolio_mf_uploadCASSubTitle} =  If you prefer to upload your CAS, instead of forwarding it to us, upload it here.
${e_portfolio_mf_uploadCAS} =  Upload PDF received from Karvy or CAMS.
${e_portfolio_mf_CASPwd} =  1234567890
${e_portfolio_mf_popupDesc} =  We have successully imported all your historic transactions. You can now track them in the Portfolio page.
${e_portfolio_mf_updatePANDesc} =  A KYC compliant PAN is required to import your portfolio so we can correctly map them against your account.
${e_portfolio_mf_CASPath} =  D:\\Phase4\\Kuvera_RF\\Resources\\Utils\\Files\\CAS.pdf
# Application Locator 'KU_<locatorName>'
# MF Portfolio Navigation Page
${KU_W_portfolio_mf_title} =  xpath=(//p[@class='tile-opt-label'])[1]
${KU_W_portfolio_mf_subTitle} =  xpath=(//div[@class='tile-opt-sub-label-container'])[1]
${KU_W_portfolio_mf_exploreFunds} =  xpath=//p[contains(.,'Explore Funds')]
${KU_W_portfolio_mf_exploreFundsSubTitle} =  xpath=//p[normalize-space()='Browse and invest in mutual funds.']
${KU_W_portfolio_mf_importFolioSubDesc} =  xpath=//p[contains(text(),'Import funds you’ve already invested in, so you ca')]
${KU_W_portfolio_mf_allFundsTitle}=  xpath=//div[@class='b-mutual-funds-explore__tab_item b-mutual-funds-explore__tab--selected']
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
${KU_W_portfolio_mf_uploadFile} =  xpath=//input[@class='b-upload-cas__btn-box__file-upload']
${KU_W_portfolio_mf_importedInvest} =  xpath=//div[contains(text(),'Imported your Investments')]
${KU_W_portfolio_mf_importedInvestDesc} =  xpath=(//div[@class='message'])[1]
${KU_W_portfolio_mf_MFTab} =  xpath=//div[@class='b-portfolio-tab__key b-portfolio-tab__key--selected']
# Update PAN Page
${KU_W_portfolio_mf_updatePANDesc} =  xpath=//div[@class='b-update-pan__message']
${KU_W_portfolio_mf_updatePANField} =  xpath=//div[@class='b-text-field b-update-pan__input__field']
# Portfolio - After Importing CAS
${KU_W_portfolio_mf_totalValueLabel} =  xpath=//p[contains(.,'Total Value')]
${KU_W_portfolio_mf_investedLabel} =  xpath=(//p[contains(normalize-space(),'Invested')])[2]
${KU_W_portfolio_mf_1DayReturnLabel} =  xpath=//p[contains(.,'1 Day Return')]
${KU_W_portfolio_mf_currentReturnLabel} =  xpath=//p[contains(.,'Current Return')]
${KU_W_portfolio_mf_numOfFundsLabel} =  xpath=//p[contains(normalize-space(),'No. of Funds')]
${KU_W_portfolio_mf_manageFundsBtn} =  xpath=(//button[@id='d-manage-fund-btn'])[1]
${KU_W_portfolio_mf_investDropdownBtn} =  xpath=//p[normalize-space()='Invest']
${KU_W_portfolio_mf_redeemBtn} =  xpath=//p[normalize-space()='Redeem']
${KU_W_portfolio_mf_switchLabel} =  xpath=//p[normalize-space()='Switch']
${KU_W_portfolio_mf_tagGoalsLabel} =  xpath=//p[normalize-space()='Tag Goals']
${KU_W_portfolio_mf_importPortfolioLabel} =  xpath=//p[normalize-space()='Import Portfolio']
${KU_W_portfolio_mf_downloadReportBtn} =  xpath=//p[normalize-space()='Download Report']
${KU_W_portfolio_mf_CSVBtn} =  xpath=//p[normalize-space()='CSV']
${KU_W_portfolio_mf_PDFBtn} =  xpath=//p[normalize-space()='PDF']
${KU_W_portfolio_mf_bookFDTitle} =  xpath=//div[contains(text(),'Book FD up to 6.75% p.a. online')]
# Dashboard
${KU_W_portfolio_mf_switchLabel} =  xpath=//div[@class='b-return-tile__percentage k-mr8 theme-2-positive-value']
${KU_W_portfolio_mf_MFInvestedVal} =  xpath=//span[normalize-space()='540']
${KU_W_portfolio_mf_allTimeReturnPer} =  xpath=//div[@class='b-return-tile__percentage k-mr8 theme-2-positive-value']
${KU_W_portfolio_mf_XIRRBtn} =  xpath=(//div[contains(.,'XIRR')])[17]
${KU_W_portfolio_mf_allTimeReturnTitle} =  xpath=//h6[normalize-space()='All-time return']
${KU_W_portfolio_mf_allTimeReturnSubtitle} =  xpath=//div[contains(text(),'All-time return is the return on your portfolio since inception.')]
${KU_W_portfolio_mf_XIRRLabel} =  xpath=//div[@class='b-k-ui-radio-button__radios__label k-ml8'][normalize-space()='XIRR']
${KU_W_portfolio_mf_XIRRDesc} =  xpath=//div[normalize-space()='XIRR is the annual rate of return earned by your portfolio over time. It is your compounding rate of return.']
${KU_W_portfolio_mf_ABS} =  xpath=//div[contains(text(),'ABS (Absolute)')]
${KU_W_portfolio_mf_ABSDesc} =  xpath=//div[normalize-space()='Absolute return is the return, expressed as a percentage, earned by stocks or mutual funds. This is not an annualized return measure.']
${KU_W_portfolio_mf_closeXIRR} =  xpath=//img[@class='b-app-bottom-sheet__plugin-card-close-icon']