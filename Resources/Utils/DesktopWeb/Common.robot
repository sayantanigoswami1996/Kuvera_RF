** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Library     DateTime
Library     String
Library     OperatingSystem
Library     Collections
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot
Resource    ../../../AppLocators/DesktopWeb/MenuNavigationLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/InvestLandingPageLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/SaveSmartLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/DigitalGoldLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/GiltFundsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/EquityIndexLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/ValueFundsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/ELSSTaxSaverLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/BankPSUBondsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/CryptoLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/FDLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/SectorFundsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/ELSSTaxSaverLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/USETFLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/UltraShortLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/MutualFundsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/StocksLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/USStocksLocators.robot
Resource    ../../../AppLocators/DesktopWeb/FooterLocators.robot
Resource    ../../../AppLocators/DesktopWeb/FundHouseLocators.robot
Resource    ../../../AppLocators/DesktopWeb/UnauthenticatedLinks/LiquidFundsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/UnauthenticatedLinks/ForgotPasswordLocators.robot
Resource    ../../../AppLocators/DesktopWeb/UnauthenticatedLinks/ESignKYCLocators.robot
Resource    ../../../AppLocators/DesktopWeb/UnauthenticatedLinks/AmazonSaveShopLocators.robot
Resource    ../../../AppLocators/DesktopWeb/UnauthenticatedLinks/GoldRushLocators.robot
Resource    ../../../AppLocators/DesktopWeb/UnauthenticatedLinks/DhanterasGoldOfferLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/PostLoginCommonAppLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/KYCLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/HealthInsurancePostLoginLocators/PlanHealthInsuranceLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/HealthInsurancePostLoginLocators/HealthInsuranceLandingPageLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/CreateAccountForPostLoginLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/DashboardLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/InviteFriendsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/ReportLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/ManageFolioLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/Portfolio/Portfolio_MFLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/Portfolio/Portfolio_StocksLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/Portfolio/Portfolio_USStocksLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/Portfolio/Portfolio_SaveSmartLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/Portfolio/Portfolio_GoldLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/Portfolio/Portfolio_EPFLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/Portfolio/Portfolio_FDLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/Portfolio/Portfolio_CommonLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/SettingsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/RewardsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/CartLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/Profile/ProfileLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/Profile/BankAccountLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/Profile/NomineesLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/Profile/RiskProfileLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/Profile/SubscriptionLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/BlogLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/CoinsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/SanityFlow/McxtraLocators.robot
Resource    ../../../AppLocators/DesktopWeb/SanityFlow/SetupMandateLocators.robot


*** Keywords ***

Launch URL
    Run keyword If  '${ENV}' == '${e_prod}'  Open Browser  ${URL_prod}  ${BROWSER}  alias=Kuvera
    ...    ELSE IF  '${ENV}' == '${e_stage3}'  Open Browser  ${URL_stage3}  ${BROWSER}  alias=Kuvera
    ...    ELSE IF  '${ENV}' == '${e_stage2}'  Open Browser  ${URL_stage2}  ${BROWSER}  alias=Kuvera
    ...    ELSE IF  '${ENV}' == '${e_equity}'  Open Browser  ${URL_equity}  ${BROWSER}  alias=Kuvera
    
    Log To Console  ${ENV}
    # Maximize Browser Window
    Set Window Size  ${1920}  ${1080}
    Set Selenium Implicit Wait  6s
    Reload Page
    Kuvera Web Close Regulatory Disclosure
    Run Keyword If    '${ENV}' == '${e_prod}'  Close Hello Bar
    ...    ELSE   Log To Console  Staging
    Set Global Variable  ${cas_filePath}  ${CURDIR}//UploadFiles//CAS.pdf
    Set Global Variable  ${policy_filePath}  ${CURDIR}//UploadFiles//image.png
    Set Global Variable  ${mandate_filePath}  ${CURDIR}//UploadFiles//mandate.jpg

    
