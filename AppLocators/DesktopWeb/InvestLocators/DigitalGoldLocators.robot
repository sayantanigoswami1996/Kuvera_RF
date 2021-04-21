*** Variables *** 
# Application Expected Values 'e_<variableName>'
# Digital Gold
${e_invest_digiGold_screenText} =  Buy 24K 99.9% pure digital gold - easily and securely.
${e_invest_digiGold_purityHeadingText} =  Highest purity.
${e_invest_digiGold_purityDescText} =  24K 99.9% pure gold.
${e_invest_digiGold_100SecureHeadingText} =  100% secure.
${e_invest_digiGold_100SecureDescText} =  Secured in bank grade lockers by Sequel, a global leader in asset security.
${e_invest_digiGold_fullyLiquidText} =  Fully liquid.
${e_invest_digiGold_fullyLiquidDescText} =  Sell anytime! Receive the amount directly in your bank account.
${e_invest_digiGold_livePricesText} =  Live prices.
${e_invest_digiGold_livePricesDescText} =  Get live market rates any time you buy or sell gold on Kuvera.
${e_invest_digiGold_augmontHeadingText} =  Official partner of Augmont.
${e_invest_digiGold_augmontDescText} =  Kuvera partners with Augmont, India’s leading digital gold platform.
${e_invest_digiGold_augmontLinkText} =  Augmont
${e_invest_digiGold_augmontScreenTitle} =  Augmont Enterprises Private Limited | Buy Gold Silver
${e_invest_digiGoldIsBetterTitleText} =  Digital Gold is better than gold mutual funds!
${e_invest_digiGoldIsBetterDescText} =  Learn more about how digital gold is superior to gold mutual funds.
${e_invest_learnMoreLinkText} =  Learn more 
${e_invest_digitalGoldScreenTitle} =  Digital gold for smart investors - Kuvera Buy digital gold on Kuvera
${e_invest_digiGold_augmontScreenTitle} =  Augmont Enterprises Private Limited | Buy Gold Silver
${e_invest_addGoldTitleText} =   Already Own Gold? Track it!
${e_invest_addGoldDescText} =  Get the full picture of your Gold Portfolio by adding & tracking gold you’ve bought outside of Kuvera. 
${e_invest_addGoldBtnText} =  Add gold you already own        
${e_invest_faqTitleText} =  Questions? We’re happy to help!
${e_invest_faqBtnText} =  View FAQs      
${e_invest_buyGoldTitleText} =  Buy
${e_invest_goldRateTitleText} =  Live Buy Rate
${e_invest_purityTitleText} =  Purity   
${e_invest_purityAmtText} =  24K 99.9%
${e_invest_partnerTitleText} =  Partner      
${e_invest_partnerNameText} =  Augmont 
${e_invest_enterAmtTitleText} =  Enter Amount             
${e_invest_enterGramsTitleText} =  Enter Grams              
${e_invest_digiGold_T&CText} =  *Purchased gold can be sold after 7 days.
${e_invest_comingSoonText} =  Coming soon: Gold gifting & delivery.   
${e_invest_buyNowBtnText} =   Buy Now
${e_invest_sellGoldTitleText} =  Sell
${e_invest_liveSellRateTitleText} =  Live Sell Rate             
${e_invest_logInSellgoldTitleText} =  Log in to sell gold.
${e_invest_noAcntText} =  Don’t have an account? 
${e_invest_SIPTitleText} =  Start gold SIP with Kuvera
${e_invest_SIP_loginTitleText} =  Log in to start gold SIP.
${e_invest_trackTitleText} =  Add gold purchased outside Kuvera 
${e_invest_track_loginTitleText} =  Log in to add gold.
${e_invest_faqbotQA1} =  How do I buy Gold on Kuvera?
# Postlogin
${e_invest_enterGramValue} =  0.0002
${e_invest_enterAmountValue} =  5000
${e_invest_buyGoldMsg} =  To get started, buy gold.
${e_invest_sellWeight} =  0 gm
${e_invest_SIP_BuyValue} =  1
${e_invest_selectBankAcc} =  Select Bank Account
${e_invest_selectBankDesc} =  Selected bank account will be used for managing recurring SIP payments.
${e_invest_bankAccSubDesc} =  This Bank a/c will be used for managing recurring SIP payments.
${e_invest_IFSC} =  HDFC0000022
${e_invest_trackToastMsg} =  Your entry for gold (bought externally) has been updated.
${e_invest_deleteTrackMsg} =  Your entry for gold (bought externally) has been deleted.
${e_invest_sellAmtVal} =  5000
${e_invest_sellAmtVal1} =  500
${e_invest_bankAccField} =  123456789
${e_invest_merchantDesc} =  Buy Gold

