*** Keywords ***

Verify PostLogin EPF Portfolio Menu Navigation With KYC
    Log To Console  EPF Portfolio Navigation With KYC
    Wait And Click  ${KU_W_postlogin_portfolioTab}
    Sleep  5s
    ${isElementVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_portfolio_EPF_manageEPF}
    IF  ${isElementVisible}
        Remove Account
    ELSE
        Log To Console  Enter EPF Details
    END
    Scroll Untill View  ${KU_W_portfolio_EPF_title}
    Verify Element And Text  ${KU_W_portfolio_EPF_title}  ${e_portfolio_EPF_title}
    Verify Element And Text  ${KU_W_portfolio_EPF_subtitle}  ${e_portfolio_EPF_subTitle}
    Wait And Click  ${KU_W_portfolio_EPF_title}
    Verify Adding Invalid EPF Account
    FOR  ${i}  IN RANGE  1   40
        ${isElementVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_portfolio_EPF_invalidCredMsg}
        IF  ${isElementVisible}
            Exit For Loop
        ELSE
            Sleep  100s
            Reload Page
        END
    END
    Verify Element And Text  ${KU_W_portfolio_EPF_invalidCredMsg}  ${e_portfolio_EPF_invalidCredMsg}
    Wait And Click  ${KU_W_postlogin_retryBtn}
    Verify Import EPF Popup And Enter Details  ${e_portfolio_EPF_UANNum}  ${e_portfolio_EPF_UANPwd}
    Wait And Click  ${KU_W_postlogin_importPortfolioTab}
    Wait And Click  ${KU_W_dashboard_trackInvest_EPF}
    FOR  ${i}  IN RANGE  1   40
        ${isElementVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_portfolio_EPF_manageEPF}
        IF  ${isElementVisible}
            Exit For Loop
        ELSE
            Sleep  200s
            Reload Page
        END
    END
    Wait For Element Visibility  ${KU_W_portfolio_EPF_EPFTab}
    Verify Element And Text  ${KU_W_portfolio_EPF_EPFTab}  ${e_portfolio_EPF_tab}
    Verify Page Contains Element  ${KU_W_portfolio_EPF_manageEPF}
    Remove Account

Verify Import EPF Popup And Enter Details
    [Arguments]  ${UANNum}  ${UANPwd}
    Verify Page Contains Element  ${KU_W_portfolio_EPF_importAndTrackTitle}
    Verify Page Contains Element  ${KU_W_portfolio_EPF_enterUANLabel}
    Verify Page Contains Element  ${KU_W_portfolio_EPF_pwdLabel}
    Verify Element And Text  ${KU_W_portfolio_EPF_doNotStorePwd}  ${e_portfolio_EPF_doNotStorePwd}
    Verify Element And Text  ${KU_W_portfolio_EPF_pwdContent}  ${e_portfolio_EPF_pwdContent}
    Input Text  ${KU_W_portfolio_EPF_UANField}  ${UANNum}
    Input Text  ${KU_W_postlogin_pwdField}  ${UANPwd}
    Wait And Click  ${KU_W_postlogin_checkBox}
    Wait And Click  ${KU_W_postlogin_submitBtn}
    Verify Page Contains Element  ${KU_W_portfolio_EPF_waitingMsg}
    Verify Page Contains Element  ${KU_W_portfolio_EPF_waitingSubMsg}

Remove Account
    Wait And Click  ${KU_W_portfolio_EPF_manageEPF}
    Wait And Click  ${KU_W_portfolio_EPF_removeEPFAcc}
    Wait And Click  ${KU_W_portfolio_EPF_removeEPFPopup}
    Verify Element And Text  ${KU_W_toastMssg}  ${e_portfolio_EPF_removeaccToastMsg}

Verify Adding Invalid EPF Account
    Verify Import EPF Popup And Enter Details  ${e_portfolio_EPF_invalidUANNum}  ${e_portfolio_EPF_invalidUANPwd}