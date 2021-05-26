*** Keywords ***

Verify PostLogin Stocks Menu Navigation
    Verify PreLogin Stocks Landing Page
    Wait And Click  ${KU_W_stocks}
    Verify Import Now Banner  ${e_invest_stocks_bannerText}  ${KU_W_postlogin_stocks_importStocksPopup}  ${e_postlogin_stocks_importPopup}
    Verify Filter Selection For Stocks
    
Verify Filter Selection For Stocks
    Wait And Click  ${KU_W_invest_stocks_categoryBox}
    ${categoryCount} =  Get Element Count  xpath=//div[@class='b-stock-sector-filter__option']   
    # Iterate and verify all stocks details 
    # Nested for loop is used as based on category subacategory is choosen and then validated
    FOR  ${i}  IN RANGE  1   ${categoryCount}+1
        ${categoryName} =  Get Text  xpath=(//div[@class='b-stock-sector-filter__option'])[${i}]
        Scroll Untill View  xpath=(//div[@class='b-stock-sector-filter__option'])[${i}]
        Wait Scroll And Click Element  xpath=(//div[@class='b-stock-sector-filter__option'])[${i}]
        Sleep  2s
        Verify Page Contains Element  ${KU_W_invest_stocks_category_subcategoryName}
        Wait And Click  ${KU_W_invest_stocks_subcategoryBox} 
        ${subcategoryCount} =  Get Element Count  xpath=//div[@class='b-stock-sector-filter__label']
        FOR  ${j}  IN RANGE  1    ${subcategoryCount}+1
            ${subcategoryName} =  Get Text  xpath=(//div[@class='b-stock-sector-filter__label'])[${j}]
            Sleep  2s
            Wait And Click  xpath=(//div[@class='b-stock-sector-filter__label'])[${j}]
            Sleep  6s
            ${isStocksVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_invest_stocks_category_subcategoryName}
            IF  ${isStocksVisible}
                Verify Element And Text  ${KU_W_invest_stocks_category_subcategoryName}  ${subcategoryName} 
                Press Keys  xpath=(//div[@class='b-stock-sector-filter__label'])[${j}]  ARROW_DOWN 
            ELSE
                Wait And Click   ${KU_W_postlogin_clearFiltersBtn} 
            END   
        END
        Wait And Click  ${KU_W_invest_stocks_categoryBox}
    END 