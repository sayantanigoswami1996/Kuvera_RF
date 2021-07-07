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
${KU_W_reports_downloadBtn} =  xpath=//div[@class='b-investment-history-desktop__download-img']//img
${KU_W_reports_assetName} =  xpath=//input[@placeholder='Asset name']
${KU_W_reports_allAssets} =  xpath=//div[contains(text(),'All Assets')]
${KU_W_reports_MFAssets} =  xpath=//div[@id='{"value":"Mutual Funds","label":"Mutual Funds"}']
${KU_W_reports_allTypes} =  xpath=//div[contains(text(),'All Types')]
${KU_W_reports_sellTypes} =  xpath=//div[@id='{"value":"Sell","label":"Sell"}']
${KU_W_reports_fromDate} =  xpath=//input[@placeholder='From Date']
${KU_W_reports_fromDateVal} =  xpath=(//span[@class='cell day'])[5]
${KU_W_reports_toDateVal} =  xpath=(//span[@class='cell day'])[6]
${KU_W_reports_toDate} =  xpath=//input[@placeholder='To Date']
${KU_W_reports_PDFReports} =  xpath=(//span[@class='fa fa-file-pdf-o file-download'])[1]
${KU_W_reports_fromYear} =  xpath=//span[normalize-space()='Financial Year 2017 - 2018']
${KU_W_reports_toYear} =  xpath=//span[normalize-space()='Financial Year 2021 - 2022']
${KU_W_reports_importLink} =  xpath=//a[normalize-space()='Import and consolidate']
${KU_W_reports_capitalGainsYear} =  xpath=//div[normalize-space()='Financial Year 2017 - 2018']
${KU_W_reports_capitalGainsExcelReport} =  xpath=(//a[@class='fa fa-file-excel-o file-download'])[4]