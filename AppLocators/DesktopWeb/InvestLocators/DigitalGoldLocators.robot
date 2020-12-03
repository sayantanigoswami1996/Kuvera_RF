*** Variables *** 
# Application Expected Values 'e_<variableName>'
# Digital Gold
${e_invest_digiGold_screenText} =  Buy 24K 99.9% pure digital gold - easily and securely.
${e_invest_digiGold_purityHeadingText} =  Highest purity.
${e_invest_digiGold_purityDescText} =  24K 99.9% pure gold.
${e_invest_digiGold_100SecureHeadingText} =  100% secure.
${e_invest_digiGold_100SecureDescText} =  Secured in bank grade lockers by Brinks, a global leader in asset security.
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
${e_invest_faqBotText} =  Search our help articles ...      



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
${KU_W_dg_addGoldBtn} =  xpath=(//button[@class='button-primary add-gold-button-custom'])[1]
${KU_W_dg_faqHeading} =  xpath=//div[@class='section-faq-heading']

${KU_W_faqBtn} =  xpath=(//button[@class='button-primary add-gold-button-custom'])[2]
${KU_W_dg_faqBotTitle} =  xpath=//span[@class='faq-bot-top-banner-text']
${KU_W_dg_faqCloseBtn} =  xpath=//div[@class='faq-bot-top-banner-cross']