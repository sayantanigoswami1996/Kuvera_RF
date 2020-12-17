*** Variables *** 
# Application Expected Values 'e_<variableName>'
# Stocks
${e_invest_stocks_screenLabel} =  Search stocks
${e_invest_stocks_sortYear} =  1Y
${e_invest_stocks_defaultFilter} =  Sector               
${e_invest_stocks_basicMaterialFilter} =  Basic Materials
${e_invest_stocks_searchFund} =  Dha
${e_invest_stocks_randomSearchFund} =  Fund123
${e_invest_stocks_buyStocksBtn} =  Buy stocks
                


# Application Locator 'KU_<locatorName>'
# Stocks Navigation Page
# Stocks
${KU_W_invest_stocks_searchLabel} =  xpath=(//div[@class='b-explore-stock__action-title'])[1]
${KU_W_invest_stocks_searchBar} =  xpath=//div[@class='b-search-stock__bar']
${KU_W_invest_stocks_sortLabel} =  xpath=(//div[@class='b-explore-stock__action-title'])[2]
${KU_W_invest_stocks_sortYear} =  xpath=//div[@class='standard-select-container b-fund-sort-wrapper b-stock-holdings-row-d__sort-by']
${KU_W_invest_stocks_fundPrice} =  xpath=(//div[@class='b-stocks-explore__content-key-value-wrapper'])[1]
${KU_W_invest_stocks_filteredTag} =  xpath=(//div[@class='b-stocks-explore__stock-row-content-industry-wrapper'])[1]
${KU_W_invest_stocks_fundSortVal1D} =  xpath=(//div[@class='b-stocks-explore__content-info-key'])[5]
${KU_W_invest_stocks_fundSortVal1Y} =  xpath=(//div[@class='b-stocks-explore__content-info-key'])[6]
${KU_W_invest_stocks_fundSortMarketCap} =  xpath=(//div[@class='b-stocks-explore__content-info-key '])[2]
${KU_W_invest_stocks_defaultFilter} =  xpath=//div[@class='b-filter-stock__box-sector']
${KU_W_invest_stocks_basicMaterialFilter} =  xpath=//div[contains(text(),'Basic Materials')]
${KU_W_invest_stocks_clearAll} =  xpath=//div[@class='b-explore-stock__clear-all']
${KU_W_invest_stocks_stockName} =  xpath=(//div[@class='b-stocks-explore__name-wrapper'])[1]
${KU_W_invest_stocks_stockLink} =  xpath=(//a[@class='b-stocks-explore__content-name '])[1]
${KU_W_invest_stocks_clearSearchItem} =  xpath=//div[@class='b-search-stock__clear']
${KU_W_invest_stocks_searchField} =  xpath=//input[@class='b-search-stock__text-field']
${KU_W_invest_stocks_noSearchResult} =  xpath=//div[@class='b-stocks-search-no-results-found--text disable-browser-text-select']
${KU_W_invest_stocks_noSearchResultImg} =  xpath=//img[@class='b-stocks-search-no-results-found--img']
${KU_W_invest_stocks_exploreTags} =  xpath=//div[@class='b-explore-tags__container']
${KU_W_invest_stocks_exploreTagLink1} =  xpath=(//a[@class='b-app-standard-chip disable-browser-text-select b-explore-tags__chip'])[1]
${KU_W_invest_stocks_exploreTagLink2} =  xpath=(//a[@class='b-app-standard-chip disable-browser-text-select b-explore-tags__chip'])[2]
${KU_W_invest_stocks_currentMarketPrice} =  xpath=//div[@class='b-stocks-basic-info__price']
${KU_W_invest_stocks_change%} =  xpath=//div[@class='b-stocks-basic-info__return b-stocks-basic-info__return--positive']
${KU_W_invest_stocks_timeStamp} =  xpath=//div[@class='b-stocks-basic-info__timestamp']
${KU_W_invest_stocks_currentGainLoss%} =  xpath=//div[@class='b-stock-performance-chart__xirr positive-value']
${KU_W_invest_stocks_shareIcon} =  xpath=//div[@class='b-stocks-basic-info__share-icon--mobile']
${KU_W_invest_stocks_pdfIcon} =  xpath=(//img[@class='b-stocks-basic-info__action-icons'])[3]
${KU_W_invest_stocks_watchlistIcon} =  xpath=(//img[@class='b-stocks-basic-info__action-icons'])[4]
${KU_W_invest_stocks_buyStocksBtn} =  xpath=//div[@class='b-stocks-widget__content--button']
${KU_W_invest_stocks_performanceChart} =  xpath=(//div[@class='highcharts-container '])[1]
${KU_W_invest_stocks_performancePeriod} =  xpath=//div[@class='b-period-option_wrapper disable-browser-text-select']
${KU_W_invest_stocks_periodList} =  xpath=(//div[contains(@class,'b-period-option_item')])
${KU_W_invest_stocksDetails_stockName} =  xpath=//div[@class='b-stocks-basic-info__header--name']