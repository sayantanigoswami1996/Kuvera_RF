*** Variables *** 
${e_invest_mf_lumpsumAmountLabel} =  Lumpsum amount
${e_invest_mf_sipAmountLabel} =  SIP amount
${e_invest_mf_defaultSort} =  1Y
${e_invest_mf_sipAmount} =  6000
${e_invest_mf_dividendFundName} =  Tata Digital India IDCW Reinvest Direct Plan
${e_invest_mf_lumpsumAmount} =  20000
${e_invest_mf_addFundPopupHeader} =  Search and add fund
${e_invest_mf_bannerText} =  Import your MFs and switch to Direct. Start saving commissions.
${e_invest_mf_importExternalFunds} =  Import external mutual funds
${e_invest_mf_orderToCartMsg} =  Order added to your cart.
${e_invest_mf_notification} =  13 April is a Non-Business day for debt funds. Orders placed in debt funds on 13 April will be processed on next business day - 15 April
${e_invest_mf_SIPAmt} =  6,000
${e_invest_mf_rupeeSymbol} =  ₹
${e_invest_mf_zeroSIP_payNow} =  0
${e_invest_mf_lumpsumAmt} =  50,000
${e_invest_mf_lumpsumAndSIPMinAmt} =  50,500
${e_invest_mf_lumpsumAndSIPAmt} =  56,000
${e_invest_mf_cutOffTime} =  15
${e_invest_mf_startTime} =  9  
${e_invest_mf_folioType} =  NEW  
${e_invest_mf_type} =  SIP
${e_invest_mf_paymentStatus} =  Approved
${e_invest_mf_paymentMode} =  Net Banking
${e_invest_mf_bankName} =  INDIAN BANK
${e_invest_mf_search_addFund} =  Quant Quantamental Growth Direct Plan
${e_invest_mf_search_addFundToastMsg} =  Quant Quantamental Growth Direct Plan is successfully added to comparison.
${e_invest_mf_search_removeFundToastMsg} =  Quant Quantamental Growth Direct Plan is removed from comparison.
# User With Investment
${e_invest_mf_minSIP_lumpsum} =  10
${e_invest_mf_sipVal_editSIP} =  100
${e_invest_mf_edit_newAmt} =  New Amount
${e_invest_mf_edit_folioNumber} =  Folio Number                  
${e_invest_mf_edit_bank} =  Bank
${e_invest_mf_edit_bankDets} =  HDFC | xxxx5384\nBILL PAY MANDATE                
                
