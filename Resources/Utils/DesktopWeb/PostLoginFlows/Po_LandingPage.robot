*** Keywords ***

PostLogin Feature Sub Header Navigation
    Log To Console  Features
    ${setAGoal}  Get Json Values  $.MenuHeaders.h4.fsh0  Resources/TestData/Headers.json
    ${tradeSmart}  Get Json Values  $.MenuHeaders.h4.fsh1  Resources/TestData/Headers.json
    ${familyAccount}  Get Json Values  $.MenuHeaders.h4.fsh2  Resources/TestData/Headers.json
    ${manageAccount}  Get Json Values  $.MenuHeaders.h4.fsh3  Resources/TestData/Headers.json
    ${taxHarvesting}  Get Json Values  $.MenuHeaders.h4.fsh4  Resources/TestData/Headers.json
    ${savesTaxes}  Get Json Values  $.MenuHeaders.h4.fsh5  Resources/TestData/Headers.json
    FOR  ${k}  IN RANGE  2  7
        Wait And Click  ${KU_W_featureLink} 
        Sleep  1s
        ${subHeaders} =  Get Text  xpath=//ul[@class='dropdown-menu dropdown-menu-right dropdown-custom-box']//li[${k}]
        Log To Console  ${subHeaders}
        IF  ['${subHeaders}'] == ${setAGoal}  
            Verify PostLogin Set A Goal Menu Navigation
        ELSE IF  ['${subHeaders}'] == ${tradeSmart}   
            Verify PostLogin Trade Smart Menu Navigation
        ELSE IF  ['${subHeaders}'] == ${familyAccount}  
            Log To Console  Pending
        ELSE IF  ['${subHeaders}'] == ${manageAccount}  
            Log To Console  Pending
        ELSE IF  ['${subHeaders}'] == ${taxHarvesting}  
            Log To Console  Pending
        ELSE IF  ['${subHeaders}'] == ${savesTaxes}  
            Log To Console  Pending
        ELSE  
            Log To Console  Completed
        END
    END
