*** Variables ***
#Desired Capabilities
${loginURL}    https://kuvera.in/
${BROWSER}     Chrome

#Application Locator 'KU_<locatorName>'
${KU_Title}        Kuvera - Direct Mutual Funds | Stocks | Loans | Gold | Remit on Kuvera- Wealth Management Simplified
${KU_slider1} =    xpath=//*[@text="Go to slide 1"]
${KU_skip} =       xpath=//*[@text="Skip"]
${KU_logo} =       xpath=//*[@class='b-header__content__logo']
${KU_close} =      xpath=//button[@class='button-primary b-regulatory-disclosure__btn']
