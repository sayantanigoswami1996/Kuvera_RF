*** Keywords ***

Verify PostLogin US Stocks Menu Navigation
    Verify PreLogin US Stocks Landing Page
    Scroll Page To Location  0  -500
    Wait And Click  ${KU_W_investLink}
    Wait And Click  ${KU_W_USStocks}
    Wait And Click  ${KU_W_invest_USStocks_exploreBtn}
    Verify Import Now Banner  ${e_invest_USStocks_bannerText}  ${KU_W_postlogin_USStocks_linkYourVestedAcc}  ${e_postlogin_USStocks_linkYourVestedAcc}
    Verify Filter Selection For USStocks

 Verify Filter Selection For USStocks
    Wait And Click  ${KU_W_invest_USStocks_categoryBox}  
    # Iterate and verify all USStocks details 
    # Nested for loop is used as based on category subacategory is choosen and then validated
    FOR  ${i}  IN RANGE  1   15
        ${categoryName} =  Get Text  xpath=(//div[@class='b-stock-sector-filter__option'])[${i}]
        Scroll Untill View  xpath=(//div[@class='b-stock-sector-filter__option'])[${i}]
        Wait Scroll And Click Element  xpath=(//div[@class='b-stock-sector-filter__option'])[${i}]
        Sleep  2s
        Verify Page Contains Element  ${KU_W_invest_USStocks_category_subCategoryName}
        Wait And Click  ${KU_W_invest_USStocks_subcategoryBox} 
        ${subcategoryCount} =  Get Element Count  xpath=//div[@class='b-stock-sector-filter__label']
        FOR  ${j}  IN RANGE  1    ${subcategoryCount}+1
            ${subcategoryName} =  Get Text  xpath=(//div[@class='b-stock-sector-filter__label'])[${j}]
            Sleep  2s
            Wait And Click  xpath=(//div[@class='b-stock-sector-filter__label'])[${j}]
            Sleep  6s
            ${text} =  Set Variable  xpath=(//div[contains(text(),
            ${USStockName} =  Set Variable  '${subcategoryName}')])[2]
            ${USStkName} =  Set Variable  ${text}${USStockName}
            Verify Page Contains Element  ${USStkName}
            Scroll Untill View  xpath=(//div[@class='b-stock-sector-filter__label'])[${j}]
            Press Keys  xpath=(//div[@class='b-stock-sector-filter__label'])[${j}]  ARROW_DOWN  
        END
        Wait And Click  ${KU_W_invest_USStocks_categoryBox}
    END