# Application Locator 'KU_<locatorName>'
# Digital Gold Navigation Page
${KU_W_dg_screenTitle} =  xpath=//div[@class='buy-gold-heading']
${KU_W_dg_purityHeading} =  xpath=(//div[@class='kuvera-advantage-tiles-heading'])[1]
${KU_W_dg_purityDesc} =  xpath=(//div[@class='kuvera-advantage-tiles-desc'])[1]
${KU_W_dg_100SecureHeading} =  xpath=(//div[@class='kuvera-advantage-tiles-heading'])[2]
${KU_W_dg_100SecureDesc} =  xpath=(//div[@class='kuvera-advantage-tiles-desc'])[2]
${KU_W_dg_fullyLiquidHeading} =  xpath=(//div[@class='kuvera-advantage-tiles-heading'])[3]
${KU_W_dg_fullyLiquidDesc} =  xpath=(//div[@class='kuvera-advantage-tiles-desc'])[3]
${KU_W_dg_livePricesHeading} =  xpath=(//div[@class='kuvera-advantage-tiles-heading'])[4]
${KU_W_dg_livePricesDesc} =  xpath=(//div[@class='kuvera-advantage-tiles-desc'])[4]
${KU_W_dg_augmontHeading} =  xpath=(//div[@class='kuvera-advantage-tiles-heading'])[5]
${KU_W_dg_augmontDesc} =  xpath=(//div[@class='kuvera-advantage-tiles-desc'])[5]
${KU_W_dg_augmontLink} =  xpath=(//a[@class='link'])[1]
${KU_W_digitalGoldIsBetterTitle} =  xpath=//div[@class='section-digital-gold-is-better-heading']
${KU_W_digitalGoldIsBetterDesc} =  xpath=//div[@class='section-digital-gold-is-better-desc']
${KU_W_dg_augmontDesc} =  xpath=(//div[@class='kuvera-advantage-tiles-desc'])[5]
${KU_W_dg_learnMoreLink} =  xpath=(//a[@class='link'])[2]
${KU_W_addGoldHeading} =  xpath=//div[@class='section-add-gold-heading']
${KU_W_addGoldDesc} =  xpath=//div[@class='section-add-gold-desc']
${KU_W_dg_addGoldBtn} =  xpath=//button[normalize-space()='Add gold you already own']
${KU_W_dg_faqHeading} =  xpath=//div[@class='section-faq-heading']
${KU_W_faqBtn} =   xpath=//button[normalize-space()='View FAQs']
${KU_W_dg_faqBotTitle} =  xpath=//span[@class='faq-bot-top-banner-text']
${KU_W_dg_faqCloseBtn} =  xpath=//div[@class='faq-bot-top-banner-cross']
${KU_W_dg_aboutUSLink} =  xpath=//ul[@class='list-unstyled']/li[1]
${KU_W_dg_buyTab} =  xpath=(//div[@class='gold-widget-tab-text'])[1]
${KU_W_dg_liveGoldRateTitle} =  xpath=(//div[@class='b-buy-gold__cumulative-label b-buy-gold__live-buy-rate'])[1]
${KU_W_ratePerGm} =  xpath=(//div[@class='b-buy-gold__cumulative-unit-container'])[1]
${KU_W_goldRateRefreshIcon} =  xpath=(//div[@class='b-buy-gold__refresh-icon'])[1]
${KU_W_dg_buyGoldPurityTitle} =  xpath=(//div[@class='b-buy-gold__cumulative-label'])[1]
${KU_W_buyGoldPurityAmt} =   xpath=(//div[@class='b-buy-gold__cumulative-unit b-buy-gold__cumulative-unit--widget'])[2]
${KU_W_dg_buyGoldPartnerTitle} =  xpath=(//div[@class='b-buy-gold__cumulative-label'])[2]
${KU_W_dg_buyGoldPartnerName} =  xpath=(//div[@class='b-buy-gold__cumulative-unit b-buy-gold__cumulative-unit--widget'])[3]
${KU_W_dg_enterAmtTitle} =  xpath=(//div[@class='b-buy-gold__radios__label b-buy-gold__radios__label--selected'])[1]
${KU_W_dg_enterGramsTitle} =  xpath=(//div[@class='b-buy-gold__radios__label b-buy-gold__radios__label--unselected'])[1]
${KU_W_amount} =  xpath=(//div[@class='b-buy-gold__auto-filled-options-button b-buy-gold__auto-filled-options-button--widget'])[2]
${KU_W_buyNowBtn} =  xpath=//button[@class='button-primary b-buy-gold__buy-now-btn']
${KU_W_dg_goldRate} =  xpath=(//div[@class='b-buy-gold__cumulative-unit b-buy-gold__cumulative-unit--widget'])[1]
${KU_W_dg_enterGramsRadioBtn} =  xpath=(//div[@class='b-buy-gold__radio-icon-container--selected'])[1]
${KU_W_enterGram} =   xpath=(//div[@class='b-buy-gold__auto-filled-options-button b-buy-gold__auto-filled-options-button--widget'])[1]
${KU_W_dg_T&C} =  xpath=//div[@class='b-buy-gold__terms b-buy-gold__terms--widget']
${KU_W_dg_comingSoonTitle} =  xpath=(//div[@class='b-buy-gold__coming-soon-text'])[1]
${KU_W_dg_sellGoldTab} =  xpath=(//*[@class='gold-widget-tab-text'])[2]
${KU_W_dg_liveSellRateTitle} =  xpath=//div[@class='b-sell-gold__cumulative-label b-sell-gold__live-sell-rate']
${KU_W_dg_loginIntoSellGoldTitle} =  xpath=//div[@class='b-sell-gold__widget-no-logged-sell-text']
${KU_W_dg_sellGoldRefreshIcon} =  xpath=//img[@class='b-sell-gold__refresh-icon']
${KU_W_dg_sellGoldPurityTitle} =  xpath=(//div[@class='b-sell-gold__cumulative-label'])[1]
${KU_W_dg_sellGoldPartnerTitle} =  xpath=(//div[@class='b-sell-gold__cumulative-label'])[2]
${KU_W_dg_sellGoldPurityAmt} =  xpath=(//div[@class='b-sell-gold__cumulative-unit b-sell-gold__cumulative-unit--widget'])[2]
${KU_W_dg_sellGoldPartnerName} =  xpath=(//div[@class='b-sell-gold__cumulative-unit b-sell-gold__cumulative-unit--widget'])[3]
${KU_W_dg_gold_login} =  xpath=//button[@class='button-primary b-sell-gold__sell-now-btn']
${KU_W_dg_gold_signup} =  xpath=//span[@class='b-sell-gold__sign-up-link--widget']
${KU_W_dg_gold_noAcntMsg} =  xpath=//div[@class='b-sell-gold__sign-up-text-container--widget']/span[1]
${KU_W_dg_goldValue} =  xpath=//div[@class='b-buy-gold__other-value b-buy-gold__text-visible b-buy-gold__other-value--widget']
${KU_W_dg_SIPTab} =  xpath=//div[contains(text(),'Start SIP')]
${KU_W_dg_SIP_Track_Heading} =  xpath=//div[@class='b-log-gold__heading-widget']
${KU_W_dg_loginTitle} =  xpath=//div[@class='b-sell-gold__widget-no-logged-sell-text']
${KU_W_dg_trackTab} =  xpath=//div[@class='gold-widget-tab-text'][normalize-space()='Track']
# Postlogin 
${KU_W_dg_enterGram_AmtField} =  xpath=(//div[@class='b-buy-gold__text-field-container']//input)[1]
${KU_W_dg_minGoldInGram} =  xpath=//div[@class='b-buy-gold__offer-text-available-applied--widget b-buy-gold__offer-text-available']
${KU_W_dg_congratsMsg} =  xpath=//div[text()='Congratulations!']
${KU_W_dg_buyGoldSuccessMsg} =  xpath=//div[@class='b-buy-success-desc']
${KU_W_dg_enterGramLabel} =  xpath=(//div[contains(text(),'Enter Grams')])[1]
${KU_W_dg_enterAmtLabel} =  xpath=(//div[contains(text(),'Enter Amount')])[1]
${KU_W_dg_paymentModeSubText} =  xpath=//div[.="Choose how you’d like to pay for your purchase"]
${KU_W_dg_paymentBreakup} =  xpath=//div[@class='d-payment-breakup__info d-payment-breakup__info--base']
${KU_W_dg_paymentBreakupGST} =  xpath=//div[@class='d-payment-breakup__info']
${KU_W_dg_totalPayable} =  xpath=//div[@class='d-payment-breakup__info d-payment-breakup__info--total']
${KU_W_dg_GSTText} =  xpath=//div[contains(text(),'GST on gold (3%)')]
${KU_W_dg_payableText} =  xpath=(//div[contains(text(),'Total Payable')])[2]
${KU_W_dg_paymentGoBackIcon} =  xpath=//img[@class='b-order-summary__d-back-icon']
${KU_W_dg_paymentCrossIcon} =  xpath=//img[@class='b-order-summary__d-close-icon']
${KU_W_dg_paymentOption} =  xpath=//div[@class='b-order-summary__payment-modes b-order-summary__payment-options--fade']
${KU_W_dg_paymentTimerText} =  xpath=//span[contains(.,'Price valid for')]
${KU_W_dg_paymentTimer} =  xpath=//span[@class='b-gold-timer__active-timer']
${KU_W_dg_timerExpired} =  xpath=//div[contains(text(),'This rate has expired.')]
${KU_W_dg_goldTimerRefresh} =  xpath=//div[@class='b-gold-timer__refresh-text']
${KU_W_dg_buyGoldBtn} =  xpath=//button[normalize-space()='Buy Gold']
${KU_W_dg_availableToSell} =  xpath=//div[contains(text(),'Available to Sell')]
${KU_W_dg_sellWeight} =  xpath=//span[@class='b-sell-gold__available-to-sell-weight']
${KU_W_dg_infoIcon} =  xpath=//div[@class='b-sell-gold__info-icon-desktop']
${KU_W_dg_ownedGold} =  xpath=//div[@class='b-sell-gold__owned-gold']
${KU_W_dg_disabledSellNowBtn} =  xpath=//button[@class='button-primary b-sell-gold__sell-now-btn button-primary-disabled']
${KU_W_dg_enterSIPAmt} =  xpath=//div[contains(text(),'Enter monthly SIP Amount')]
${KU_W_dg_minSIP} =  xpath=//div[contains(text(),'Min. amount ₹1,000')]
${KU_W_dg_SIPDropdown} =  xpath=//img[@class='b-gold-sip-date-dropdown']
${KU_W_dg_SIPDate} =  xpath=//div[contains(text(),'15th')]
${KU_W_dg_nextInstallment} =  xpath=//div[@class='b-gold-sip--next-date b-gold-sip--next-date--widget']
${KU_W_dg_startSIPBtn} =  xpath=//button[normalize-space()='Start SIP']
${KU_W_dg_bankAccForSIP} =  xpath=//div[@class='b-portfolio-radio-button b-bank-list__content__banks-item']
${KU_W_dg_selectBankAcc} =  xpath=//div[@class='b-bank-list__content__title']
${KU_W_dg_subText} =  xpath=//div[@class='b-bank-sub-text']
${KU_W_dg_addBankAcc} =  xpath=//div[contains(text(),'+ Add Bank Account')]
${KU_W_dg_orderSummaryPage} =  xpath=//div[contains(text(),'Order Summary')]
${KU_W_dg_confirmGoldSIPDesc} =  xpath=//div[contains(text(),'Confirm your Gold SIP order details & bank details')]
${KU_W_dg_goldSIPOrderTitle} =  xpath=//div[normalize-space()='Gold SIP Order Details']
${KU_W_dg_goldSIPRow1} =  xpath=//div[@class='b-sell-gold-order-summary__content__details']//div[1]
${KU_W_dg_goldSIPRow2} =  xpath=//div[@class='b-sell-gold-order-summary__content__details']//div[3]
${KU_W_dg_monthlySIPAmtLabel} =  xpath=//span[normalize-space()='Your monthly SIP amount']
${KU_W_dg_monthlySIPDateLabel} =  xpath=//span[normalize-space()='Your monthly SIP date']
${KU_W_dg_bankAccLabel} =  xpath=//div[normalize-space()='Bank Account']
${KU_W_dg_bankAccSubDesc} =  xpath=//div[@class='b-sell-gold-order-summary__content__subtext']
${KU_W_dg_selectedBank} =  xpath=//div[@class='b-sell-gold-order-summary__content__selected-bank']
${KU_W_dg_changeBankLink} =  xpath=//div[contains(text(),'Change')]
${KU_W_dg_authenticateLink} =  xpath=//span[contains(text(),'Authenticate')]
${KU_W_dg_chooseBankAccArrow} =  xpath=//i[@class='select-arrow']
${KU_W_dg_savingsAcc} =  xpath=//select[@name='bank_account[account_type]']//option[2]
${KU_W_dg_congratsSubText} =  xpath=//div[@class='b-sell-gold-congrats__subtext']
${KU_W_dg_IFSC} =  xpath=//input[@name='IFSC Code']
${KU_W_dg_accNumField} =  xpath=//input[@name='Account Number']
${KU_W_dg_confirmAccNumField} =  xpath=//input[@name='Confirm Account Number']
${KU_W_dg_savingsField} =  xpath=//span[normalize-space()='Savings']
${KU_W_dg_chooseHDFCAcc} =  xpath=(//span[@class='checkmark b-bank-list__content__banks-item__checkmark'])[2]
${KU_W_dg_chooseHDFCAcc1} =  xpath=(//span[@class='checkmark b-bank-list__content__banks-item__checkmark'])[3]
${KU_W_dg_disabledAddAcc} =  xpath=//div[@class='b-bank-list__content__action b-bank-list__content__action--disabled has-tooltip']
${KU_W_dg_closeRazorPay} =  xpath=//div[@id='header']//div[@id='modal-close']
${KU_W_dg_quitTitle} =  xpath=//div[contains(text(),'Are you sure you want to Quit?')]
${KU_W_dg_QuitDesc} =  xpath=//div[contains(text(),'Your Gold SIP setup progress will be lost.')]
${KU_W_dg_addTrackTitle} =  xpath=//div[contains(text(),'Add & track gold purchased outside Kuvera')]
${KU_W_dg_quantityAddedLabel} =  xpath=//div[contains(text(),'Quantity Added')]
${KU_W_dg_gm_tolasBox} =  xpath=//div[@class='b-app-standard-box-toggle b-log-gold__weight-owned-unit']
${KU_W_dg_slider} =  xpath=//div[@class='b-app-standard-slider__bar b-app-standard-slider__right-bar']
${KU_W_dg_updateToTrack} =  xpath=//button[normalize-space()='Update to track']
${KU_W_dg_externalGoldTitle} =  xpath=//span[contains(.,'Gold (Bought externally)')]
${KU_W_dg_sell_enterAmt_Gms} =  xpath=(//div[@class='b-sell-gold__text-field-container']//input)[1]
${KU_W_dg_sell_sellNowBtn} =  xpath=//button[normalize-space()='Sell Now']
${KU_W_dg_sell_minAmtLabel} =  xpath=//div[contains(text(),'Min. amount ₹10')]
${KU_W_dg_sell_sellAll} =  xpath=//span[normalize-space()='Sell all']
${KU_W_dg_sell_enterGm} =  xpath=//div[@class='b-sell-gold__text-field-container']
${KU_W_dg_sell_enterAmt} =  xpath=//div[@class='b-sell-gold__radios__label b-sell-gold__radios__label--selected']
${KU_W_dg_sell_orderSubText} =  xpath=//div[contains(text(),'Confirm your order details & bank account.')]
${KU_W_dg_sell_sellOrderDets} =  xpath=//div[normalize-space()='Sell Order Details']
${KU_W_dg_sell_quantityOfGold} =  xpath=//span[contains(text(),'Quantity of gold to sell')]
${KU_W_dg_sell_goldReceivable} =  xpath=//span[contains(.,'Amount receivable')]
${KU_W_dg_sell_modifyLink} =  xpath=(//div[contains(text(),'Modify')])[1]
${KU_W_dg_sell_close} =  xpath=//img[@class='b-sell-gold__close']
${KU_W_dg_track_deleteBtn} =  xpath=//div[@class='b-log-gold-delete'][normalize-space()='Delete']
${KU_W_dg_SIP_continueBtn} =  xpath=(//button[normalize-space()='Continue'])[2]
${KU_W_dg_chooseBanAccArrow} =  xpath=//select[@name='bank_account[account_type]']
${KU_W_dg_SIP_bankAcc2} =  xpath=(//div[@class='b-portfolio-radio-button b-bank-list__content__banks-item'])[2]