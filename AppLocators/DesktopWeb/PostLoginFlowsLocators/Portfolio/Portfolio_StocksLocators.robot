*** Variables *** 
# Application Expected Values 'e_<variableName>'              
${e_portfolio_stocks_subTitle} =  Explore, invest & track your stocks                               
${e_portfolio_stocks_allStocksText} =   All stocks     
${e_portfolio_stocks_updatePANDesc} =  A KYC compliant PAN is required to import your holdings so we can correctly map them against your account.
${e_portfolio_stocks_zerodhaUserID} =  ZH0191
${e_portfolio_stocks_brokerPWD} =  Kuvera@1234
${e_portfolio_stocks_zerodhaPIN} =  130893
${e_portfolio_stocks_upstokID} =  JR3130
${e_portfolio_stocks_upstokYOB} =  1995
${e_portfolio_stocks_aliceID} =  184127
${e_portfolio_stocks_trustlineID} =  D000158
${e_portfolio_stocks_floor} =  D000158
${e_portfolio_stocks_birthplace} =  D000158

# Application Locator 'KU_<locatorName>'
# Stocks Portfolio Navigation Page
${KU_W_portfolio_stocks_title} =  xpath=(//p[@class='tile-opt-label'])[2]
${KU_W_portfolio_stocks_subtitle} =  xpath=(//div[@class='tile-opt-sub-label-container'])[2]
${KU_W_portfolio_stocks_exploreStocks} =  xpath=//p[normalize-space()='Explore Stocks']
${KU_W_portfolio_stocks_exploreStocksDesc} =  xpath=//p[normalize-space()='Browse and invest in your favourite stocks.']
${KU_W_portfolio_stocks_importStocks} =  xpath=//p[normalize-space()='Import stocks']
${KU_W_portfolio_stocks_importStocksDesc} =  xpath=//p[contains(text(),'Import stocks you already own and manage them on K')]
${KU_W_portfolio_stocks_allStocks} =  xpath=//div[@class='b-stocks-explore__tab_item b-stocks-explore__tab--selected']
${KU_W_portfolio_stocks_updatePANDesc} =  xpath=//div[@class='b-update-pan__para']
${KU_W_portfolio_stocks_updatePANField} =  xpath=//div[@class='b-update-pan__input-box-wrapper']
${KU_W_portfolio_stocks_updatePANClose} =  xpath=//img[@class='b-update-pan__close']
${KU_W_portfolio_stocks_stockPopupClose} =  xpath=//div[@class='b-stock-options-close']//img
${KU_W_portfolio_stocks_zerodhaBroker} =  xpath=(//div[@class='b-small-case-broker-select__tile--img'])[2]
${KU_W_portfolio_stocks_zerodhaUserID} =  xpath=//input[@id='userid']
${KU_W_portfolio_stocks_brokerPWD} =  xpath=//input[@id='password']
${KU_W_portfolio_stocks_zerodhaPIN} =  xpath=//input[@id='pin']
${KU_W_portfolio_stocks_importSuccessful} =  xpath=//h1[normalize-space()='Import successful']
${KU_W_portfolio_stocks_upstok} =  xpath=(//div[@class='b-small-case-broker-select__tile--img'])[4]
${KU_W_portfolio_stocks_upstokID} =  xpath=//input[@id='name']
${KU_W_portfolio_stocks_upstokYOB} =  xpath=//input[@id='password2fa']
${KU_W_portfolio_stocks_aliceBlue} =  xpath=(//div[@class='b-small-case-broker-select__tile--img'])[1]
${KU_W_portfolio_stocks_clickToBtn} =  xpath=//a[@id='click-to-continue']
${KU_W_portfolio_stocks_alice_trustlineID} =  xpath=//input[@placeholder='Client ID']
${KU_W_portfolio_stocks_alice_trustlinePWD} =  xpath=//input[@placeholder='Password']
${KU_W_portfolio_stocks_trustline} =  xpath=(//div[@class='b-small-case-broker-select__tile--img'])[3]
${KU_W_portfolio_stocks_floor} =  xpath=(//input[@type='password'])[1]
${KU_W_portfolio_stocks_birthplace} =  xpath=(//input[@type='password'])[2]