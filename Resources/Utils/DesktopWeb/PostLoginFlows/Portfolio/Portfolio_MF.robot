*** Keywords ***

Verify PostLogin MF Portfolio Menu Navigation With KYC
    Log To Console  MF Portfolio Navigation With KYC
    Navigate To PortFolio Tab And Verify Investment Title  ${KU_W_portfolio_mf_title}  ${e_portfolio_mf_title}  ${KU_W_portfolio_mf_subTitle}  ${e_portfolio_mf_subTitle}   
    Wait And Click  ${KU_W_portfolio_mf_title}
    Verify Page Contains Element  ${KU_W_portfolio_doYouWantTo}
    Verify Page Contains Element  ${KU_W_portfolio_mf_exploreFunds}
    Verify Page Contains Element  ${KU_W_portfolio_mf_exploreFundsSubTitle}
    Verify Page Contains Element  ${KU_W_portfolio_importFolioTitle}
    Verify Page Contains Element  ${KU_W_portfolio_mf_importfolioSubDesc}
    Verify Navigation To Explore Funds And Import Tab
    Verify Import MF Portfolio
    Verify Upload CAS File


Verify Navigation To Explore Funds And Import Tab
    Wait And Click  ${KU_W_portfolio_mf_exploreFunds}
    Wait For Element Visibility  ${KU_W_portfolio_mf_allFundsTitle}
    Verify Element And Text  ${KU_W_portfolio_mf_allFundsTitle}  ${e_portfolio_mf_allFundsText}
    Go Back
    Wait And Click  ${KU_W_portfolio_importFolioTitle}
    Verify Element And Text  ${KU_W_invest_mf_importExternalFunds}  ${e_invest_mf_importExternalFunds}

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
    # Enter OTP
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
    Choose File  ${KU_W_portfolio_mf_uploadLink}  C:\Users\user\Downloads\CAS
    Input Text  ${KU_W_portfolio_mf_pwdField}  ${e_portfolio_mf_CASPwd}
    Wait And Click  ${KU_W_postlogin_submitBtn}
    # Enter OTP
    Verify Page Contains Element  ${KU_W_portfolio_mf_importedInvest}
    Verify Element And Text  ${KU_W_portfolio_mf_importedInvestDesc}  ${e_portfolio_mf_popupDesc}
    Wait And Click  ${KU_W_postlogin_OkBtn}
    Verify Page Contains Element  ${KU_W_portfolio_mf_mailID}



Navigate To PortFolio Tab And Verify Investment Title
    [Arguments]  ${title}  ${titleText}  ${subtitle}  ${subtitleText}
    Wait And Click  ${KU_W_postlogin_portfolioTab}
    Verify Element And Text  ${KU_W_postlogin_portfolio}  ${e_postlogin_portfolioTitle}
    Verify Page Contains Element  ${KU_W_portfolio_mf_startInvesting}
    Verify Element And Text  ${title}  ${titleText}
    Verify Element And Text  ${subtitle}  ${subtitleText}
    