Welcome Page Should Be Open
    Run Keyword And Continue On Failure  Title Should Be  ${KU_W_title}

Wait For Element Visibility
    [Arguments]  ${element}
    Wait Until Element Is Visible  ${element}  timeout=150

Verify Element And Text
    [Arguments]  ${element}  ${text}
    Run Keyword And Continue On Failure  Element Text Should Be  ${element}  ${text}

Verify Page Contains Element
    [Arguments]  ${element}
    Run Keyword And Continue On Failure  Page Should Contain Element  ${element}

Verify Page Do Not Contain Element
    [Arguments]  ${element}
    Run Keyword And Continue On Failure  Page Should Not Contain Element  ${element}

Verify Page Contains Image
    [Arguments]  ${image}
    Run Keyword And Continue On Failure  Page Should Contain Image  ${image}

Verify Page Contains Text
    [Arguments]  ${text}
    Run Keyword And Continue On Failure  Page Should Contain  ${text}

Scroll Untill View
    [Arguments]  ${element}
    Scroll Element Into View  ${element}

Verify Page Contains Link
    [Arguments]  ${link}  ${text}
    Run Keyword And Continue On Failure  Page Should Contain Link  ${link}  ${text}

Verify Page Contains Button
    [Arguments]  ${button}
    Run Keyword And Continue On Failure  Page Should Contain Button  ${button}

Verify Disabled Element
    [Arguments]  ${element}
    Run Keyword And Continue On Failure  Element Should Be Disabled  ${element}

Verify Enabled Element
    [Arguments]  ${element}
    Run Keyword And Continue On Failure  Element Should Be Enabled  ${element}

Compare Lists
    [Arguments]  ${actualList}   ${expectedList}
    # Get list item from actual list
    FOR  ${actualListItems}  IN  @{actualList}
    ${actualListItem}  Set Variable  ${actualListItems.text}
    END
    # Get list item from expected list
    FOR  ${expectedListItems}  IN  @{expectedList}
    ${expectedListItem}  Set Variable  ${expectedListItems}
    END
    # Compare two list items
    Run Keyword And Continue On Failure  Should Be Equal  ${actualListItem}  ${expectedListItem}

Switch To Window Verify Title And Close
    [Arguments]  ${title}
    Switch Window  locator=NEW
    Sleep  2s
    Run Keyword And Continue On Failure  Title Should Be  ${title}
    Close Window
    Sleep  2s
    Switch Window  browser=Kuvera

Switch To Frame
    [Arguments]  ${element}
    Select Frame  ${element}

Get List Count
    [Arguments]  ${list}
    ${listCount}  Get Length  ${list}
    [Return]  ${listCount}

Kuvera Web Close Regulatory Disclosure 
    Wait Until Element Is Visible  ${KU_W_regulatoryDisclosure}
    Verify Element And Text  ${KU_W_regulatoryDisclosure}  ${e_regulatoryDisclosure}
    Wait For Element Visibility  ${KU_W_close}
    Click Element  ${KU_W_close}

Close Hello Bar
    Sleep  15s
    ${isBannerVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_bannerFrame}
    IF  ${isBannerVisible}
        Wait Until Element Is Visible  ${KU_W_bannerFrame}  timeout=40
        Switch To Frame  ${KU_W_bannerFrame}
        Wait For Element Visibility  ${KU_W_bannerCloseBtn}
        Click Element  ${KU_W_bannerCloseBtn}
        Unselect Frame
    ELSE
        Log To Console  Continue without hello bar
    END

Get Json Values
    [Arguments]  ${jsonPath}  ${jsonFilePath}
    ${jsonFile}  Load JSON From File  ${jsonFilePath}
    ${jsonValue}  Get Value From Json  ${jsonFile}  ${jsonPath}
    [Return]  ${jsonValue}

Press Enter Key
    [Arguments]  ${element}  
    Press Keys  ${element}  ENTER

