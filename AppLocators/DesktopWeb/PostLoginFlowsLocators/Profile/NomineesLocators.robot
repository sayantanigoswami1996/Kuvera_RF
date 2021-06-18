*** Variables *** 
# Application Expected Values 'e_<variableName
${e_nominees_nomineesDetsSubtitle} =  Revised nominee information will get updated in new Folio(s) that get created 1 business day after this information is updated with us.\nTo change this information in your existing Folio(s), submit an in-writing request to the respective AMCs.
${e_nominees_warningText} =  Bhavani Sruti Somaraju Venkata Naga cannot be a nominee
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_nominees_nomineesTitle} =  xpath=//div[@class='title'][normalize-space()='Nominees']
${KU_W_nominees_nomineesTab} =  xpath=//div[normalize-space()='Nominees']
${KU_W_nominees_subTitle} =  xpath=//div[contains(text(),'You have not set nominee for your investments')]
${KU_W_nominees_addNomineeBtn} =  xpath=//button[normalize-space()='Add nominee']
${KU_W_nominees_nomineeDetsTitle} =  xpath=//div[contains(text(),'Nominee Details Form')]
${KU_W_nominees_nomineesDetsSubtitle} =  xpath=//ul[@class='text-warning b-nominee-edit__note__list']
${KU_W_nominees_warningText} =  xpath=//div[@class='text-warning']
${KU_W_nominees_provideValidName} =  xpath=//div[normalize-space()='Provide a valid name']
${KU_W_nominees_nomineeUpdatedTitle} =  xpath=//div[normalize-space()='Nominee Updated']
${KU_W_nominees_nomineeUpdatedSubtitle} =  xpath=//div[normalize-space()='Nominee details have been updated in our system. We will send you an email confirming nominee details.']
${KU_W_nominees_afterNomineeSet} =  xpath=//div[contains(text(),'You have set following nominee(s), for your investments')]
${KU_W_nominees_nomineeName} =  xpath=//h1[normalize-space()='Nominee']
${KU_W_nominees_nomineeNameLabel} =  xpath=//div[normalize-space()='NOMINEE NAME']


${KU_W_nominees_DOBLabel} =  xpath=//div[normalize-space()='DOB']
${KU_W_nominees_afterNomineeSet} =  xpath=//div[contains(text(),'You have set following nominee(s), for your investments')]
${KU_W_nominees_nomineeDOB} =  xpath=//div[contains(text(),'08/09/1965')]
${KU_W_nominees_addressLabel} =  xpath=//div[normalize-space()='ADDRESS']
${KU_W_nominees_address} =  xpath=//div[contains(text(),'Sri Lakshminarayana Mansion')]
${KU_W_nominees_editBtn} =  xpath=//button[normalize-space()='Edit']