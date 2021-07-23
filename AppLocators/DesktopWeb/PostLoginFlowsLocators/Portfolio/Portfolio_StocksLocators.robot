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
${e_portfolio_stocks_trustline_upstox_PWD} =  Kuvera1234!
${e_portfolio_stocks_floor} =  1234
${e_portfolio_stocks_birthplace} =  D000158
${e_portfolio_stocks_name} =  Sintex Plastics Technology Ltd
${e_portfolio_stocks_searchedName} =  Sintex Plastics Technology Ltd (SPTL)
${e_portfolio_stocks_enterUnit} =  1
${e_portfolio_stocks_updateStocks} =  Stocks updated successfully.
# Application Locator 'KU_<locatorName>'
# Stocks Portfolio Navigation Page
${KU_W_portfolio_stocks_title} =  xpath=(//p[@class='tile-opt-label'])[3]
${KU_W_portfolio_stocks_subtitle} =  xpath=(//div[@class='tile-opt-sub-label-container'])[3]
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
${KU_W_portfolio_stocks_trustlineFrameID} =  xpath=//iframe[@class='scdk-middle-frame']
${KU_W_portfolio_stocks_importStocksLink} =  xpath=//p[normalize-space()='Import stocks']
${KU_W_portfolio_stocks_importedStocks} =  xpath=//div[@class='b-current-value-tile__value']
${KU_W_portfolio_stocks_manageStocks} =  xpath=//div[@class='b-import-stock']//div[@class='b-manage-fund-d b-portfolio-fund-info__manage-stock-btn__cumulative--hide']//button[@id='d-manage-fund-btn']
${KU_W_portfolio_stocks_selectStocksTitle} =  xpath=//div[contains(text(),'Select a stock to edit')]
${KU_W_portfolio_stocks_searchStocks} =  xpath=//input[@placeholder='Search...']
${KU_W_portfolio_stocks_searchedStocks} =  xpath=//div[@class='b-stock-holdings-row-m__name']
${KU_W_portfolio_stocks_stocksName} =  xpath=//div[contains(text(),'Sintex Plastics Technology Ltd (SPTL)')]
${KU_W_portfolio_stocks_stocksPrice} =  xpath=(//div[@class='b-stock-basic-info__price-info']//span)[1]
${KU_W_portfolio_stocks_stocksPer} =  xpath=(//div[@class='b-stock-basic-info__price-info']//span)[4]
${KU_W_portfolio_stocks_stocksReturn} =  xpath=//span[normalize-space()='1D']
${KU_W_portfolio_stocks_totalUnits} =  xpath=//span[normalize-space()='Total units']
${KU_W_portfolio_stocks_timestamp} =  xpath=//div[@class='b-stock-basic-info__timestamp']
${KU_W_portfolio_stocks_broker} =  xpath=//div[contains(text(),'Broker')]
${KU_W_portfolio_stocks_modifyLink} =  xpath=//p[normalize-space()='Modify']
${KU_W_portfolio_stocks_brokerUpstox} =  xpath=//div[contains(text(),'Upstox')]
${KU_W_portfolio_stocks_unitsAvailable} =  xpath=//span[contains(text(),'Units available')]
${KU_W_portfolio_stocks_enterNumOfUnits} =  xpath=//div[contains(text(),'Enter number of units')]
${KU_W_portfolio_stocks_changeLink} =  xpath=//span[normalize-space()='Change']
${KU_W_portfolio_stocks_changeBrokerTitle} =  xpath=//div[contains(text(),'Change Broker')]
${KU_W_portfolio_stocks_yourBrokers} =  xpath=//div[contains(text(),'Your brokers')]
${KU_W_portfolio_stocks_yourBrokersName} =  xpath=(//div[contains(text(),'Upstox')])[2]
${KU_W_portfolio_stocks_yourBrokersImg} =  xpath=//div[@class='b-small-case-broker-select__tile--img']//img
${KU_W_portfolio_stocks_backImg} =  xpath=//div[@class='b-stock-broker__back-container']//img
${KU_W_portfolio_stocks_enterUnit} =  xpath=//input[@placeholder='0']
${KU_W_portfolio_stocks_name} =  xpath=(//div[@class='b-stock-row__stock-text b-stock-row__name'])[2]
${KU_W_portfolio_stocks_stock} =  xpath=(//div[contains(text(),'Stock')])[2]
${KU_W_portfolio_stocks_numOfUnits} =  xpath=//div[contains(text(),'No. of units')]
${KU_W_portfolio_stocks_stockInfo} =  xpath=(//div[@class='stock-basic-details__info']//div)[1]
${KU_W_portfolio_stocks_currentPrice} =  xpath=//div[@class='stock-basic-details__current-price-label']
${KU_W_portfolio_stocks_editLink} =  xpath=//span[@class='stock-basic-details__edit-text']
${KU_W_portfolio_stocks_moreDetsIcon} =  xpath=//img[@class='stock-basic-details__more-icon']
${KU_W_portfolio_stocks_buyStocksTitle} =  xpath=//div[contains(text(),'Buy stocks')]
${KU_W_portfolio_stocks_tagGoalsLink} =  xpath=//span[normalize-space()='Tag goals.']
${KU_W_portfolio_stocks_goalsAllocationTab} =  xpath=//div[contains(text(),'Goal allocations')]
${KU_W_portfolio_stocks_brokersTab} =  xpath=//div[contains(text(),'Brokers')]
${KU_W_portfolio_stocks_brokersRow} =  xpath=//div[@class='b-stock-brokers-row__content']
${KU_W_portfolio_stocks_notAllocatedGoals} =  xpath=//span[@class='b-stock-goals__para--desktop']//span[contains(text(),'This stock is not allocated towards any of your go')]
${KU_W_portfolio_stocks_valueColumn} =  xpath=//div[@class='b-stock-holding-headings-d__column-heading b-stock-holding-headings-d__value-column']