# Application Locator 'KU_<locatorName>'
# Mutual Fund Navigation Page
# Mutual Fund
${KU_W_invest_mf_fundName} =  xpath=(//div[@class='b-mutual-funds-explore__name-wrapper'])/a[1]
${KU_W_invest_mf_searchBar} =  xpath=//*[@class='b-search-fund__text-field']
${KU_W_invest_mf_growthDividendButton} =  xpath=(//div[@class='b-standard-switch__label'])[1]
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
${KU_W_invest_mf_V/STitle} =  xpath=//div[@class='mf-perf-chart-compare__heading']
${KU_W_invest_mf_dropdownIcon} =  xpath=//img[@class='b-filter-mf__dropdown-icon']
${KU_W_invest_mf_niftyGraphDropdownList} =  xpath=//div[@class='b-mf-sector-filter__option']
${KU_W_invest_mf_performanceRateCount} =  xpath=//div[contains(@class,'b-performance-chart__xirr b-performance-chart__xirr')]
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
${KU_W_invest_mf_FDLabel} =  xpath=//div[normalize-space()='Fixed deposit']
${KU_W_invest_mf_FDIntRate} =  xpath=//div[normalize-space()='6.5%']
${KU_W_invest_mf_bankSavingsLabel} =  xpath=//div[normalize-space()='Bank savings']
${KU_W_invest_mf_BSIntRate} =  xpath=//div[normalize-space()='3.5%']
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
${KU_W_invest_mf_confirmOrder} =  xpath=//div[contains(text(),'Confirm order')]
${KU_W_invest_mf_continueBtn} =  xpath=//button[normalize-space()='Continue Payment']
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
${KU_W_invest_mf_SIPDelIcon} =  xpath=(//div[contains(@class,'k-cursor--pointer')]//img)[2]
${KU_W_invest_mf_lumpDelIcon} =  xpath=(//div[contains(@class,'k-cursor--pointer')]//img)[1]
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
${KU_W_invest_mf_importExternalFunds} =  xpath=//div[@class='b-import-portfolio__get-start__label']
${KU_W_invest_mf_categoryBox} =  xpath=(//div[@class='b-filter-fund__box'])[1]
${KU_W_invest_mf_subcategoryBox} =  xpath=(//div[@class='b-filter-fund__box'])[2]
${KU_W_invest_mf_categoryName} =  xpath=(//div[@class='b-mutual-funds-explore__fund-row-industry'])[1]
${KU_W_invest_mf_subcategoryName} =  xpath=(//div[@class='b-mutual-funds-explore__fund-row-content-industry-wrapper']//div)[6]
# Postlogin - In Process Tab
${KU_W_invest_mf_inProcessTab} =  xpath=//div[normalize-space()='In process']
${KU_W_invest_mf_inProcessOrders} =  xpath=//h1[normalize-space()='In process orders']
${KU_W_invest_mf_processOrderRow} =  xpath=(//div[@class='b-order-row order-status__row'])[1]
${KU_W_invest_mf_boughtFundName} =  xpath=//div[@class='b-order-row__title']
${KU_W_invest_mf_folioNumLabel} =  xpath=//div[normalize-space()='Folio no.']
${KU_W_invest_mf_navLabel} =  xpath=//div[normalize-space()='NAV date']
${KU_W_invest_mf_typeLabel} =  xpath=//div[normalize-space()='Type']
${KU_W_invest_mf_amtLabel} =  xpath=//div[normalize-space()='Amount']
${KU_W_invest_mf_triggerTimeLabel} =  xpath=//div[normalize-space()='Trigger time']
${KU_W_invest_mf_payStatusLabel} =  xpath=//div[normalize-space()='Payment Status']
${KU_W_invest_mf_payModeLabel} =  xpath=//div[normalize-space()='Payment Mode']
${KU_W_invest_mf_bankLabel} =  xpath=//div[normalize-space()='Bank']
${KU_W_invest_mf_folioType} =  xpath=(//div[@class='b-order-row__value'])[4]
${KU_W_invest_mf_type} =  xpath=(//div[@class='b-order-row__value'])[6]
${KU_W_invest_mf_amt} =  xpath=(//div[@class='b-order-row__value'])[7]
${KU_W_invest_mf_triggerTime} =  xpath=(//div[@class='b-order-row__value'])[8]
${KU_W_invest_mf_paymentStatus} =  xpath=(//div[@class='b-order-row__value'])[9]
${KU_W_invest_mf_paymentMode} =  xpath=(//div[@class='b-order-row__value'])[10]
${KU_W_invest_mf_bankName} =  xpath=(//div[@class='b-order-row__value'])[11]
${KU_W_invest_mf_navDateMsg} =  xpath=//div[contains(text(),'NAV Date is subject to fund realization')]
# Postlogin - Details Page
${KU_W_invest_mf_search_addFund} =  xpath=//input[@placeholder='Type a fund name']
${KU_W_invest_mf_search_addIcon} =  xpath=//img[@class='b-search-result__add-icon']
${KU_W_invest_mf_search_removeIcon} =  xpath=//a[normalize-space()='Quant Quantamental (G)']/preceding-sibling::img
# Postlogin - SIP ( User With Investment)
${KU_W_invest_mf_SIPs} =  xpath=(//div[@class='b-systematic-stp__details-column'])[1]
${KU_W_invest_mf_funds} =  xpath=(//div[@class='b-systematic-stp__details-column'])[2]
${KU_W_invest_mf_savesmart} =  xpath=(//div[@class='b-systematic-stp__details-column'])[3]
${KU_W_invest_mf_gold} =  xpath=//div[@class='b-systematic-stp__details-column k-pr8-m']
${KU_W_invest_mf_monthlyPayable} =  xpath=(//div[@class='b-systematic-stp__details-column'])[4]
${KU_W_invest_mf_fundGoldSipLabel} =  xpath=(//div[contains(text(),'Funds/Gold (SIPs)')])[1]
${KU_W_invest_mf_SIPAmtLabel} =  xpath=//div[text()='SIP Amount']
${KU_W_invest_mf_SIPAmtDropdown} =  xpath=(//img[@class='b-collapsible-panel__arrow__logo'])[1]
${KU_W_invest_mf_SIPNameList} =  xpath=//div[@class='b-systematics-collapsible-panel--scheme-name']
${KU_W_invest_mf_SIPAmtList} =  xpath=//div[@class='b-systematics-collapsible-panel--amount']
${KU_W_invest_mf_activeSIPTab} =  xpath=//div[@class='b-collapsible-panel b-remove-cursor b-collapsible-panel--expanded b-systematic-collapsible-panel']//div[contains(@class,'b-dynamic-tab-header__item__title b-dynamic-tab-header__item__title--selected')][normalize-space()='Active SIPs']
${KU_W_invest_mf_dateLabel} =  xpath=//div[@class='b-collapsible-panel b-remove-cursor b-collapsible-panel--expanded b-systematic-collapsible-panel']//div[@class='b-systematic-active-sip-details__title'][normalize-space()='Date']
${KU_W_invest_mf_amtLabel} =  xpath=//div[@class='b-collapsible-panel b-remove-cursor b-collapsible-panel--expanded b-systematic-collapsible-panel']//div[@class='b-systematic-active-sip-details__title'][normalize-space()='Amount']
${KU_W_invest_mf_folioLabel} =  xpath=//div[@class='b-collapsible-panel b-remove-cursor b-collapsible-panel--expanded b-systematic-collapsible-panel']//div[@class='b-systematic-active-sip-details__title'][normalize-space()='Folio']
${KU_W_invest_mf_bankLabel} =  xpath=//div[@class='b-collapsible-panel b-remove-cursor b-collapsible-panel--expanded b-systematic-collapsible-panel']//div[@class='b-systematic-active-sip-details__title'][normalize-space()='Bank']
${KU_W_invest_mf_dateVal} =  xpath=(//div[@class='b-systematic-active-sip-details__title--value'])[1]
${KU_W_invest_mf_activeSIPAmt} =  xpath=(//div[@class='b-systematic-active-sip-details__title--value'])[2]
${KU_W_invest_mf_folioVal} =  xpath=(//div[@class='b-systematic-active-sip-details__title--value'])[3]
${KU_W_invest_mf_bankAccName} =  xpath=(//div[@class='b-systematic-active-sip-details__title--value'])[4]
${KU_W_invest_mf_modifyLink} =  xpath=//div[@class='b-collapsible-panel b-remove-cursor b-collapsible-panel--expanded b-systematic-collapsible-panel']//div[contains(text(),'Modify')]
${KU_W_invest_mf_fundDetsLink} =  xpath=//div[@class='b-collapsible-panel b-remove-cursor b-collapsible-panel--expanded b-systematic-collapsible-panel']//span[contains(text(),'Fund Details')]
${KU_W_invest_mf_transactionsLink} =  xpath=//div[@class='b-collapsible-panel b-remove-cursor b-collapsible-panel--expanded b-systematic-collapsible-panel']//div[@class='b-systematics-sip-details__transactions-btn'][normalize-space()='Transactions']
${KU_W_invest_mf_switchLink} =  xpath=//div[@class='b-fund-detail-desktop__action']//button[@class='button-primary customClass'][normalize-space()='Switch']
${KU_W_invest_mf_investMoreLink} =  xpath=//div[@class='b-collapsible-panel b-remove-cursor b-collapsible-panel--expanded b-systematic-collapsible-panel']//div[@class='b-collapsible-panel__content']//div[@class='b-collapsible-panel__content__info']//div[@class='b-systematic-sip-details']//div[@class='b-systematics-sip-details__btn-row']//div//button[@class='button-primary b-systematics-sip-details__invest-btn'][normalize-space()='Invest more']
${KU_W_invest_mf_investMorePopupCloseBtn} =  xpath=//img[@class='hidden-sm hidden-xs']
${KU_W_invest_mf_enterSIPLabel} =  xpath=//div[normalize-space()='ENTER MONTHLY SIP AMOUNT']
${KU_W_invest_mf_enterLumpsumLabel} =  xpath=//div[normalize-space()='ENTER LUMPSUM AMOUNT']
${KU_W_invest_mf_investMore_investBtn} =  xpath=//button[normalize-space()='INVEST NOW']
${KU_W_invest_mf_investMore_minValMsg} =  xpath=//span[contains(text(),'Minimum ₹1000')]
${KU_W_invest_mf_investMore_addToCartBtn} =  xpath=//button[normalize-space()='ADD TO CART']
${KU_W_invest_mf_cannotEditThisSIPTitle} =  xpath=//div[contains(text(),'CANNOT EDIT THIS SIP')]
${KU_W_invest_mf_cannotEdit_skipThisSIPDesc} =  xpath=//div[contains(text(),'SIP Modification is not permitted as next instalment is already queued. Please request the modification')]
${KU_W_invest_mf_editBtn} =  xpath=//div[@class='b-modify-sip-desktop__content__edit']
${KU_W_invest_mf_nipponDropdown} =  xpath=//span[text()='Nippon India Liquid Growth Direct Plan']/ancestor::div[@class='b-collapsible-panel__content__info']/following-sibling::div
${KU_W_invest_mf_pastSIPTab} =  xpath=//div[@class='b-collapsible-panel b-remove-cursor b-collapsible-panel--expanded b-systematic-collapsible-panel']//div[@class='b-dynamic-tab-header__item__title'][normalize-space()='Past SIPs']
${KU_W_invest_mf_noStoppedTitle} =  xpath=//div[@class='b-collapsible-panel b-remove-cursor b-collapsible-panel--expanded b-systematic-collapsible-panel']//div[@class='b-systematic-stopped-sip-details__no-active-sips'][normalize-space()='No stopped SIPs']
${KU_W_invest_mf_stoppedSIPAmt} =  xpath=//div[@class='b-systematic-stopped-sip-details__title'][normalize-space()='Amount']
${KU_W_invest_mf_stoppedSIPFolio} =  xpath=//div[@class='b-systematic-stopped-sip-details__title'][normalize-space()='Folio']
${KU_W_invest_mf_stoppedSIPStartDate} =  xpath=//div[contains(text(),'Start Date')]
${KU_W_invest_mf_stoppedSIPEndDate} =  xpath=//div[contains(text(),'End Date')]
${KU_W_invest_mf_stoppedSIPTable} =  xpath=//div[@class='b-systematic-stopped-sip']
${KU_W_invest_mf_modifyPopupTitle} =  xpath=//div[@class='b-modify-sip-desktop__content__title']
${KU_W_invest_mf_editTitle} =  xpath=//span[normalize-space()='Edit monthly SIP plan']
${KU_W_invest_mf_editSubTitle} =  xpath=//div[contains(text(),'Update your monthly SIP amount, date, folio and Bank A/c according to your convenience.')]
${KU_W_invest_mf_edit_skip_stop_fundName} =  xpath=//div[@class='b-systematic-subheading__edit-sip--text']
${KU_W_invest_mf_edit_enterSIPAmt} =  xpath=//div[contains(text(),'Enter monthly SIP Amount')]
${KU_W_invest_mf_edit_increaseAmtBox} =  xpath=//div[@class='modify-container']//div[2]
${KU_W_invest_mf_edit_SIPDateLabel} =  xpath=//div[contains(text(),'SIP DATE')]
${KU_W_invest_mf_edit_SIPDateDropdown} =  xpath=//div[@class='b-fund-select-date-wrapper']
${KU_W_invest_mf_edit_SIPDate} =  xpath=//div[@class='b-date-text'][normalize-space()='24']
${KU_W_invest_mf_edit_nextInstallmentMsg} =  xpath=//div[contains(text(),'Next instalment is on')]
${KU_W_invest_mf_edit_moreOptions} =  xpath=//span[normalize-space()='More Options']
${KU_W_invest_mf_edit_cannotModifyTitle} =  xpath=//div[contains(text(),'CANNOT MODIFY THIS SIP')]
${KU_W_invest_mf_edit_cannotModifySubTitle} =  xpath=//div[normalize-space()='Your current mandate is not approved. Please select mandate to continue.']
${KU_W_invest_mf_edit_confirmSIPOrder} =  xpath=//div[@class='b-edit-sip__d-heading-title']//span[contains(text(),'Confirm SIP order')]
${KU_W_invest_mf_edit_previousAmt} =  xpath=//div[@class='b-transfer-detail__display-row__past-sip'][normalize-space()='Amount']
${KU_W_invest_mf_edit_newAmt} =  xpath=(//div[@class='b-transfer-detail__display-row__title'])[1]
${KU_W_invest_mf_edit_previousVal} =  xpath=(//div[@class='b-transfer-detail__display-row__past-sip'])[2]
${KU_W_invest_mf_edit_folioNum} =  xpath=(//div[@class='b-transfer-detail__display-row__title'])[2]
${KU_W_invest_mf_edit_bank} =  xpath=(//div[@class='b-transfer-detail__display-row__title'])[3]
${KU_W_invest_mf_edit_sipDateLabelConfirmOrder} =  xpath=(//div[@class='b-transfer-detail__display-row__title'])[4]
${KU_W_invest_mf_edit_skip_stop_otpWarnText} =  xpath=//div[@class='otp-warn otp-text']
${KU_W_invest_mf_edit_newVal} =  xpath=(//div[@class='b-transfer-detail__display-row--text'])[1]
${KU_W_invest_mf_edit_folioVal} =  xpath=(//div[@class='b-transfer-detail__display-row--text'])[2]
${KU_W_invest_mf_edit_bankDets} =  xpath=(//div[@class='b-transfer-detail__display-row--text'])[3]
${KU_W_invest_mf_edit_date} =  xpath=(//div[@class='b-transfer-detail__display-row--text'])[4]
${KU_W_invest_mf_edit_skip_SIPUpdatedTitle} =  xpath=//div[contains(text(),'SIP Updated Successfully!')]
${KU_W_invest_mf_edit_skip_updatedMsg1} =  xpath=//p[contains(text(),"We've updated your SIP in")]
${KU_W_invest_mf_edit_skip_updatedMsg2} =  xpath=//p[contains(text(),'Check the Upcoming SIP(s) section in your SIP dash')]
${KU_W_invest_mf_edit_closeSIP} =  xpath=//img[@class='b-edit-sip__close']
${KU_W_invest_mf_skipBtn} =  xpath=//div[contains(text(),'Skip upcoming instalment')]
${KU_W_invest_mf_skip_cannotSkipTitle} =  xpath=//div[contains(text(),'CANNOT SKIP THIS SIP')]
${KU_W_invest_mf_skip_cannotSkipSubTitle} =  xpath=//div[normalize-space()='SIP Modification is not permitted as the mandate is not approved.']
${KU_W_invest_mf_skip1PageTitle} =  xpath=//span[normalize-space()='Skip 1 SIP instalment']
${KU_W_invest_mf_skip1PageSubTitle1} =  xpath=//div[contains(text(),'Your upcoming SIP installment for next month will be skipped.')]
${KU_W_invest_mf_skip1PageSubTitle1} =  xpath=(//a[@class='b-transafer-details__skip-sip-message--link'])[1]
${KU_W_invest_mf_skip_greatInvestorLink} =  //div[@class='b-edit-sip__d-heading-container m-hide-content']//div//div[contains(text(),'If the recent market turmoil is the only reason to')]
${KU_W_invest_mf_stopBtn} =  xpath=//div[contains(text(),'Stop')]
${KU_W_invest_mf_skip_sipDateLabel} =  xpath=//div[normalize-space()='SIP Date']
${KU_W_invest_mf_skip_sipDateField} =  xpath=(//div[@class='b-transfer-detail__display-column__row']//div)[2]
${KU_W_invest_mf_skip_nextInstallmentText} =  xpath=/div[@class='b-transfer-details__skip-info']
${KU_W_invest_mf_categoryList} =  xpath=//div[@class='b-fund-category-filter__option']
${KU_W_invest_mf_subcategoryList} =  xpath=//div[@class='b-fund-category-filter__label']
${KU_W_invest_mf_noResultsFound} =  xpath=//div[contains(text(),'No results')]