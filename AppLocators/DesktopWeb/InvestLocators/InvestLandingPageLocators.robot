*** Variables *** 
# Application Expected Values 'e_<variableName>'
# Invest 
${e_invest_saveSmartTitleText} =   SaveSmart
${e_invest_saveSmartSubText} =  Invest in low risk liquid funds and redeem upto ₹2 lakhs instantly
${e_invest_giltFundsTitleText} =   Gilt Funds
${e_invest_giltFundsSubText} =  Invest in govt bonds. Zero credit risk, but have rate risk.
${e_invest_giltFund_screenText} =  Gilt Fund
${e_invest_ultraShortTitleText} =  Ultra-short
${e_invest_ultraShortSubText} =  Park money for the short term
${e_invest_us_screenText} =  Ultra Short Duration Fund
${e_invest_bank&PSUTitleText} =  Bank & PSU Bonds
${e_invest_bank&PSU_screenText} =  Banking and PSU Fund
${e_invest_ELSSTaxTitleText} =   ELSS Tax Saver
${e_invest_ELSSTaxSubText} =  Save up to ₹46.8k in taxes.
${e_invest_ELSS_screenText} =  ELSS
${e_invest_digitalGoldTitleText} =  Digital Gold
${e_invest_digitalGoldSubText} =  Diversify your portfolio with Gold.
${e_invest_digiGold_screenText} =  Buy 24K 99.9% pure digital gold - easily and securely.
${e_invest_USETFTitleText} =   US ETF
${e_invest_USETFSubText} =  Go global with direct US ETF investing. We make it easy and cheap.
${e_invest_USETF_screenText} =  Other | Exchange-traded fund
${e_invest_equityIndexTitleText} =  Equity Index
${e_invest_equityIndexSubText} =  Get index returns at low cost.
${e_invest_equIndex_screenText} =  Index Funds   
${e_invest_sectorFundsTitleText} =   Sector Funds 
${e_invest_sectorFundsSubTitleText} =  Pharma, Tech & more
${e_invest_sectorFunds_screenText} =  Sectoral/Thematic 
${e_invest_valueFundsTitleText} =   Value funds
${e_invest_valueFundsSubTitleText} =  Invest in stocks selling below their intrinsic or book value.
${e_invest_valueFunds_screenText} =  Value Fund
${e_invest_topGainersTitleText} =  Top Gainers
${e_invest_topGainersSubTitleText} =  Indian stocks
${e_invest_topGainers_screenText} =   Gainers 
${e_invest_52WHighIndiaTitleText} =   52 Wk High India
${e_invest_52WHighIndiaSubTitleText} =  Momentum stocks in India
${e_invest_52WHighInida_screenText} =   52W high 
${e_invest_52WHighUSTitleText} =   52 Wk High US
${e_invest_52WHighUSSubTitleText} =  Momentum stocks in US
${e_invest_52WHighUS_screenText} =  52W high 
${e_invest_healthPremiumTitleText} =  Get ₹50L health cover starting at ₹900 p.m. T&C apply
${e_invest_checkPremiumSubText} =  Check premium     
${e_invest_mf_titleText} =  Mutual\nfunds
${e_invest_mf_searchBarText} =  Search funds 
${e_invest_digGold_titleText} =  Digital\ngold
${e_invest_stocks_titleText} =  Stocks
${e_invest_stocks_screenText} =  Search stocks
${e_invest_USStocks_titleText} =  US\nstocks
${e_invest_USStocks_screenText} =  Diversify with US stocks
${e_invest_ss_titleText} =   Save\nsmart
${e_invest_amazonSave_titleText} =  Amazon\nsave
${e_invest_amazonSave_screenText} =  4 simple steps to qualify for 3% extra for your shopping on Amazon.in
${e_invest_sortBtnText} =  Sort by				
${e_invest_filterBtnText} =  Filter
${e_invest_clearAllBtnTxt} =  Clear all
${e_invest_stock_searchBarTxt} =  Search stocks
${e_invest_stock_exploreMoreTxt} =  Explore more
# Application Locator 'KU_<locatorName>'
# Invest Navigation Page
${KU_W_investLink} =  xpath=//a[@class='b-header__content__invest cursor-pointer']
${KU_W_saveSmartTitle} =  xpath=(//div[@class='k-cls b-invest-card']/h6)[1]
${KU_W_saveSmartSubTitle} =  xpath=(//div[@class='k-cls b-invest-card']/p)[1]
${KU_W_giltFundsTitle} =  xpath=(//div[@class='k-cls b-invest-card']/h6)[3]
${KU_W_giltFundsSubTitle} =  xpath=(//div[@class='k-cls b-invest-card']/p)[3]
${KU_W_invest_fundsScreenTitle} =  xpath=(//div[@class='b-mutual-funds-explore__fund-row-content-industry-wrapper']/div[3])[1]
${KU_W_ultraShortTitle} =  xpath=(//div[@class='k-cls b-invest-card']/h6)[2]
${KU_W_ultraShortSubTitle} =  xpath=(//div[@class='k-cls b-invest-card']/p)[2]
${KU_W_bank&PSUBondsTitle} =  xpath=(//h6[@class='b-invest-tile__title'])[4]
${KU_W_ELSSTaxSaverTitle} =  xpath=(//div[@class='k-cls b-invest-card']/h6)[4]
${KU_W_ELSSTaxSaverSubTitle} =  xpath=(//div[@class='k-cls b-invest-card']/p)[4]
${KU_W_digitalGoldTitle} =  xpath=(//div[@class='k-cls b-invest-card']/h6)[5]
${KU_W_digitalGoldSubTitle} =  xpath=(//div[@class='k-cls b-invest-card']/p)[5]
${KU_W_goldIconImage} =  xpath=(//div[@class='k-cls b-invest-card']/img)[2]
${KU_W_dg_screenTitle} =  xpath= //div[@class='buy-gold-heading']
${KU_W_USUTFImage} =  xpath=(//div[@class='k-cls b-invest-card']/img)[3]
${KU_W_UTFTitle} =  xpath=(//div[@class='k-cls b-invest-card']/h6)[6]
${KU_W_UTFSubTitle} =  xpath=(//div[@class='k-cls b-invest-card']/p)[6]
${KU_W_UTF_screenTitle} =  xpath=(//div[@class='b-stock-item__col1__meta-info'])[1]
${KU_W_equityIndexTitle} =  xpath=(//h6[@class='b-invest-tile__title'])[6]
${KU_W_equityIndexSubTitle} =  xpath=(//p[@class='b-invest-tile__para'])[7]
${KU_W_sectorFundsTitle} =  xpath=(//h6[@class='b-invest-tile__title'])[7]
${KU_W_sectorFundsSubTitle} =  xpath=(//p[@class='b-invest-tile__para'])[9]
${KU_W_topGainerTitle} =  xpath=(//div[@class='k-cls b-invest-card']/h6)[7]
${KU_W_topGainerSubTitle} =  xpath=(//div[@class='k-cls b-invest-card']/p)[7]
${KU_W_topGainerScreenTitle} =  xpath=//div[@class='b-stocks-explore__tab_item b-stocks-explore__tab--selected']
${KU_W_valueFundsTitle} =  xpath=(//div[@class='k-cls b-invest-card']/h6)[8]
${KU_W_valueFundsSubTitle} =  xpath=(//div[@class='k-cls b-invest-card']/p)[8]
${KU_W_52WHighIndiaTitle} =  xpath=(//h6[@class='b-invest-tile__title'])[10]
${KU_W_52WHighIndiaSubTitle} =  xpath=(//p[@class='b-invest-tile__para'])[12]
${KU_W_52WHighIndia_screenText} =   xpath=//div[@class='b-stocks-explore__tab-wrapper disable-browser-text-select']//div[5]
${KU_W_52WHighUSTitle} =  xpath=(//div[@class='k-cls b-invest-card']/h6)[9]
${KU_W_52WHighUSSubTitle} =  xpath=(//div[@class='k-cls b-invest-card']/p)[9]
${KU_W_52WHighUS_screenText} =   xpath=//div[@class='disable-browser-text-select b-standard-tab__item b-standard-tab__item--active b-standard-tab__item--52-week-high']
${KU_W_healthPremiumTitle} =  xpath=//div[@class='b-invest-landing__other-container']//div[1]/p
${KU_W_checkPremiumBtn} =  xpath=//h6[contains(.,'Check premium')]
${KU_W_mutualFund} =  xpath=(//div[@class='b-asset-cta__title'])[1]
${KU_W_mutualFundScreen} =  xpath=(//div[@class='b-explore-fund__action-title'])[1]
${KU_W_digitalGold} =  xpath=(//div[@class='b-asset-cta__title'])[2]
${KU_W_digitalGoldScreen} =  xpath=(//div[@class='b-asset-cta__title'])[2]
${KU_W_stocks} =  xpath=(//div[@class='b-asset-cta__title'])[3]
${KU_W_stocksScreen} =  xpath=(//div[@class='b-explore-stock__action-title'])[1]
${KU_W_USStocks} =  xpath=(//div[@class='b-asset-cta__title'])[4]
${KU_W_USStocksScreen} =  xpath=//div[@class='b-introduction__detail__title1']
${KU_W_saveSmart} =  xpath=(//div[@class='b-asset-cta__title'])[5]
${KU_W_amazonSave} =  xpath=(//div[@class='b-asset-cta__title'])[6]
${KU_W_amazonSaveScreen} =  xpath=//div[@class='b-festive-fund-no-investment__text']
${KU_W_searchBarForFunds} =  xpath=(//div[@class='b-explore-fund__action-title'])[1]
${KU_W_searchBarForTopGainer} =  xpath=(//div[@class='b-explore-stock__action-title'])[1]
${KU_W_searchBarForUSETF} =  xpath=(//div[@class='b-action-bar__search__header'])[1]
${KU_W_sort} =  xpath=(//div[@class='b-explore-fund__action-title'])[2]
${KU_W_sort_UTF_USA} =  xpath=//div[@class='b-action-bar__sort__header']
${KU_W_sort_topGainer_India} =  xpath=(//div[@class='b-explore-stock__action-title'])[2]
${KU_W_filter} =  xpath=//span[@class='b-explore-fund__action-title b-explore-fund__filter-action-title']
${KU_W_clearAll} =  xpath=//div[@class='b-explore-fund__clear-all']
${KU_W_exploreMoreTitle} =  xpath=//div[@class='b-explore-assets__subheading']