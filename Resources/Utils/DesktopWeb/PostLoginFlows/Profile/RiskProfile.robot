*** Keywords ***

Verify PostLogin Risk Profile Menu Navigation
    Log To Console  Risk Profile
    Navigate To Profile And Verify Title  ${KU_W_riskprofile_tab}  ${KU_W_riskprofile_riskprofileTitle}  ${KU_W_riskprofile_subTitle}
    Verify Page Contains Element  ${KU_W_riskprofile_header}  
    Verify Page Contains Element  ${KU_W_riskprofile_subHeader}
    Wait And Click  ${KU_W_riskprofile_married}
    Wait And Click  ${KU_W_riskprofile_stableIncome}
    Scroll Untill View  ${KU_W_riskprofile_dualIncome}
    Wait And Click  ${KU_W_riskprofile_dualIncome}
    Verify Page Contains Element  ${KU_W_riskprofile_addFinancesTitle}
    Scroll Untill View  ${KU_W_riskprofile_incomeDropdown}
    Wait And Click  ${KU_W_riskprofile_incomeDropdown}
    Wait And Click  ${KU_W_riskprofile_dropdownValue}
    Verify Page Contains Element  ${KU_W_riskprofile_incomeLabel}
    Verify Page Contains Element  ${KU_W_riskprofile_cash_FDLabel}
    Verify Page Contains Element  ${KU_W_riskprofile_expensesLabel}
    Verify Page Contains Element  ${KU_W_riskprofile_activeLoansLabel}
    Wait And Click  ${KU_W_riskprofile_expenseDropdown}
    Wait And Click  ${KU_W_riskprofile_expenseDropdownValue}
    Wait And Click  ${KU_W_riskprofile_fdDropdown}
    Wait And Click  ${KU_W_riskprofile_dropdownValue}
    Wait And Click  ${KU_W_riskprofile_loansDropdown}
    Wait And Click  ${KU_W_riskprofile_dropdownValue}
    Scroll Untill View  ${KU_W_riskprofile_updateRiskProfileBtn}
    Wait And Click  ${KU_W_riskprofile_updateRiskProfileBtn}
    Verify Page Contains Element  ${KU_W_riskprofile_profileSaved}
    Verify Page Contains Element  ${KU_W_riskprofile_profileSavedDesc} 
    Wait And Click  ${KU_W_postlogin_OkBtn}