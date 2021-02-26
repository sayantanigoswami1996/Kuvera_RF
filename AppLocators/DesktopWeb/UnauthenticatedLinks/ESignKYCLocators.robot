*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_eSignKYC_invalidRequestURL} =  https://staging2.kuvera.in/#/kyc/e-sign/request/token
${e_eSignKYC_completedESignURL} =  https://staging2.kuvera.in/#/kyc/e-sign/complete
${e_eSignKYC_failedESignURL} =  https://staging2.kuvera.in/#/kyc/e-sign/failure/:error_msg
${e_eSignKYC_invalidStatusTitle} =  E-Sign KYC Status
${e_esignKYC_invalidStatusDesc} =  Invalid request. Please reach out to support@kuvera.in for further assistance
${e_eSignKYC_completedStatusTitle} =  E-Sign KYC completed
${e_eSignKYC_completedStatusDesc} =  Your KYC application has been e-signed and submitted. We will update you via email when the application is approved
${e_eSignKYC_failedStatusTitle} =  E-Sign KYC failed
${e_eSignKYC_failedStatusDesc} =  Something went wrong. Please reach out to support@kuvera.in for further assistance
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_eSignKYC_imgIcon} =  xpath=//img[@class='b-confirm__icon']
${KU_W_eSignKYC_statusTitle} =  xpath=//div[@class='b-confirm__title']
${KU_W_eSignKYC_statusDesc} =  xpath=//div[@class='b-confirm__description']
${KU_W_eSignKYC_okayBtn} =  xpath=//button[@class='button-primary b-confirm__command-two']