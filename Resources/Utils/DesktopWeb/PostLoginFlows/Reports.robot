*** Keywords ***

Verify PostLogin Reports Menu Navigation Without KYC 
    Log To Console  Reports Navigation Without KYC
    Wait And Click  ${KU_W_postlogin_reportsTab}
    Wait For Element Visibility  ${KU_W_reports_pageTitle}
    Verify Element And Text  ${KU_W_reports_pageTitle}  ${e_report_pageTitle}
    # ELSS before KYC
    Wait And Click  ${KU_W_reports_ELSSReportTab}
    Verify Registration Page Postlogin  ${e_report_KYCMsg}  ${KU_W_reports_registrationBtn}
    # Capital Gains before KYC
    Wait And Click  ${KU_W_reports_capitalGainsTab}
    Verify Registration Page Postlogin  ${e_report_KYCMsg}  ${KU_W_reports_registrationBtn}
    # Transactions before KYC
    Wait And Click  ${KU_W_reports_transactionsTab}
    Verify Transactions Section
    
Verify PostLogin Reports Menu Navigation With KYC 
    Log To Console  Reports Navigation With KYC
    Wait And Click  ${KU_W_postlogin_reportsTab}
    Wait For Element Visibility  ${KU_W_reports_pageTitle}
    Verify Element And Text  ${KU_W_reports_pageTitle}  ${e_report_pageTitle}
    # Transactions after KYC
    Verify Transactions Section
    # ELSS after KYC
    Verify ELSS
    # Captital Gains after KYC
    Verify Capital Gains

Verify Transactions Section
    Wait For Element Visibility  ${KU_W_reports_noRecord}
    Verify Element And Text  ${KU_W_reports_noRecord}  ${e_report_noRecordFound}
    Verify Page Contains Element  ${KU_W_reports_assetName} 
    Verify Page Contains Element  ${KU_W_reports_downloadBtn} 
    Verify Page Contains Element  ${KU_W_reports_allAssets}
    Wait And Click  ${KU_W_reports_allAssets}
    Verify Page Contains Element  ${KU_W_reports_MFAssets}
    Wait And Click  ${KU_W_reports_MFAssets}
    Verify Page Contains Element  ${KU_W_reports_allTypes}
    Wait And Click  ${KU_W_reports_allTypes}
    Verify Page Contains Element  ${KU_W_reports_sellTypes} 
    Wait And Click  ${KU_W_reports_sellTypes} 
    Verify Page Contains Element  ${KU_W_reports_fromDate}
    Wait And Click  ${KU_W_reports_fromDate}
    Verify Page Contains Element  ${KU_W_reports_fromDateVal}
    Wait And Click  ${KU_W_reports_fromDateVal}
    Verify Page Contains Element  ${KU_W_reports_toDate}
    Wait And Click  ${KU_W_reports_toDate}
    Verify Page Contains Element  ${KU_W_reports_toDateVal}

Verify Capital Gains
    Wait And Click  ${KU_W_reports_capitalGainsTab}
    Verify Element And Text  ${KU_W_reports_importMF}  ${e_report_importMF}
    Verify Page Contains Element  ${KU_W_reports_taxStatement} 
    Wait And Click  ${KU_W_reports_importLink} 
    Wait For Element Visibility  ${KU_W_portfolio_mf_alreadyHaveCAS}
    Verify Element And Text  ${KU_W_portfolio_mf_alreadyHaveCAS}  ${e_portfolio_mf_alreadyHaveCAS}
    Go Back
    Wait For Element Visibility  ${KU_W_reports_capitalGainsYear}
    Verify Page Contains Element  ${KU_W_reports_capitalGainsYear}
    Verify Page Contains Element  ${KU_W_reports_PDFReports}
    Wait And Click  ${KU_W_reports_capitalGainsExcelReport}

Verify ELSS
    Wait And Click  ${KU_W_reports_ELSSReportTab}
    Wait For Element Visibility  ${KU_W_reports_taxReports}
    Verify Page Contains Element  ${KU_W_reports_taxReports}
    Verify Page Contains Element  ${KU_W_reports_PDFReports}
    Verify Page Contains Element  ${KU_W_reports_fromYear}
    Verify Page Contains Element  ${KU_W_reports_toYear}