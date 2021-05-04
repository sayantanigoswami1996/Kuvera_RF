*** Variables *** 
${e_invest_mf_lumpsumAmountLabel} =  Lumpsum amount
${e_invest_mf_sipAmountLabel} =  SIP amount
${e_invest_mf_defaultSort} =  1Y
${e_invest_mf_sipAmount} =  6000
${e_invest_mf_lumpsumAmount} =  50000
${e_invest_mf_addFundPopupHeader} =  Search and add fund
${e_invest_mf_bannerText} =  Import your MFs and switch to Direct. Start saving commissions.
${e_invest_mf_importExternalFunds} =  Import external mutual funds
${e_invest_mf_notification} =  13 April is a Non-Business day for debt funds. Orders placed in debt funds on 13 April will be processed on next business day - 15 April
${e_invest_mf_SIPAmt} =  6,000
${e_invest_mf_rupeeSymbol} =  ₹
${e_invest_mf_zeroSIP_payNow} =  0
${e_invest_mf_lumpsumAmt} =  50,000
${e_invest_mf_lumpsumAndSIPMinAmt} =  50,500
${e_invest_mf_lumpsumAndSIPAmt} =  56,000
${cutOffTime} =  15
${startTime} =  9      
# Application Locator 'KU_<locatorName>'
# Mutual Fund Navigation Page
# Mutual Fund
${KU_W_invest_mf_fundName} =  xpath=(//div[@class='b-mutual-funds-explore__name-wrapper'])/a[1]
${KU_W_invest_mf_searchBar} =  xpath=//*[@class='b-search-fund__text-field']
${KU_W_invest_mf_growthDividendButton} =  xpath=//div[@class='b-standard-switch__label']
${KU_W_invest_mf_watchlistButton} =  xpath=//div[@class='b-mf-basic-info__watchlist']
${KU_W_invest_mf_searchFundsLabel} =  xpath=//div[contains(text(),'Search funds')]
${KU_W_invest_mf_sortByLabel} =  xpath=//div[normalize-space()='Sort by']
${KU_W_invest_mf_defaultSort} =  xpath=//div[@class='b-sort-fund__bar']
${KU_W_invest_mf_filterLabel} =  xpath=//span[contains(text(),'Filter')]
# Details Page
# Title Section
${KU_W_invest_mf_title} =  xpath=//*[@class='b-mf-basic-info__header--fund-name']
${KU_W_invest_mf_navValue} =  xpath=//*[@class='b-mf-basic-info__nav-value']
${KU_W_invest_mf_navValueInfoIcon} =  xpath=(//div[@class='v-popover b-custom-info-icon__popover'])[1]
${KU_W_invest_mf_aum} =  xpath=(//*[@class='b-mf-basic-info__content-key'])[1]
${KU_W_invest_mf_aumInfoIcon} =  xpath=(//div[@class='v-popover b-custom-info-icon__popover'])[2]
${KU_W_invest_mf_aumValue} =  xpath=(//*[@class='b-mf-basic-info__content-value'])[1]
${KU_W_invest_mf_ter} =  xpath=(//*[@class='b-mf-basic-info__content-key'])[2]
${KU_W_invest_mf_terInfoIcon} =  xpath=(//div[@class='v-popover b-custom-info-icon__popover'])[3]
${KU_W_invest_mf_terValue} =  xpath=(//*[@class='b-mf-basic-info__content-value'])[2]
${KU_W_invest_mf_risk} =  xpath=(//*[@class='b-mf-basic-info__content-key'])[3]
${KU_W_invest_mf_riskInfoIcon} =  xpath=(//div[@class='v-popover b-custom-info-icon__popover'])[4]
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
# Postlogin - Order Summary
${KU_W_invest_mf_dateOnOrderSIP} =  xpath=//div[@class='b-date-text'][normalize-space()='8']
${KU_W_invest_mf_openDrpdownImg} =  xpath=//div[@class='k-cursor--pointer']//img
${KU_W_invest_mf_newFolioLink} =  xpath=//div[@class='b-cart-tile__folio--number k-cursor--pointer']
${KU_W_invest_mf_newFolioMsg} =  xpath=//div[contains(text(),'Choose your folio for')]
${KU_W_invest_mf_newFolioNumLabel} =  xpath=//div[.='Folio number']
${KU_W_invest_mf_newFolioAmtLabel} =  xpath=//div[contains(text(),'Amount')]
${KU_W_invest_mf_notification} =  xpath=//div[@class='ku-app app-standard-notification b-cart__notification']
${KU_W_invest_mf_createNewLabel} =  xpath=//span[normalize-space()='Create new']
${KU_W_invest_mf_continueFolio} =  xpath=//button[@class='btn in-btn hidden-xs']
${KU_W_invest_mf_accBox} =  xpath=//div[@class='tile-option-container']
${KU_W_invest_mf_oneClickBox} =  xpath=//div[@id='create']//img
${KU_W_invest_mf_selectBox} =  xpath=//button[normalize-space()='Select']
${KU_W_invest_mf_setOneClickBtn} =  xpath=//div[text()='Set OneClick']
${KU_W_invest_mf_continueToOrderBtn} =  xpath=//div[text()='Continue to order']
${KU_W_invest_mf_placeOrdersBtn} =  xpath=//button[normalize-space()='Place Orders']
${KU_W_invest_mf_continueBtn} =  xpath=//button[normalize-space()='Continue Payment']
${KU_W_invest_mf_orderSummary} =  xpath=//h1[normalize-space()='Order Summary']
${KU_W_invest_mf_cartTitle} =  xpath=//div[contains(text(),'MF cart')]
${KU_W_invest_mf_defaultDate} =  xpath=//div[@class='b-fund-type-tile__next-sip']
${KU_W_invest_mf_addLumpsumLabel} =  xpath=//div[contains(text(),'+ Add lumpsum')]
${KU_W_invest_mf_fundN} =  xpath=//a[normalize-space()='Axis Bluechip Growth Direct Plan']
${KU_W_invest_mf_SIP_lumpAmt} =  xpath=(//div[@class='b-input-currency']//div)[1]
${KU_W_invest_mf_scheduledSIPLabel} =  xpath=//div[normalize-space()='Scheduled SIP(s)']
${KU_W_invest_mf_scheduledSIPAmt} =  xpath=(//div[@class='cart-total__amount'])[1]
${KU_W_invest_mf_payNow} =  xpath=//div[normalize-space()='Pay now']
${KU_W_invest_mf_minLumpsumVal} =  xpath=//div[@class='b-mf-widget__minimum']
${KU_W_invest_mf_minSIPVal} =  xpath=(//div[@class='b-mf-widget__minimum'])[1]
${KU_W_invest_mf_lumpsum_SIPVal} =  xpath=(//div[@class='b-input-currency']//div)[2]
${KU_W_invest_mf_payAmt} =  xpath=(//div[@class='cart-total__amount'])[2]
${KU_W_invest_mf_lumpsumDelIcon} =  xpath=(//div[@class='b-fund-type-tile__remove k-cursor--pointer'])[2]
${KU_W_invest_mf_SIPDelIcon} =  xpath=(//div[@class='b-fund-type-tile__remove k-cursor--pointer'])[1]
${KU_W_invest_mf_delFund} =  xpath=//div[contains(text(),'Delete fund')]
${KU_W_invest_mf_delFundDesc} =  xpath=//div[contains(text(),'Are you sure you wish to delete this order from your cart?')]
${KU_W_invest_mf_SIPInputAmt} =  xpath=(//div[@class='b-mf-widget__input-text-field-container'])[1]
${KU_W_invest_mf_SIPAmtOnPayment1} =  xpath=//div[@class='col-xs-3 col-sm-3 order-amount']
${KU_W_invest_mf_SIPAmtOnPayment2} =  xpath=(//div[@class='col-xs-3 col-sm-3 order-amount'])[2]
${KU_W_invest_mf_totalAmtOnPayment} =  xpath=(//div[@class='col-xs-3'])[2]
${KU_W_invest_mf_SIPAmtOnSelectMode} =  xpath=(//div[@class='d-payment-breakup__info d-payment-breakup__info--base']//div)[2]
${KU_W_invest_mf_addSIPLabel} =  xpath=//div[contains(text(),'+ Add SIP')]
${KU_W_invest_mf_payNowToolTip} =  xpath=//img[@class='k-cursor--pointer b-k-info-tooltip']
${KU_W_invest_mf_2FANotification} =  xpath=//p[@class='sub-title']
# Postlogn - Payment Page
${KU_W_invest_mf_offlineModeActive} =  xpath=//strong[normalize-space()='Offline Mode Active:']
${KU_W_invest_mf_orderPlacedMsg} =  xpath=//div[@class='row']//div[contains(text(),' Orders placed now will be processed on/as orders')]
# Postlogin - MF Listing Page
${KU_W_invest_mf_bannerText} =  xpath=//span[@class='b-banner-text']
${KU_W_invest_mf_importNow} =  xpath=//span[text()='Import now >']
${KU_W_invest_mf_importExternalFunds} =  xpath=//div[@class='b-import-portfolio__get-start__label']
${KU_W_invest_mf_categoryBox} =  xpath=(//div[@class='b-filter-fund__box'])[1]
${KU_W_invest_mf_subcategoryBox} =  xpath=(//div[@class='b-filter-fund__box'])[2]
${KU_W_invest_mf_categoryName} =  xpath=(//div[@class='b-mutual-funds-explore__fund-row-industry'])[1]
${KU_W_invest_mf_subcategoryName} =  xpath=(//div[@class='b-mutual-funds-explore__fund-row-content-industry-wrapper']//div)[6]
${KU_W_invest_mf_SIPDeleteIcon} =  xpath=//div[@class='row sip']//img
${KU_W_invest_mf_lumpsumDeleteIcon} =  xpath=//div[@class='row lumpsum']//img
# Postlogin - In Process Tab
${KU_W_invest_mf_inProcessTab} =  xpath=//div[normalize-space()='In process']
${KU_W_invest_mf_inProcessOrders} =  xpath=//h1[normalize-space()='In process orders']
${KU_W_invest_mf_processOrderRow} =  xpath=(//div[@class='b-order-row order-status__row'])[1]