Clear Text Field
    [Arguments]  ${field}
    Sleep  500ms
    ${fieldText} =  Get Value  ${field}
    ${fieldTextLen} =  Get Length  ${fieldText}
    Run Keyword If    """${fieldText}""" != ''
    ...     Repeat Keyword  ${fieldTextLen+1}  Press Keys  ${field}  \ue003

Kuvera Web Logo Click
    Wait For Element Visibility  ${KU_W_logo}
    Click Element  ${KU_W_logo}

Verify Google Play & Apple Store Icons
    Scroll Element Into View  ${KU_W_android_image}
    Verify Page Contains Image  ${KU_W_android_image}
    Verify Page Contains Image  ${KU_W_apple_image}

Verify Login And Signup Link
    Wait For Element Visibility  ${KU_W_login}
    Sleep  2s
    Verify Element And Text  ${KU_W_login}  ${e_login}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_signup}
    Verify Element And Text  ${KU_W_signup}  ${e_signup}

Switch To Window
    Switch Window  locator=NEW
    Close Window
    Sleep  5s
    Switch Window  browser=Kuvera
    
Scroll Page To Location
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})

Wait Scroll And Click Element
    [Arguments]  ${element}
    Sleep  1s
    Wait For Element Visibility  ${element}
    Scroll Untill View  ${element}
    Click Element  ${element}

Compare Text Values
    [Arguments]  ${actualValue}  ${expectedValue}
    Run Keyword And Continue On Failure  Should Be Equal  ['${actualValue}']  ${expectedValue}

Verify Screen Title
    [Arguments]  ${title}
    Run Keyword And Continue On Failure  Title Should Be  ${title}

Verify Presence Of FAQBOT Icon
    Run Keyword If  '${ENV}' == '${e_prod}'  Verify Page Contains Element  ${KU_W_faqbot_icon}
    ...    ELSE  Log To Console  Staging

Verify Question On FAQBOT Icon
    [Arguments]  ${botButon}  ${question}
    Run Keyword If  '${ENV}' == '${e_prod}'  Open Bot And Validate Question  ${botButon}  ${question}
    ...    ELSE  Log To Console  Staging

Open Bot And Validate Question
    [Arguments]  ${botButon}  ${question}
    Verify Page Contains Element  ${botButon}
    Wait For Element Visibility  ${botButon} 
    Click Element  ${botButon}
    Sleep  2s
    Switch To Frame  ${KU_W_faqbotFrame}
    Wait For Element Visibility  ${KU_W_faqbotQA1}
    Verify Element And Text  ${KU_W_faqbotQA1}  ${question}
    Unselect Frame
    Wait For Element Visibility  ${KU_W_faqbotCloseBanner}
    Click Element  ${KU_W_faqbotCloseBanner}

Scroll And Wait
    [Arguments]  ${element}
    Scroll Untill View  ${element}
    Sleep  1s
    Wait For Element Visibility  ${element}

Replace Characters
    [Arguments]  ${text}  ${char1}  ${char2}
    ${replacedString} =  Replace String  ${text}  ${char1}  ${char2}
    [Return]  ${replacedString}

Click Link And Switch Window
    [Arguments]  ${websiteLink} 
    Wait For Element Visibility  ${websiteLink}
    Click Element  ${websiteLink}
    Switch To Window
    Sleep  2s  

URL Navigation Based ENV
    Run keyword If  '${ENV}' == '${e_prod}'  Go To  ${URL_prod}
    ...    ELSE IF  '${ENV}' == '${e_stage3}'  Go To  ${URL_stage3}
    ...    ELSE IF  '${ENV}' == '${e_stage2}'  Go To  ${URL_stage2}
    ...    ELSE IF  '${ENV}' == '${e_equity}'  Go To  ${URL_equity}  

