*** Keywords ***

Verify PostLogin EPF Portfolio Menu Navigation With KYC
    Log To Console  EPF Portfolio Navigation With KYC
    Navigate To PortFolio Tab And Verify Investment Title  ${KU_W_portfolio_EPF_title}  ${e_portfolio_EPF_title}  ${KU_W_portfolio_EPF_subtitle}  ${e_portfolio_EPF_subTitle}
    Wait And Click  ${KU_W_portfolio_EPF_title}
    Verify Import EPF Popup And Enter Details
    Wait And Click  ${KU_W_postlogin_importPortfolioTab}
    Wait And Click  ${KU_W_dashboard_trackInvest_EPF}
    FOR  ${i}  IN RANGE  1   20
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
    Wait And Click  ${KU_W_portfolio_EPF_manageEPF}
    Wait And Click  ${KU_W_portfolio_EPF_removeEPFAcc}
    Wait And Click  ${KU_W_portfolio_EPF_removeEPFPopup}

Verify Import EPF Popup And Enter Details
    Verify Page Contains Element  ${KU_W_portfolio_EPF_importAndTrackTitle}
    Verify Page Contains Element  ${KU_W_portfolio_EPF_enterUANLabel}
    Verify Page Contains Element  ${KU_W_portfolio_EPF_pwdLabel}
    Verify Element And Text  ${KU_W_portfolio_EPF_doNotStorePwd}  ${e_portfolio_EPF_doNotStorePwd}
    Verify Element And Text  ${KU_W_portfolio_EPF_pwdContent}  ${e_portfolio_EPF_pwdContent}
    Input Text  ${KU_W_portfolio_EPF_UANField}  ${e_portfolio_EPF_UANNum}
    Input Text  ${KU_W_postlogin_pwdField}  ${e_portfolio_EPF_UANPwd}
    Wait And Click  ${KU_W_postlogin_submitBtn}