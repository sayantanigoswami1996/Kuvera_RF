*** Variables *** 
# Application Expected Values 'e_<variableName>'
${e_sipstpswp_SIPQuestion} =  How do I get started on Kuvera?
${e_sipstpswp_importMF} =  Import and consolidate your Mutual Fund portfolio on Kuvera to get the complete picture of your Capital Gains.
${e_sipstpswp_noRecordFound} =  No records found
${e_sipstpswp_KYCMsg} =  You need to register your KYC details to access these sipstpswps.
    
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_sipstpswp_addSIPBtn} =  xpath=//button[normalize-space()='ADD SIP']
${KU_W_sipstpswp_learnMore} =  xpath=//div[@class='b-systematic-stps__learn-more']