Navigate To Home Page
    URL Navigation Based ENV
    ${isLoginButtonVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_login}
    IF  ${isLoginButtonVisible}
        Log To Console  PreLogin
    ELSE
        Reload Page
        Logout From App Post Signup
        URL Navigation Based ENV       
    END
    Set Window Size  ${1920}  ${1080}
    Reload Page
    Sleep  15s

Logout From App And Navigate To Home Page PostLogin
    Go To  ${URL_stage3}
    Reload Page
    Logout From App Post Signup
    Go To  ${URL_stage3}
    Set Window Size  ${1920}  ${1080}
    Reload Page
    Sleep  12s

Generate Random Number
    [Arguments]  ${startingrange}  ${endingrange}
    ${randomNum} =	Evaluate	random.randint(${startingrange}, ${endingrange})
    [Return]   ${randomNum}

Generate Unique Mobile Number
    ${randomMobileNum} =  Generate Random Number  0  99999
    ${result1} =  Convert To Integer  ${randomMobileNum}
    ${result2} =  Convert To Integer  ${e_ca_mobileNum}
    ${actualMobileNumber} =  Evaluate  ${result1}+${result2}
    ${actualMobileNumber1} =  Convert To String  ${actualMobileNumber}
    ${expectedMobileNum} =  Replace Characters  ${actualMobileNumber1}  1  9
    [Return]  ${expectedMobileNum}

Wait And Click 
    [Arguments]  ${element}
    Sleep  1s
    Wait For Element Visibility  ${element}
    Click Element  ${element}

Verify Social Sharing Option 
    [Arguments]  ${fblink}  ${twitterlink}  ${whatsapplink}  ${telegramlink}  ${maillink}
    Wait Scroll And Click Element  ${fblink}
    Switch To Window Verify Title And Close  ${e_HI_facebookTitle}
    Wait Scroll And Click Element  ${twitterlink} 
    Sleep  5s
    Switch To Window Verify Title And Close  ${e_HI_twitterTitle}
    Wait Scroll And Click Element  ${whatsapplink}
    Switch To Window
    Wait Scroll And Click Element  ${telegramlink}
    Switch To Window Verify Title And Close  ${e_HI_telegramTitle}
    Scroll Page To Location  0   1000
    Wait Scroll And Click Element  ${maillink}
    Sleep  2s
    Wait Scroll And Click Element  ${KU_W_HI_mailLink} 

Logout
    Wait And Click  ${KU_W_ca_caretDropdown}
    Sleep  2s
    Wait And Click  ${KU_W_ca_logoutBtn}
    Sleep  4s
    Go Back

Check Mandate Screen
    ${ismandateVisible} =  Run Keyword And Return Status  Verify Mandate Screen
    IF  ${ismandateVisible}
        Wait And Click  ${KU_W_postlogin_mandate_closeMandate}
    ELSE
        Log To Console  Continue without mandate
    END 
    
Logout From App Post Signup
    Sleep  2s
    Check Mandate Screen
    Logout
    
Verify Mandate Screen
    Wait For Element Visibility  ${KU_W_postlogin_mandate_authenticateMandate}
    Element Should Be Visible  ${KU_W_postlogin_mandate_authenticateMandate}
    
Login 
    [Arguments]  ${email}  ${pwd}
    Log To Console  Login 
    Wait And Click  ${KU_W_emailTxt}  
    Input Text  ${KU_W_emailTxt}  ${email}
    Wait And Click  ${KU_W_passwordTxt}
    Input Text  ${KU_W_passwordTxt}  ${pwd}
    Wait And Click  ${KU_W_ca_loginBtn}

Verify Login On Prod With Verifed KYC Account
    Wait And Click  ${KU_W_login}
    Login  ${e_postlogin_prod_KYCVerifiedEmail}  ${e_postlogin_pwd}

Verify Login On Prod Sanity With Verifed KYC Account
    Wait And Click  ${KU_W_login}
    Login  ${e_postlogin_prod_sanityKYCVerifiedEmail}  ${e_ca_pwd}

