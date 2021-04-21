*** Variables *** 
# Application Expected Values 'e_<variableName>'
${e_report_pageTitle} =  Reports
${e_report_importMF} =  Import and consolidate your Mutual Fund portfolio on Kuvera to get the complete picture of your Capital Gains.
${e_report_noRecordFound} =  No records found
${e_report_KYCMsg} =  You need to register your KYC details to access these reports.
    
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_reports_pageTitle} =  xpath=//div[@class='b-reports__heading']
${KU_W_reports_transactionsTab} =  xpath=//div[contains(text(),'Transactions')]
${KU_W_reports_ELSSReportTab} =  xpath=//div[contains(text(),'ELSS Report')]
${KU_W_reports_capitalGainsTab} =  xpath=//div[contains(text(),'Capital Gains')]
${KU_W_reports_taxReports} =  xpath=//div[@class='tax-reports']//div//div[1]
${KU_W_reports_importMF} =  xpath=//div[@class='complete-account-setup import-cas-cta']//p
${KU_W_reports_importAndConsolidateLink} =  xpath=//a[contains(.,'Import and consolidate')]
${KU_W_reports_taxStatement} =  xpath=//div[@class='tax-statement-position']
${KU_W_reports_noRecord} =  xpath=//div[@class='b-investment-history-desktop__no-item-found']
${KU_W_reports_registrationBtn} =  xpath=//button[normalize-space()='COMPLETE REGISTRATION']