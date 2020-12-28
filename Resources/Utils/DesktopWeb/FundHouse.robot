*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify All Fund House Details
    Wait For Element Visibility  ${KU_W_fundHouse_title}
    Scroll Untill View  ${KU_W_fundHouse_title}
    ${fundHouseList} =  Get Element Count  xpath=//a[@class='b-fund-house__list__column__item']
    Log To Console  ${fundHouseList}
    FOR  ${i}  IN RANGE  1   5
        ${fundHouseName} =  Get Text  xpath=(//a[@class='b-fund-house__list__column__item'])[${i}]
        Log To Console  ${fundHouseName}
        Click Element  xpath=(//a[@class='b-fund-house__list__column__item'])[${i}]
        Sleep  2s
        # Get all the expected texts to be validated from json file 
        ${fundHouseName}  Get Json Values  $.FundHouse..fh${i}name  Resources/TestData/FundHouse.json
        ${expectedfundHouseName} =  Convert To String  ${fundHouseName}
        Log To Console  ${expectedfundHouseName}
        ${fundHouseHeader}  Get Json Values  $.FundHouse..fh${i}header  Resources/TestData/FundHouse.json
        ${expectedfundHouseHeader} =  Convert To String  ${fundHouseHeader}
        ${expectedHeader1} =  Replace String  ${expectedfundHouseHeader}  ’  '
        ${expectedHeader2} =  Replace String  ${expectedHeader1}  â€™  '
        Log To Console  ${expectedHeader2}
        ${fundHouseRTA}  Get Json Values  $.FundHouse..fh${i}RTA  Resources/TestData/FundHouse.json
        ${expectedFundHouseRTA} =  Convert To String  ${fundHouseRTA}
        Log To Console  ${expectedFundHouseRTA}
        ${fundHouseWebsite}  Get Json Values  $.FundHouse..fh${i}website  Resources/TestData/FundHouse.json
        ${expectedFundHouseWebsite} =  Convert To String  ${fundHouseWebsite}
        Log To Console  ${expectedFundHouseWebsite}
        ${fundHouseAddress}  Get Json Values  $.FundHouse..fh${i}address  Resources/TestData/FundHouse.json
        ${expectedFundHouseAddress} =  Convert To String  ${fundHouseAddress}
        Log To Console  ${expectedFundHouseAddress}
        ${fundHousePhone}  Get Json Values  $.FundHouse..fh${i}phone  Resources/TestData/FundHouse.json
        ${expectedFundPhone} =  Convert To String  ${fundHousePhone}
        Log To Console  ${expectedFundPhone}
        ${fundHouseEmail}  Get Json Values  $.FundHouse..fh${i}email  Resources/TestData/FundHouse.json
        ${expectedFundHouseEmail} =  Convert To String  ${fundHouseEmail}
        Log To Console  ${fundHouseEmail}
        ${fundHouseInvestorLogin}  Get Json Values  $.FundHouse..fh${i}investorlogin  Resources/TestData/FundHouse.json
        ${expectedFundHouseInvestorLogin} =  Convert To String  ${fundHouseInvestorLogin}
        Log To Console  ${expectedFundHouseInvestorLogin}
        ${fundManagedBy}  Get Json Values  $.FundHouse..fh${i}fundmanaged  Resources/TestData/FundHouse.json
        ${expectedFundManagedBy} =  Convert To String  ${fundManagedBy}
        Log To Console  ${expectedFundManagedBy}
        
        #Logo
        Wait For Element Visibility  ${KU_W_fundHouse_fundLogo}
        Verify Page Contains Image  ${KU_W_fundHouse_fundLogo}
        # Page Title and header 
        ${actualFundName} =  Get Text  ${KU_W_fundHouse_fundName}
        Compare Text Values  ${actualFundName}  ${expectedfundHouseName}
        ${actualFundIntroDesc} =  Get Text  ${KU_W_fundHouse_fundIntroDesc}  
        ${actualFundIntro1} =  Replace String  ${actualFundIntroDesc}  ’  '
        Compare Text Values  ${actualFundIntro1}  ${expectedfundHouseHeader}
        # RTA
        Wait For Element Visibility  ${KU_W_fundHouse_RTAHeader}
        Verify Element And Text  ${KU_W_fundHouse_RTAHeader}  ${e_RTAHeader}
        ${actualRTA} =  Get Text  ${KU_W_fundHouse_RTADesc}  
        Compare Text Values  ${actualRTA}  ${expectedFundHouseRTA}
        # Website
        Wait For Element Visibility  ${KU_W_fundHouse_websiteHeader}
        Verify Element And Text  ${KU_W_fundHouse_websiteHeader}  ${e_websiteHeader}
        ${actualWebsite} =  Get Text  ${KU_W_fundHouse_websiteURL} 
        Compare Text Values  ${actualWebsite}  ${expectedFundHouseWebsite}
        Click Element  ${KU_W_fundHouse_websiteLink}
        Switch To Window
        Sleep  5s
        # Address
        Scroll And Wait  ${KU_W_fundHouse_addressHeader}
        Verify Element And Text  ${KU_W_fundHouse_addressHeader}  ${e_addressHeader}
        ${actualAddress} =  Get Text  ${KU_W_fundHouse_addressDesc} 
        Compare Text Values  ${actualAddress}  ${expectedFundHouseAddress}
        # Phone Number
        Scroll And Wait  ${KU_W_fundHouse_phoneNumHeader}
        Verify Element And Text  ${KU_W_fundHouse_phoneNumHeader}  ${e_phoneNumHeader}
        ${actualPhoneNumber} =  Get Text  ${KU_W_fundHouse_phoneNumber}
        Compare Text Values  ${actualPhoneNumber}  ${expectedFundPhone}
        # Contact Email
        Scroll And Wait  ${KU_W_fundHouse_emailHeader}
        Verify Element And Text  ${KU_W_fundHouse_emailHeader}  ${e_emailHeader}
        ${actualcompanyEmail} =  Get Text  ${KU_W_fundHouse_companyEmail}
        Compare Text Values  ${actualcompanyEmail}  ${expectedFundHouseEmail}
        # Investor Login
        Scroll And Wait  ${KU_W_fundHouse_investorLoginHeader}
        Verify Element And Text  ${KU_W_fundHouse_investorLoginHeader}  ${e_investorLoginHeader}
        ${actualInvestorLoginURL} =  Get Text  ${KU_W_fundHouse_investorLoginURL}
        Compare Text Values  ${actualInvestorLoginURL}  ${expectedFundHouseInvestorLogin}
        Click Element  ${KU_W_fundHouse_investorLoginLink}
        Switch To Window
        Sleep  5s
        # Fund House Managed
        Wait For Element Visibility  ${KU_W_fundHouse_fundManagedHeader}
        ${actualFundManagedBy} =  Get Text  ${KU_W_fundHouse_fundManagedHeader}
        Compare Text Values  ${actualFundManagedBy}  ${expectedFundManagedBy}
        Go Back
    END

        

   