Verify Login On Prod With Verifed NonKYC Account
    Wait And Click  ${KU_W_login}
    Login  ${e_postlogin_prod_NonKYCVerifiedEmail}  ${e_postlogin_prod_NonKYCVerifiedPwd}

Verify Registration Page Postlogin 
    [Arguments]  ${KYCMsg}  ${registrationBtn_link}
    Verify Page Contains Element  ${KU_W_postlogin_pageTitle} 
    Verify Element And Text  ${KU_W_postlogin_completeKYCMsg}  ${KYCMsg}
    Verify Page Contains Element  ${registrationBtn_link}
    Wait And Click  ${registrationBtn_link}
    Verify Element And Text  ${KU_W_KYC_PANLabel}  ${e_KYC_PANLabel}
    Go Back


Verify Login And Signup On Prelogin
    ${isLoginButtonVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_login}
    IF  ${isLoginButtonVisible}  
        Verify Login And Signup Link
    ELSE  
        Log To Console  We are on postlogin features
    END

Navigate To PortFolio Tab And Verify Investment Title
    [Arguments]  ${title}  ${titleText}  ${subtitle}  ${subtitleText}
    Sleep  4s
    Wait And Click  ${KU_W_postlogin_portfolioTab}
    Verify Element And Text  ${KU_W_postlogin_portfolio}  ${e_postlogin_portfolioTitle}
    Verify Page Contains Element  ${KU_W_portfolio_startInvesting}
    Scroll Untill View  ${subtitle}
    Verify Element And Text  ${title}  ${titleText}
    Verify Element And Text  ${subtitle}  ${subtitleText}

Verify Explore Or Import Menus Page
    [Arguments]  ${exploreFunds_stocks}  ${funds_stocksSubTitle}  ${importFolioTitle}  ${importFolioDesc}
    Verify Page Contains Element  ${exploreFunds_stocks}
    Verify Page Contains Element  ${funds_stocksSubTitle}
    Verify Page Contains Element  ${importFolioTitle}
    Verify Page Contains Element  ${importFolioDesc}

Verify Navigation To Explore Funds And Import Tab
    [Arguments]  ${exploreFunds_stocks}  ${allFunds_stocksTitle}  ${allFunds_stockText}  ${importMenu}  ${pageTitle}  ${pageText}
    Wait And Click  ${exploreFunds_stocks}
    Wait For Element Visibility  ${allFunds_stocksTitle}
    Verify Element And Text  ${allFunds_stocksTitle}  ${allFunds_stockText}
    Go Back
    Wait And Click  ${importMenu}
    Verify Element And Text  ${pageTitle}  ${pageText}

Verify Update PAN Page
    [Arguments]  ${updatePANTitle}  ${updatePANDesc}  ${PANDescText}  ${PANField}
    Verify Page Contains Element  ${updatePANTitle}
    Verify Element And Text  ${updatePANDesc}  ${PANDescText}
    Verify Page Contains Element  ${PANField}

Enter OTP Postlogin
    Wait For Element Visibility  ${KU_W_ca_OTPField}
    Click Element  ${KU_W_ca_OTPField}
    Input Text  ${KU_W_ca_OTPField}  ${e_ca_OTP}
    Click Element  ${KU_W_ca_submitOTPBtn}

Move Slider
    [Arguments]  ${slider}
    Mouse Over  ${slider}
    Wait For Element Visibility  ${slider}
    Drag And Drop By Offset  ${slider}  -123  1

Enter DOB
    [Arguments]  ${dateField}  ${date}  ${monthField}  ${month}  ${yearField}  ${year}
    Wait And Click  ${dateField}
    Input Text  ${dateField}  ${date}
    Wait And Click  ${monthField} 
    Input Text  ${monthField}  ${month} 
    Wait And Click  ${yearField}
    Input Text  ${yearField}  ${year}

