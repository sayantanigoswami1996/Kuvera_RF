*** Keywords ***

Verify PostLogin MF Menu Navigation
    Log To Console  Mutual Fund
    Verify PreLogin Mutual Fund Landing Page
    Wait And Click  ${KU_W_mutualFund}
    Verify Import Now Banner 
    Verify Filter Selection For MF
    Verify Buying Of SIP
    Verify Add To Cart And Buy Lumpsum

Verify Buying Of SIP
    Search For MF 
    Wait For Element Visibility  ${KU_W_invest_mf_sipAmountTxt}
    Input Text  ${KU_W_invest_mf_sipAmountTxt}  ${e_invest_mf_sipAmount}
    Wait Scroll And Click Element  ${KU_W_invest_mf_investNowButton}
    Wait And Click  ${KU_W_invest_mf_openDrpdownImg}
    Wait And Click  ${KU_W_invest_mf_dateOnOrderSIP}
    Wait And Click  ${KU_W_invest_mf_newFolioLink}
    Wait And Click  ${KU_W_invest_mf_continueFolio}
    Wait And Click  ${KU_W_postlogin_placeOrder} 
    Wait And Click  ${KU_W_invest_mf_accBox} 
    Wait And Click  ${KU_W_invest_mf_oneClickBox}
    Wait And Click  ${KU_W_invest_mf_setOneClickBtn} 
    Wait And Click  ${KU_W_invest_mf_continueToOrderBtn}
    Wait And Click  ${KU_W_invest_mf_placeOrdersBtn}
    Wait And Click  ${KU_W_invest_mf_continueBtn}
    Verify Payment 

Search For MF 
    @{mutualFundName} =  Get Json Values  $.MutualFunds.f2  Resources/TestData/MutualFunds.json 
    Log To Console  ${mutualFundName}
    Search Fund and Verify  ${mutualFundName} 
    Wait And Click  ${KU_W_invest_mf_fundName}

Verify Payment 
    Wait And Click  ${KU_W_postlogin_netBankingOption}
    Wait And Click  ${KU_W_postlogin_proceedToPay}
    Wait And Click  ${KU_W_postlogin_chooseBank}
    Wait And Click  ${KU_W_postlogin_payNow}
    Wait And Click  ${KU_W_postlogin_goBackBtn}
    Go Back

Verify Add To Cart And Buy Lumpsum
    Wait For Element Visibility  ${KU_W_invest_mf_lumpsumAmountTxt}
    Input Text  ${KU_W_invest_mf_lumpsumAmountTxt}  ${e_invest_mf_lumpsumAmount}
    Wait Scroll And Click Element  ${KU_W_invest_mf_addToCartButton}
    Wait And Click  ${KU_W_postlogin_cartBtn}
    Verify Page Contains Element  ${KU_W_invest_mf_orderSummary}
    Wait And Click  ${KU_W_invest_mf_newFolioLink}
    Wait And Click  ${KU_W_invest_mf_continueFolio}
    Wait And Click  ${KU_W_postlogin_placeOrder}
    Wait And Click  ${KU_W_invest_mf_continueBtn}
    Verify Payment 

Verify Filter Selection For MF
    Wait And Click  ${KU_W_invest_mf_categoryBox}
    ${categoryCount} =  Get Element Count  xpath=//div[@class='b-fund-category-filter__option']   
    # Iterate and verify all fund house details 
    FOR  ${i}  IN RANGE  2   ${categoryCount}+1
        ${categoryName} =  Get Text  xpath=(//div[@class='b-fund-category-filter__option'])[${i}]
        Wait Scroll And Click Element  xpath=(//div[@class='b-fund-category-filter__option'])[${i}]
        Verify Element And Text  ${KU_W_invest_mf_categoryName}  ${categoryName}
        Wait And Click  ${KU_W_invest_mf_subcategoryBox} 
        ${subcategoryCount} =  Get Element Count  xpath=//div[@class='b-fund-category-filter__label']
        FOR  ${j}  IN RANGE  2    ${subcategoryCount}+1
            ${subcategoryName} =  Get Text  xpath=(//div[@class='b-fund-category-filter__label'])[${j}]
            Wait And Click  xpath=(//div[@class='b-fund-category-filter__label'])[${j}]
            Sleep  1s
            Verify Element And Text  ${KU_W_invest_mf_subcategoryName}  ${subcategoryName} 
            Press Keys  xpath=(//div[@class='b-fund-category-filter__label'])[${j}]  ARROW_DOWN   
        END
        Wait And Click  ${KU_W_invest_mf_categoryBox}
    END

Verify Import Now Banner 
    Scroll Untill View  ${KU_W_invest_mf_bannerText}
    Verify Element And Text  ${KU_W_invest_mf_bannerText}  ${e_invest_mf_bannerText}
    Wait And Click  ${KU_W_invest_mf_importNow}
    Verify Element And Text  ${KU_W_invest_mf_importExternalFunds}  ${e_invest_mf_importExternalFunds}
    Go Back