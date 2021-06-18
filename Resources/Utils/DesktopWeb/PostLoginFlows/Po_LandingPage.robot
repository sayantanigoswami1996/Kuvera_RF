*** Keywords ***

PostLogin Feature Sub Header Navigation With KYC
    Log To Console  Features With KYC
    ${setAGoal}  Get Json Values  $.MenuHeaders.h4.fsh0  Resources/TestData/Headers.json
    ${tradeSmart}  Get Json Values  $.MenuHeaders.h4.fsh1  Resources/TestData/Headers.json
    ${familyAccount}  Get Json Values  $.MenuHeaders.h4.fsh2  Resources/TestData/Headers.json
    ${manageAccount}  Get Json Values  $.MenuHeaders.h4.fsh3  Resources/TestData/Headers.json
    ${taxHarvesting}  Get Json Values  $.MenuHeaders.h4.fsh4  Resources/TestData/Headers.json
    ${savesTaxes}  Get Json Values  $.MenuHeaders.h4.fsh5  Resources/TestData/Headers.json
    FOR  ${k}  IN RANGE  1  7
        Wait And Click  ${KU_W_featureLink} 
        Sleep  1s
        ${subHeaders} =  Get Text  xpath=//ul[@class='dropdown-menu dropdown-menu-right dropdown-custom-box']//li[${k}]
        Log To Console  ${subHeaders}
        IF  ['${subHeaders}'] == ${setAGoal}  
            Verify PostLogin Set A Goal Menu Navigation
        ELSE IF  ['${subHeaders}'] == ${tradeSmart}   
            Verify PostLogin Trade Smart Menu Navigation
        ELSE IF  ['${subHeaders}'] == ${familyAccount}  
            Verify PostLogin Family Account Menu Navigation
        ELSE IF  ['${subHeaders}'] == ${manageAccount}  
            Verify PostLogin Manage Account Menu Navigation
        ELSE IF  ['${subHeaders}'] == ${taxHarvesting}  
            Verify PostLogin Tax Harvesting Menu Navigation
        ELSE IF  ['${subHeaders}'] == ${savesTaxes}  
            Verify PostLogin Save Taxes Menu Navigation
        ELSE  
            Log To Console  Completed
        END
    END

PostLogin Feature Sub Header Navigation Without KYC
    Log To Console  Features Without KYC
    # TradeSmart
    Verify PostLogin Trade Smart Menu Navigation Without KYC
    # Manage Account
    Verify PostLogin Manage Account Menu Navigation Without KYC
    # Tax Harvesting
    Verify PostLogin Tax Harvesting Menu Navigation Without KYC