Verify Watchlist Icon Action On Pre And Postlogin
    ${isLoginButtonVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_login}
    IF  ${isLoginButtonVisible}
        Wait For Element Visibility  ${KU_W_watchlistIcon}
        Verify Watchlist Icon  ${KU_W_watchlistIcon}
        Verify Login Page
    ELSE
        Wait For Element Visibility  ${KU_W_watchlistIcon}
        Verify Watchlist Icon  ${KU_W_watchlistIcon}
        Verify Page Contains Element  ${KU_W_toastMssg}
    END

Verify Login Page On Pre And Postlogin
    [Arguments]  ${button}  ${navigatedPage}
    ${isLoginButtonVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_login}
    IF  ${isLoginButtonVisible}
        Wait And Click  ${button}
        Verify Login Page
    ELSE
        Wait And Click  ${button}
        Verify Page Contains Element  ${navigatedPage}
        Go Back
    END 

Verify Import Now Banner 
    [Arguments]  ${bannerText}  ${externalFunds}  ${externalFundsText}
    Scroll Untill View  ${KU_W_invest_bannerText} 
    Verify Element And Text  ${KU_W_invest_bannerText}  ${bannerText}
    Wait And Click  ${KU_W_invest_importNow}
    Verify Element And Text  ${externalFunds}  ${externalFundsText}
    Go Back

Verify User Login With Investment
    Wait And Click  ${KU_W_login}
    Login  ${e_postlogin_stage3_MFSIPAcc}  ${e_postlogin_pwd}

Verify Compelete Registration Screen For NONKYC Flow
    [Arguments]  ${title}  ${accSetupDesc}  ${accSetupMSg}  ${button}
    Verify Page Contains Element  ${title}
    Verify Element And Text  ${accSetupDesc}  ${accSetupMSg}
    Wait And Click  ${button}
    Verify Page Contains Element  ${KU_W_KYC_PANTextField} 
    Go Back

Verify Refer Coin Page From Features
    [Arguments]  ${coinTitle}
    Verify Page Contains Element  ${coinTitle}
    Verify Page Contains Element  ${KU_W_postlogin_feature_referFriendTitle}
    Verify Page Contains Element  ${KU_W_postlogin_feature_referCoins}
    Wait And Click  ${KU_W_postlogin_feature_referFriendTitle}
    Wait For Element Visibility  ${KU_W_IF_inviteFriendsTitle}
    Verify Element And Text  ${KU_W_IF_inviteFriendsTitle}  ${e_IF_inviteFriendsTitle}
    Go Back
    Go Back

Navigate To Profile And Verify Title
    [Arguments]  ${tab}  ${title}  ${subtitle}
    Wait And Click  ${KU_W_ca_caretDropdown}
    Wait And Click  ${KU_W_profile_profileLink}
    Wait And Click  ${tab} 
    Verify Page Contains Element  ${title}
    Verify Page Contains Element  ${subtitle}

Add KYC Without Nominees
    Wait And Click  ${KU_W_KYC_IFSCField}
    Input Text  ${KU_W_KYC_IFSCField}  ${e_bankAcc_IFSC}
    Wait And Click  ${KU_W_KYC_bankAccField}
    Input Text  ${KU_W_KYC_bankAccField}  ${e_bankAcc_accNum}
    Wait And Click  ${KU_W_KYC_reBankAccField} 
    Input Text  ${KU_W_KYC_reBankAccField}  ${e_bankAcc_accNum}
    Wait And Click  ${KU_W_KYC_bankCertifyCheckBox} 
    Wait And Click  ${KU_W_KYC_bankConfirmedCheckBox}

