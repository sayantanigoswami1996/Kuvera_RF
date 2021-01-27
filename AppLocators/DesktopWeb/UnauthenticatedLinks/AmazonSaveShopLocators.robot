*** Variables ***
# Application Expected Values 'e_<VariableName>'

${e_amazon_amazonSaveShopURL} =  https://staging2.kuvera.in/#/explore/save-shop
${e_amazon_pageTitle} =  4 simple steps to qualify for 3% extra for your shopping on Amazon.in
${e_amazon_step1Title} =  Step 1\nSave by 20th Sep, 2020 with Kuvera.
${e_amazon_step2Title} =  Step 2\nSavings will be invested in low risk liquid funds.
${e_amazon_step3Title} =  Step 3\nRedeem between 1st Oct and 30th Nov, 2020.
${e_amazon_step4Title} =  Step 4\nGet an option to purchase Amazon Pay gift cards with 3% shopping benefits.
${e_amazon_bannerDesc} =  Save on Kuvera and\nqualify for 3% extra\nfor your festive season shopping.     
${e_amazon_bannerT&C} =  *T&C apply
${e_amazon_question1} =  1. What is “Amazon Save & Shop“?
${e_amazon_question2} =  2. What are the steps to invest in “Amazon Save & Shop” ?
${e_amazon_question3} =  3. How have the funds included performed historically?
${e_amazon_answer1} =  “Amazon Save & Shop“ helps you save up for shopping during the festive season and get extra benefits if you decide to avail Amazon Pay gift card during the offer period. You can invest upto INR 90,000 in this fund till 20th September, 2020. The amount will be invested in low risk liquid funds. Then if you decide to redeem the funds in between 1st October and 30th November, 2020 and avail the option to get Amazon Pay gift card, you will receive an additional 3% top-up on your gift card amount. You can use this gift card to shop on Amazon.in or wherever Amazon Pay balance is accepted for payment. For more details on Amazon Pay Gift card check here.
${e_amazon_answer2} =  Step 1: Enter the amount you want to invest towards Amazon Save & Shop\nStep 2: Pay for your investment using UPI, Net banking, Mandate or NEFT.\nStep 3:  Check on the dashboard on how your fund is performing.        
${e_amazon_answer3} =  Liquid Funds invest in debt and money market securities with maturity of up to 91 days only.\nAs part of Amazon Save & Shop,  you are investing in the following basket of liquid fund schemes:\nFund Name 1Y 3Y\nICICI Liquid fund 5.1% 6.5%\nNippon Liquid fund 5.1% 6.6%\nAxis Liquid fund 5.1% 6.5%\nPGIM Insta cash 5.1% 6.6%\nTrailing annualized returns of liquid funds as on 9th September, 2020\nMutual Fund investments are subject to markets risks and you should refer to scheme related documentation before investing. Past performance is not indicative of future returns.
${e_amazon_botQuestion} =  What happens if I do not redeem or partially redeem from Amazon Save & Shop during the offer period?

# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified

${KU_W_amazon_saveShopIcon} =  xpath=//img[@class='b-save-and-shop__main-logo']
${KU_W_amazon_pageTitle} =  xpath=//div[@class='b-festive-fund-no-investment__text']
${KU_W_amazon_step1Img} =  xpath=(//img[@class='b-festive-fund-step__logo'])[1]
${KU_W_amazon_step2Img} =  xpath=(//img[@class='b-festive-fund-step__logo'])[2]
${KU_W_amazon_step3Img} =  xpath=(//img[@class='b-festive-fund-step__logo'])[3]
${KU_W_amazon_step4Img} =  xpath=(//img[@class='b-festive-fund-step__logo'])[4]
${KU_W_amazon_step1Title} =  xpath=(//div[@class='b-festive-fund-step__container'])[1]
${KU_W_amazon_step2Title} =  xpath=(//div[@class='b-festive-fund-step__container'])[2]
${KU_W_amazon_step3Title} =  xpath=(//div[@class='b-festive-fund-step__container'])[3]
${KU_W_amazon_step4Title} =  xpath=(//div[@class='b-festive-fund-step__container'])[4]
${KU_W_amazon_bannerLogo} =  xpath=//img[@class='b-ff-banner__logo']
${KU_W_amazon_bannerDesc} =  xpath=//div[@class='b-ff-banner__lines-text-container']
${KU_W_amazon_bannerT&C} =  xpath=//div[@class='b-ff-banner__t-and-c']
${KU_W_amazon_saveBtn} =  xpath=//button[@class='button-primary m-hide-content b-save-and-shop__save-now-btn-m']
${KU_W_amazon_question1} =  xpath=(//div[@class='b-faq__heading'])[1]
${KU_W_amazon_expandArrow1} =  xpath=(//img[@class='b-faq__arrow'])[2]
${KU_W_amazon_collapseArrow1} =  xpath=(//img[@class='b-faq__arrow'])[1]
${KU_W_amazon_answer1} =  xpath=(//div[@class='b-faq__content-desc'])[1]
${KU_W_amazon_question2} =  xpath=(//div[@class='b-faq__heading'])[2]
${KU_W_amazon_expandArrow2} =  xpath=(//img[@class='b-faq__arrow'])[4]
${KU_W_amazon_collapseArrow2} =  xpath=(//img[@class='b-faq__arrow'])[3]
${KU_W_amazon_answer2} =  xpath=(//div[@class='b-faq__content-desc'])[2]
${KU_W_amazon_question3} =  xpath=(//div[@class='b-faq__heading'])[3]
${KU_W_amazon_expandArrow3} =  xpath=(//img[@class='b-faq__arrow'])[6]
${KU_W_amazon_collapseArrow3} =  xpath=(//img[@class='b-faq__arrow'])[5]
${KU_W_amazon_answer3} =  xpath=(//div[@class='b-faq__content-desc'])[3]
${KU_W_amazon_viewAll} =  xpath=//div[@class='b-faq__content-desc__view-all']