*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin All Fund House Details
    Wait For Element Visibility  ${KU_W_fundHouse_title}
    Scroll Untill View  ${KU_W_fundHouse_title}
    
    # Get list count
    ${fundHouseListCount} =  Get Element Count  xpath=//a[@class='b-fund-house__list__column__item']
    
    # Iterate and verify all fund house details 
    FOR  ${i}  IN RANGE  1   ${fundHouseListCount}+1
        ${fundHouseName} =  Get Text  xpath=(//a[@class='b-fund-house__list__column__item'])[${i}]
        Log To Console  ${fundHouseName}
        Wait Scroll And Click Element  xpath=(//a[@class='b-fund-house__list__column__item'])[${i}]

        #Logo
        Wait For Element Visibility  ${KU_W_fh_fundLogo}
        Verify Page Contains Image  ${KU_W_fh_fundLogo}

        # Get all the expected details from json file 
        ${fundHouseName}  Get Json Values  $.FundHouse..fh${i}name  Resources/TestData/FundHouse.json
        ${fundHouseHeader}  Get Json Values  $.FundHouse..fh${i}header  Resources/TestData/FundHouse.json
        ${fundHouseRTA}  Get Json Values  $.FundHouse..fh${i}RTA  Resources/TestData/FundHouse.json
        ${fundHouseWebsite}  Get Json Values  $.FundHouse..fh${i}website  Resources/TestData/FundHouse.json
        ${fundHouseAddress}  Get Json Values  $.FundHouse..fh${i}address  Resources/TestData/FundHouse.json
        ${fundHousePhone}  Get Json Values  $.FundHouse..fh${i}phone  Resources/TestData/FundHouse.json
        ${fundHouseEmail}  Get Json Values  $.FundHouse..fh${i}email  Resources/TestData/FundHouse.json
        ${fundHouseInvestorLogin}  Get Json Values  $.FundHouse..fh${i}investorlogin  Resources/TestData/FundHouse.json
        ${fundManagedBy}  Get Json Values  $.FundHouse..fh${i}fundmanaged  Resources/TestData/FundHouse.json

        # Fund house name
        ${expectedfundHouseName} =  Convert To String  ${fundHouseName}
        ${actualFundName} =  Get Text  ${KU_W_fh_fundName}
        Compare Text Values  ${actualFundName}  ${expectedfundHouseName}
        
       # Fund house header
        ${expectedFundHouseHeader} =  Convert To String  ${fundHouseHeader}
        ${expectedHeader1} =  Replace Characters  ${expectedFundHouseHeader}  ’  '
        ${expectedHeader2} =  Replace Characters  ${expectedHeader1}  â€™  '
        ${expectedHeader3} =  Replace Characters  ${expectedHeader2}  "  ' 
        ${actualHeader} =  Get Text  ${KU_W_fh_fundIntroDesc}
        ${actualHeader1} =  Replace Characters  ${actualHeader}  ’  '
        ${actualHeader2} =  Replace Characters  ${actualHeader1}  â€™  '
        ${actualHeader3} =  Replace Characters   ${actualHeader2}  "  '
        Compare Text Values  ${actualHeader3}  ${expectedHeader3}
 
        # Registrar and Transfer Agent (RTA)
        ${expectedFundHouseRTA} =  Convert To String  ${fundHouseRTA}
        Wait For Element Visibility  ${KU_W_fh_RTAHeader}
        Verify Element And Text  ${KU_W_fh_RTAHeader}  ${e_RTAHeader}
        ${actualRTA} =  Get Text  ${KU_W_fh_RTADesc}
        Compare Text Values  ${actualRTA}  ${expectedFundHouseRTA}

        # Website
        ${expectedFundHouseWebsite} =  Convert To String  ${fundHouseWebsite}
        Wait For Element Visibility  ${KU_W_fh_websiteHeader}
        Verify Element And Text  ${KU_W_fh_websiteHeader}  ${e_websiteHeader}
        ${actualWebsite} =  Get Text  ${KU_W_fh_websiteURL} 
        Compare Text Values  ${actualWebsite}  ${expectedFundHouseWebsite}
        Run Keyword If  '${actualWebsite}' == '${EMPTY}'  Log To Console  Continue
        ...   ELSE  Click Link And Switch Window  ${KU_W_fh_websiteLink}
        Sleep  5s

        # Address
        ${expectedFundHouseAddress} =  Convert To String  ${fundHouseAddress}
        Scroll And Wait  ${KU_W_fh_addressHeader}
        Verify Element And Text  ${KU_W_fh_addressHeader}  ${e_addressHeader}
        ${actualAddress} =  Get Text  ${KU_W_fh_addressDesc}
        ${expectedAddress1} =  Replace Characters  ${expectedFundHouseAddress}  \\n  ${\n}
        Compare Text Values  ${actualAddress}  ${expectedAddress1}

        # Phone Number
        ${expectedFundPhone} =  Convert To String  ${fundHousePhone}
        Scroll And Wait  ${KU_W_fh_phoneNumHeader}
        Verify Element And Text  ${KU_W_fh_phoneNumHeader}  ${e_phoneNumHeader}
        ${actualPhoneNumber} =  Get Text  ${KU_W_fh_phoneNumber}
        Compare Text Values  ${actualPhoneNumber}  ${expectedFundPhone}

        # Email
        ${expectedFundHouseEmail} =  Convert To String  ${fundHouseEmail}
        Scroll And Wait  ${KU_W_fh_emailHeader}
        Verify Element And Text  ${KU_W_fh_emailHeader}  ${e_emailHeader}
        ${actualcompanyEmail} =  Get Text  ${KU_W_fh_companyEmail}
        Compare Text Values  ${actualcompanyEmail}  ${expectedFundHouseEmail}

        # Investor Login
        ${expectedFundHouseInvestorURL} =  Convert To String  ${fundHouseInvestorLogin}
        Scroll And Wait  ${KU_W_fh_investorLoginHeader}
        Verify Element And Text  ${KU_W_fh_investorLoginHeader}  ${e_investorLoginHeader}
        ${actualInvestorLoginURL} =  Get Text  ${KU_W_fh_investorLoginURL}
        Compare Text Values  ${actualInvestorLoginURL}  ${expectedFundHouseInvestorURL}
        Run Keyword If  '${actualInvestorLoginURL}' == '${EMPTY}'  Log To Console  Continue
        ...   ELSE  Click Link And Switch Window  ${KU_W_fh_investorLoginLink}

        # Funds managed 
        ${expectedFundManagedBy} =  Convert To String  ${fundManagedBy}
        Wait For Element Visibility  ${KU_W_fh_fundManagedHeader}
        ${actualFundManagedBy} =  Get Text  ${KU_W_fh_fundManagedHeader}
        Compare Text Values  ${actualFundManagedBy}  ${expectedFundManagedBy}
        Go Back
        Log To Console  ******************
    END