Add Nominee Details
    Wait And Click  ${KU_W_KYC_nomineeName} 
    Input Text  ${KU_W_KYC_nomineeName}  ${e_KYC_nomineeName}
    Wait And Click  ${KU_W_KYC_nomineeRelationshipField}
    Wait And Click  ${KU_W_KYC_nomineeRelationship}
    Enter DOB  ${KU_W_KYC_dateField}  ${e_KYC_nomineeDOB}  ${KU_W_KYC_monthField}  ${e_KYC_nomineeMOB}  ${KU_W_KYC_yearField}  ${e_KYC_nomineeYOB}
    Wait And Click  ${KU_W_KYC_nomineeAddress} 
    Input Text  ${KU_W_KYC_nomineeAddress}  ${e_KYC_address1Field}

Verify Account Setup Popup
    Verify Page Contains Element  ${KU_W_postlogin_completeAccSetup}
    Verify Page Contains Element  ${KU_W_postlogin_completeAccSetupDesc}
    Wait And Click  ${KU_W_postlogin_OkBtn}

Verify Gold Banner
    [Arguments]  ${bannerTitle}  ${bannerLogo}
    Scroll Untill View  ${bannerTitle}
    Wait For Element Visibility  ${bannerLogo}
    Verify Page Contains Element  ${bannerLogo}
    Verify Page Contains Element  ${bannerTitle}
    Wait And Click  ${KU_W_postlogin_bannerKnowMoreBtn}
    Verify Page Contains Element  ${KU_W_postlogin_howToWinGold}
    Verify Page Contains Element  ${KU_W_postlogin_step1Desc} 
    Verify Page Contains Element  ${KU_W_postlogin_step2Desc}
    Verify Page Contains Element  ${KU_W_postlogin_step3Desc}
    Verify Page Contains Element  ${KU_W_postlogin_step1}
    Verify Page Contains Element  ${KU_W_postlogin_step2}
    Verify Page Contains Element  ${KU_W_postlogin_step3}
    Verify Page Contains Element  ${KU_W_postlogin_step1Logo}
    Verify Page Contains Element  ${KU_W_postlogin_step2Logo}
    Verify Page Contains Element  ${KU_W_postlogin_step3Logo}
    Verify Page Contains Element  ${KU_W_postlogin_note}
    Wait And Click  ${KU_W_postlogin_T&C}
    Verify Page Contains Element  ${KU_W_postlogin_T&CTitle}
    Wait For Element Visibility  ${KU_W_postlogin_T&CDesc1}
    Verify Element And Text  ${KU_W_postlogin_T&CDesc1}  ${e_postlogin_T&CDesc1}
    Go Back
    ${isLoginVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_login}
    IF  ${isLoginVisible}
        Wait And Click  ${KU_W_postlogin_loginToWinBtn}
        Verify Login Page 
    ELSE
        Wait And Click  ${KU_W_postlogin_transferAndWinBtn}
        Sleep  3s
        Switch To Window Verify Title And Close  ${e_remit_transferWiseCross-borderTitle}
    END

Verify Page Title
    [Arguments]  ${element}
    Run Keyword And Continue On Failure  Title Should Be  ${element}

Verify Features On Dashboard After Investment
    Verify Page Contains Element  ${KU_W_postlogin_db_investDashboardLabel}
    Verify Page Contains Element  ${KU_W_postlogin_db_featureDashboardLabel}
    Verify Page Contains Element  ${KU_W_postlogin_db_allTimeReturnLabel}
    Wait For Element Visibility  ${KU_W_postlogin_db_oneDayReturnLabel}
    Verify Page Contains Element  ${KU_W_postlogin_db_oneDayReturnLabel}
    Verify Page Contains Element  ${KU_W_postlogin_db_allTimeReturnVal}
    Verify Page Contains Element  ${KU_W_postlogin_db_oneDayReturnPer}
    Wait And Click  ${KU_W_postlogin_db_addIcon} 
    Verify Page Contains Element  ${KU_W_postlogin_db_addAssetTitle}
    Go Back
       
Close Web Application
    Close All Browser