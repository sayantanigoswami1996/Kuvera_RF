*** Variables *** 

# Application Locator 'KU_<locatorName>'
# Mutual Fund Navigation Page
# Mutual Fund
${KU_W_invest_mf_fund1} =  xpath=(//div[@class='b-mutual-funds-explore__name-wrapper'])/a[1]
# Details Page
# Title Section
${KU_W_invest_title} =  xpath=//*[@class='b-mf-basic-info__header--fund-name']
${KU_W_invest_navValue} =  xpath=//*[@class='b-mf-basic-info__nav-value']
${KU_W_invest_navValueInfoIcon} =  xpath=//*[@class='b-mf-basic-info__nav-value']
${KU_W_invest_aum} =  xpath=(//*[@class='b-mf-basic-info__content-key'])[1]
${KU_W_invest_aumInfoIcon} =  xpath=(//*[@class='b-mf-basic-info__popup-container'])[1]
${KU_W_invest_aumValue} =  xpath=(//*[@class='b-mf-basic-info__content-value'])[1]
${KU_W_invest_ter} =  xpath=(//*[@class='b-mf-basic-info__content-key'])[2]
${KU_W_invest_terInfoIcon} =  xpath=(//*[@class='b-mf-basic-info__popup-container'])[2]
${KU_W_invest_terValue} =  xpath=(//*[@class='b-mf-basic-info__content-value'])[2]
${KU_W_invest_risk} =  xpath=(//*[@class='b-mf-basic-info__content-key'])[3]
${KU_W_invest_riskInfoIcon} =  xpath=(//*[@class='b-mf-basic-info__popup-container'])[3]
${KU_W_invest_riskValue} =  xpath=(//*[@class='b-mf-basic-info__content-value'])[3]
# MF Invest Now widget
${KU_W_invest_widgetHeader} =  xpath=//*[@class='b-mf-widget__header']
${KU_W_invest_sipAmountLabel} =  xpath=(//*[@class='b-mf-widget__sip-sub-header'])[1]
${KU_W_invest_sipAmountTxt} =  xpath=//input[@name='sip-amount']
${KU_W_invest_lumpsumAmountLabel} =  xpath=(//*[@class='b-mf-widget__sip-sub-header'])[2]
${KU_W_invest_lumpsumAmountTxt} =  xpath=//input[@name='one-time-lumpsum']
${KU_W_invest_investNowButton} =  xpath=//button[@class='button-primary b-mf-widget__button']
${KU_W_invest_addToCartButton} =  xpath=//button[@class='button-primary b-mf-widget__add-to-cart b-mf-widget__button']
# Graph Section
${KU_W_invest_performaceCart} =  id=container-chart
${KU_W_invest_pc_durationsList}  =  xpath=//*[@class='b-mf-performance-chart__select']
# Past Performace
${KU_W_invest_compareTitle} =  xpath=//*[@class='b-mf-compare__title']
${KU_W_invest_compareTableContent} =  xpath=//*[@class='b-app-standard-table']
# Past Performace
${KU_W_invest_performanceHeading} =  xpath=//*[@class='b-mf-past-performance__heading']
${KU_W_invest_performanceNumField} =  xpath=//*[@class='b-mf-past-performance__input-container__num-field-container']
${KU_W_invest_performanceDuration1Y} =  xpath=//*[@class='b-mf-past-performance__duration-container__tile']/div[1]
${KU_W_invest_performanceDuration3Y} =  xpath=//*[@class='b-mf-past-performance__duration-container__tile']/div[2]
${KU_W_invest_performanceDurationAll} =  xpath=//*[@class='b-mf-past-performance__duration-container__tile']/div[3]
${KU_W_invest_seeFundHoldings} =  xpath=//*[@class='b-mf-holdings__heading']
${KU_W_invest_topHoldings} =  xpath=//*[@class='b-mf-institutional-holders__heading']
${KU_W_invest_holdingsTable} =  xpath=//*[@class='b-mf-institutional-holders__table']
${KU_W_invest_otherInfo} =  xpath=//*[@class='b-mf-other-info__heading']
${KU_W_invest_otherInfoContent} =  xpath=//*[@class='b-mf-other-info__container']
${KU_W_invest_exitLoad} =  xpath=//*[@class='b-mf-other-info__exit-load']
${KU_W_invest_exitLoadInfo} =  xpath=//*[@class='b-mf-other-info__value-wrapper']/div
${KU_W_invest_fundObjectiveLabel} =  xpath=//*[@class='b-mf-other-info__key']
${KU_W_invest_fundObjectiveValue} =  xpath=//*[@class='b-mf-other-info__value-objective']
${KU_W_invest_fundManager} =  xpath=//*[@class='b-mf-other-info__fund-manager']
${KU_W_invest_fundOfferDocumentLink} =  xpath=//*[@class='b-mf-other-info__img--link']
${KU_W_invest_AllFundsLink} =  xpath=(//*[@class='b-mf-other-info__img--link'])[2]
${KU_W_invest_mf_widgetHeader} =  xpath=//*[@class='b-mf-widget__header']