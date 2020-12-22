*** Variables *** 

${e_invest_mf_lumpsumAmountLabel} =  Lumpsum amount
${e_invest_mf_sipAmountLabel} =  SIP amount
${e_invest_mf_sipAmount} =  6000
${e_invest_mf_lumpsumAmount} =  50000
${e_invest_mf_addFundPopupHeader} =  Search and add fund

# Application Locator 'KU_<locatorName>'
# Mutual Fund Navigation Page
# Mutual Fund
${KU_W_invest_mf_fundName} =  xpath=(//div[@class='b-mutual-funds-explore__name-wrapper'])/a[1]
${KU_W_invest_mf_searchBar} =  xpath=//*[@class='b-search-fund__text-field']
${KU_W_invest_mf_growthDividendButton} =  xpath=//div[@class='b-standard-switch__label']
${KU_W_invest_mf_watchlistButton} =  xpath=//div[@class='b-mf-basic-info__watchlist']
# Details Page
# Title Section
${KU_W_invest_mf_title} =  xpath=//*[@class='b-mf-basic-info__header--fund-name']
${KU_W_invest_mf_navValue} =  xpath=//*[@class='b-mf-basic-info__nav-value']
${KU_W_invest_mf_navValueInfoIcon} =  xpath=//*[@class='b-mf-basic-info__nav-value']
${KU_W_invest_mf_aum} =  xpath=(//*[@class='b-mf-basic-info__content-key'])[1]
${KU_W_invest_mf_aumInfoIcon} =  xpath=(//*[@class='b-mf-basic-info__popup-container'])[1]
${KU_W_invest_mf_aumValue} =  xpath=(//*[@class='b-mf-basic-info__content-value'])[1]
${KU_W_invest_mf_ter} =  xpath=(//*[@class='b-mf-basic-info__content-key'])[2]
${KU_W_invest_mf_terInfoIcon} =  xpath=(//*[@class='b-mf-basic-info__popup-container'])[2]
${KU_W_invest_mf_terValue} =  xpath=(//*[@class='b-mf-basic-info__content-value'])[2]
${KU_W_invest_mf_risk} =  xpath=(//*[@class='b-mf-basic-info__content-key'])[3]
${KU_W_invest_mf_riskInfoIcon} =  xpath=(//*[@class='b-mf-basic-info__popup-container'])[3]
${KU_W_invest_mf_riskValue} =  xpath=(//*[@class='b-mf-basic-info__content-value'])[3]
# MF Invest Now widget
${KU_W_invest_mf_widgetHeader} =  xpath=//*[@class='b-mf-widget__header']
${KU_W_invest_mf_sipAmountLabel} =  xpath=(//*[@class='b-mf-widget__sip-sub-header'])[1]
${KU_W_invest_mf_sipAmountTxt} =  xpath=//input[@name='sip-amount']
${KU_W_invest_mf_lumpsumAmountLabel} =  xpath=(//*[@class='b-mf-widget__sip-sub-header'])[2]
${KU_W_invest_mf_lumpsumAmountTxt} =  xpath=//input[@name='one-time-lumpsum']
${KU_W_invest_mf_investNowButton} =  xpath=//button[@class='button-primary b-mf-widget__button']
${KU_W_invest_mf_addToCartButton} =  xpath=//button[@class='button-primary b-mf-widget__add-to-cart b-mf-widget__button']
# Graph Section
${KU_W_invest_mf_performaceCart} =  id=container-chart
${KU_W_invest_mf_pc_durationsList}  =  xpath=//*[@class='b-mf-performance-chart__select']
# Past Performace
${KU_W_invest_mf_compareTitle} =  xpath=//*[@class='b-mf-compare__title']
${KU_W_invest_mf_compareTableContent} =  xpath=//*[@class='b-app-standard-table']
${KU_W_invest_mf_tableHeader} =  xpath=(//*[@class='b-app-standard-table__column-header'])[5]
${KU_W_invest_mf_addFundBtn} =  xpath=//*[@class='b-mf-compare-m__add-label']
${KU_W_invest_mf_addFundPopupHeader} =  xpath=//*[@class='b-add-mf-m__heading']
${KU_W_invest_mf_addFundPopupCloseBtn} =  xpath=//*[@class='b-add-mf-m__close-container']
# Past Performace
${KU_W_invest_mf_performanceHeading} =  xpath=//*[@class='b-mf-past-performance__heading']
${KU_W_invest_mf_performanceNumField} =  xpath=//*[@class='b-mf-past-performance__input-container__num-field-container']
${KU_W_invest_mf_performanceDuration1Y} =  xpath=//*[@class='b-mf-past-performance__duration-container__tile']/div[1]
${KU_W_invest_mf_performanceDuration3Y} =  xpath=//*[@class='b-mf-past-performance__duration-container__tile']/div[2]
${KU_W_invest_mf_performanceDurationAll} =  xpath=//*[@class='b-mf-past-performance__duration-container__tile']/div[3]
${KU_W_invest_mf_seeFundHoldings} =  xpath=//*[@class='b-mf-holdings__heading']
${KU_W_invest_mf_topHoldings} =  xpath=//*[@class='b-mf-institutional-holders__heading']
${KU_W_invest_mf_holdingsTable} =  xpath=//*[@class='b-mf-institutional-holders__table']
${KU_W_invest_mf_otherInfo} =  xpath=//*[@class='b-mf-other-info__heading']
${KU_W_invest_mf_otherInfoContent} =  xpath=//*[@class='b-mf-other-info__container']
${KU_W_invest_mf_exitLoad} =  xpath=//*[@class='b-mf-other-info__exit-load']
${KU_W_invest_mf_exitLoadInfo} =  xpath=//*[@class='b-mf-other-info__value-wrapper']/div
${KU_W_invest_mf_fundObjectiveLabel} =  xpath=//*[@class='b-mf-other-info__key']
${KU_W_invest_mf_fundObjectiveValue} =  xpath=//*[@class='b-mf-other-info__value-objective']
${KU_W_invest_mf_fundManager} =  xpath=//*[@class='b-mf-other-info__fund-manager']
${KU_W_invest_mf_fundOfferDocumentLink} =  xpath=//*[@class='b-mf-other-info__img--link']
${KU_W_invest_mf_AllFundsLink} =  xpath=(//*[@class='b-mf-other-info__img--link'])[2]