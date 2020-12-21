*** Variables *** 
# Application Expected Values 'e_<variableName>'
# US Stocks
${e_invest_USStocks_screen} =  Diversify with US stocks
${e_invest_USStocks_healthcareFilter} =  Healthcare
${e_invest_USStocks_transactStocksTitle} =  Transact stocks
${e_invest_USStocks_transactStocksSubTitle} =  Buy an entire stock or a fraction. Powered By
${e_invest_USStocks_buyBtn} =  Buy 
${e_invest_USStocks_importHoldingsBtn} =  Import holdings
${e_invest_USStocks_companyHeader_about} =  About      
# Application Locator 'KU_<locatorName>'
# US Stocks Navigation Page
# US Stocks

${KU_W_invest_USStocksScreen} =  xpath=//div[@class='b-introduction__detail__title1']
${KU_W_invest_USStocks_exploreBtn} =  xpath=//button[@class='button-primary b-introduction__btn__explore']
${KU_W_invest_USStocks_sortYear} =  xpath=//div[@class='standard-select-container b-fund-sort-wrapper b-action-bar__sort__item']
${KU_W_invest_USStocks_filteredTag} =  xpath=//div[contains(@class,'b-stock-item__col1__meta-info')]
${KU_W_invest_USStocks_stockPrice} =  xpath=//div[contains(@class,'b-stock-item__col2__price-val')]
${KU_W_invest_USStocks_defaultFilter} =  xpath=//div[@class='b-action-bar__filter__item__sector__label']
${KU_W_invest_USStocks_healthcareFilter} =  xpath=//div[contains(text(),'Healthcare')]
${KU_W_invest_USStocks_clearAll} =  xpath=//div[@class='b-action-bar__filter__header__btn-clear']
${KU_W_invest_USStocks_searchField} =  xpath=//input[@class='b-action-bar__search__item__text-field']
${KU_W_invest_USStocks_USStockLink} =  xpath=(//div[@class='b-stock-items__content'])/div//a[1]
${KU_W_invest_USStocks_stockName} =  xpath=//div[@class='b-us-stock-basic-info__header--name']
${KU_W_invest_USStocks_marketPrice} =  xpath=//div[@class='b-us-stock-basic-info__price']
${KU_W_invest_USStocks_change%} =  xpath=//div[contains(@class,'b-us-stock-basic-info__return b-us-stock-basic-info')]
${KU_W_invest_USStocks_timestamp} =  xpath=//div[@class='b-us-stock-basic-info__timestamp']
${KU_W_invest_USStocks_gainloss%} =  xpath=//div[contains(@class,'b-us-stock-performance-chart__xirr')]
${KU_W_invest_USStocks_shareIcon} =  xpath=//div[@class='b-us-stock-basic-info__share-icon--desktop']
${KU_W_invest_USStocks_pdfIcon} =  xpath=//div[@class='b-us-stock-basic-info__pdf-icon--mobile']
${KU_W_invest_USStocks_watchlistIcon} =  xpath=(//img[@class='b-us-stock-basic-info__action-icons'])[4]
${KU_W_invest_USStocks_transactStocksTitle} =  xpath=//div[@class='b-us-stock-widget__content-text']
${KU_W_invest_USStocks_transactStocksSubTitle} =  xpath=//div[@class='b-us-stock-widget__content-subtext']
${KU_W_invest_USStocks_vestedLogo} =  xpath=//img[@class='b-us-stock-widget__vested-logo']
${KU_W_invest_USStocks_buyBtn} =  xpath=//div[@class='b-us-stock-widget__content--btn-container']//button[1]
${KU_W_invest_USStocks_importHoldingsBtn} =  xpath=//div[@class='b-us-stock-widget__content--btn-container']//button[2]
${KU_W_invest_USStocks_performanceChart} =  xpath=//div[@class='highcharts-container b-bar-line']
${KU_W_invest_USStocks_companyHeader} =  xpath=//div[@class='b-us-stock-about-heading']
${KU_W_invest_USStocks_companyHeader_about} =  xpath=//div[@class='b-us-stock-about-heading']//span[1]
${KU_W_invest_USStocks_companySubHeader} =  xpath=//div[@class='b-us-stock-about-container']
${KU_W_invest_USStocks_addBtn} =  xpath=//div[@class='b-us-stock-compare-m__add-label']
${KU_W_invest_USStocks_addStocksPopupHeader} =  xpath=//div[@class='b-us-stock-add-stock-m__heading']
${KU_W_invest_USStocks_closePopup} =  xpath=//div[@class='b-us-stock-add-stock-m__close-container']