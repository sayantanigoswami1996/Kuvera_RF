*** Keywords ***

Verify PostLogin MF Portfolio Menu Navigation With KYC
    Log To Console  MF Portfolio Navigation With KYC
    Navigate To PortFolio Tab And Verify Investment Title  ${KU_W_portfolio_mf_title}  ${e_portfolio_mf_title}  ${KU_W_portfolio_mf_subTitle}  ${e_portfolio_mf_subTitle}   
    Wait And Click  ${KU_W_portfolio_mf_title}
    Verify Page Contains Element  ${KU_W_portfolio_doYouWantTo}
    Verify Explore Or Import Menus Page  ${KU_W_portfolio_mf_exploreFunds}  ${KU_W_portfolio_mf_exploreFundsSubTitle}  ${KU_W_portfolio_importFolioTitle}  ${KU_W_portfolio_mf_importFolioSubDesc}
    Verify Navigation To Explore Funds And Import Tab  ${KU_W_portfolio_mf_exploreFunds}  ${KU_W_portfolio_mf_allFundsTitle}  ${e_portfolio_mf_allFundsText}  ${KU_W_portfolio_importFolioTitle}  ${KU_W_invest_mf_importExternalFunds}  ${e_invest_mf_importExternalFunds}
    Verify Import MF Portfolio
    Verify Upload CAS File
    Wait And Click  ${KU_W_postlogin_portfolioTab}
    Wait For Element Visibility  ${KU_W_postlogin_portfolio}
    Verify Page Contains Element  ${KU_W_postlogin_portfolio}
    Verify Element And Text  ${KU_W_portfolio_mf_MFTab}  ${e_portfolio_mf_title}
   
   
Verify PostLogin MF Portfolio Menu Navigation Without KYC
    Log To Console  MF Portfolio Navigation Without KYC
    Navigate To PortFolio Tab And Verify Investment Title  ${KU_W_portfolio_mf_title}  ${e_portfolio_mf_title}  ${KU_W_portfolio_mf_subTitle}  ${e_portfolio_mf_subTitle}   
    Wait And Click  ${KU_W_portfolio_mf_title}
    Wait And Click  ${KU_W_portfolio_importFolioTitle}
    Verify Update PAN Page  ${KU_W_portfolio_updatePAN}  ${KU_W_portfolio_mf_updatePANDesc}  ${e_portfolio_mf_updatePANDesc}  ${KU_W_portfolio_mf_updatePANField}
    Wait And Click  ${KU_W_postlogin_importPortfolioTab}
    Verify Update PAN Page  ${KU_W_portfolio_updatePAN}  ${KU_W_portfolio_mf_updatePANDesc}  ${e_portfolio_mf_updatePANDesc}  ${KU_W_portfolio_mf_updatePANField}

Verify Import MF Portfolio
    Wait And Click  ${KU_W_postlogin_importPortfolioTab}
    Wait And Click  ${KU_W_dashboard_trackInvest_MF}
    Verify Element And Text  ${KU_W_invest_mf_importExternalFunds}  ${e_invest_mf_importExternalFunds}
    Verify Element And Text  ${KU_W_portfolio_mf_exFundsSubTitle}  ${e_portfolio_mf_externalFundsDesc}
    Wait And Click  ${KU_W_portfolio_getStartedBtn}
    Verify Element And Text  ${KU_W_portfolio_mf_emailLabel}  ${e_portfolio_mf_emailLabel}
    Verify Element And Text  ${KU_W_portfolio_mf_emailDesc}  ${e_portfolio_mf_emailDesc}
    Wait And Click  ${KU_W_portfolio_mf_investmentEmailID}
    Input Text  ${KU_W_portfolio_mf_investmentEmailID}  ${e_portfolio_mf_investmentEmailID}
    Wait And Click  ${KU_W_portfolio_mf_requestCASBtn} 
    Sleep  2s
    Enter OTP Postlogin
    Sleep  5s
    Wait And Click  ${KU_W_portfolio_mf_CMSLink}
    Switch To Window Verify Title And Close  ${e_portfolio_mf_CMSPageTitle}
    Wait For Element Visibility  ${KU_W_portfolio_mf_importDesc}
    Verify Element And Text  ${KU_W_portfolio_mf_importDesc}  ${e_portfolio_mf_importDesc}
    Wait And Click  ${KU_W_portfolio_mf_closeImport}
    Verify Page Contains Element  ${KU_W_portfolio_mf_mailID}

Verify Upload CAS File
    Verify Element And Text  ${KU_W_portfolio_mf_alreadyHaveCAS}  ${e_portfolio_mf_alreadyHaveCAS}
    Wait And Click  ${KU_W_portfolio_mf_uploadItHereLink}
    Verify Element And Text  ${KU_W_portfolio_mf_uploadCASTitle}  ${e_portfolio_mf_uploadCASTitle}
    Verify Element And Text  ${KU_W_portfolio_mf_uploadCASSubTitle}  ${e_portfolio_mf_uploadCASSubTitle}
    Verify Element And Text  ${KU_W_portfolio_mf_uploadCASLabel}  ${e_portfolio_mf_uploadCAS}
    Verify Page Contains Element  ${KU_W_portfolio_mf_CASPwdLabel}
    Sleep  2s
    Choose File  ${KU_W_portfolio_mf_uploadFile}  ${cas_filePath}
    Sleep  3s
    Input Text  ${KU_W_postlogin_pwdField}  ${e_portfolio_mf_CASPwd}
    Wait And Click  ${KU_W_postlogin_submitBtn}
    Wait For Element Visibility  ${KU_W_portfolio_mf_importedInvest}
    Verify Page Contains Element  ${KU_W_portfolio_mf_importedInvest}
    Wait For Element Visibility  ${KU_W_portfolio_mf_importedInvestDesc}
    Verify Element And Text  ${KU_W_portfolio_mf_importedInvestDesc}  ${e_portfolio_mf_popupDesc}
    Wait And Click  ${KU_W_postlogin_OkBtn}
    Verify Page Contains Element  ${KU_W_portfolio_mf_mailID}