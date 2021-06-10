*** Keywords ***

Verify PostLogin Savesmart Portflio Menu Navigation With KYC
    Log To Console  SaveSmart Portfolio With KYC
    Navigate To PortFolio Tab And Verify Investment Title  ${KU_W_portfolio_ss_title}  ${e_portfolio_ss_title}  ${KU_W_portfolio_ss_subtitle}  ${e_portfolio_ss_subTitle}
    Wait And Click  ${KU_W_portfolio_ss_title}
    Wait For Element Visibility  ${KU_W_ss_screenTitle}
    Verify Element And Text  ${KU_W_ss_screenTitle}  ${e_invest_ss_screenText}