*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Library     String
Library     OperatingSystem
Library     Collections

Suite Setup  Launch URL 
Suite Teardown  Close All Browsers
*** Variables ***
# Feature - Set a Goal

# Feature - Set a Goal
${e_feature_sg_screenTitle} =  SET YOUR GOAL
${e_feature_sg_screenSubTitle} =  We'll help you bring your dreams to life.
${e_feature_sg_content} =  Setting a financial goal is the first step to making your dreams a reality. Investing regularly is the next. We make it really simple for you, and we’re with you every step of the way. Simply choose your goal to get started.
# Goal - Own A Home
${e_feature_sg_userName} =  Test
${e_feature_sg1_userAge} =  27
${e_feature_sg1_cost} =  5000000
${e_feature_sg1_goalDuration} =  2
${e_feature_sg1_downPayment} =  15
${e_feature_sg1_investUpfront} =  5000
# Goal - Buy A Car
${e_feature_sg2_userAge} =  30
${e_feature_sg2_cost} =  4200000
${e_feature_sg2_goalDuration} =  5
${e_feature_sg2_investUpfront} =  1000
# Goal - Save Tax
${e_feature_sg3_userAge} =  25
${e_feature_sg3_montlyInvest} =  3000
${e_feature_sg3_goalDuration} =  7
${e_feature_sg3_investUpfront} =  500
# Goal - Retire Easy
${e_feature_sg4_userAge} =  25
${e_feature_sg4_montlyExpense} =  57000
${e_feature_sg4_retireAge} =  60
${e_feature_sg4_investUpfront} =  3800
# Goal - 25 Anniversay
${e_feature_sg5_userAge} =  25
${e_feature_sg5_cost} =  100000
${e_feature_sg5_goalDuration} =  27
${e_feature_sg5_investUpfront} =  0
# Goal - Foreign Vacation
${e_feature_sg6_userAge} =  25
${e_feature_sg6_cost} =  350000
${e_feature_sg6_goalDuration} =  5
${e_feature_sg6_investUpfront} =  2000
# Goal - Educate My Child
${e_feature_sg7_userAge} =  25
${e_feature_sg7_cost} =  500000
${e_feature_sg7_goalDuration} =  10
${e_feature_sg7_investUpfront} =  1000
# Goal - Create My Own
${e_feature_sg8_userAge} =  25
${e_feature_sg8_goalName} =  For a rainy day
${e_feature_sg8_cost} =  50000
${e_feature_sg8_goalDuration} =  2
${e_feature_sg8_investUpfront} =  500
${e_feature_sg_almostDone} =  Almost done! Let’s personalise your plan.
${e_feature_sg_seeYourPlan} =  SEE YOUR PLAN
${e_feature_sg_getThisPlan} =  GET THIS PLAN

${KU_W_featureLink} =  xpath=//a[contains(text(),'Features')]
${KU_W_close} =  xpath=//button[@class='button-primary b-regulatory-disclosure__btn']
${KU_W_feature_setAGoalLink} =  xpath=//a[contains(text(),'Set a Goal')]
${KU_W_feature_goalsList} =  xpath=//*[@class='cards']/a/p
${KU_W_feature_sg_screenTitle} =  xpath=//*[@class='goals-index col-sm-4']/h2
${KU_W_feature_sg_screenSubTitle} =  xpath=//*[@class='goals-index col-sm-4']/h1
${KU_W_feature_sg_content} =  xpath=//p[@class='hidden-xs']
${KU_W_feature_sg_ownAHome} =  xpath=(//p[@class='card-title'])[1]
${KU_W_feature_sg_buyACar} =  xpath=(//p[@class='card-title'])[2]
${KU_W_feature_sg_saveTax} =  xpath=(//p[@class='card-title'])[3]
${KU_W_feature_sg_retireEasy} =  xpath=(//p[@class='card-title'])[4]
${KU_W_feature_sg_25thAnniversary} =  xpath=(//p[@class='card-title'])[5]
${KU_W_feature_sg_foreignVacation} =  xpath=(//p[@class='card-title'])[6]
${KU_W_feature_sg_educateMyChild} =  xpath=(//p[@class='card-title'])[7]
${KU_W_feature_sg_createMyOwn} =  xpath=(//p[@class='card-title'])[8]
${KU_W_feature_sg_questionScreen} =  id=title-box
${KU_W_feature_sg_titleBoxSection} =  id=p9e7d2f05349193e9421e568b092da688e5010650-container
${KU_W_feature_sg_Q_goalName} =  xpath=//*[@id="title-box"]/h2
${KU_W_feature_sg_Q_userName} =  xpath=(//p[@class='question'])[1]
${KU_W_feature_sg_Q_userAge} =  xpath=(//p[@class='question'])[2]
${KU_W_feature_sg_Q3} =  xpath=(//p[@class='question'])[3]
${KU_W_feature_sg_Q4} =  xpath=(//p[@class='question'])[4]
${KU_W_feature_sg_Q5} =  xpath=(//p[@class='question'])[5]
${KU_W_feature_sg_Q6} =  xpath=(//p[@class='question'])[6]
${KU_W_feature_sg_Q7} =  xpath=(//p[@class='question'])[7]
${KU_W_feature_sg_userNameTxt} =  xpath=//input[@name='username']
${KU_W_feature_sg_userAgeTxt} =  xpath=//input[@name='userage']
${KU_W_feature_sg_homeCostTxt} =  xpath=//input[@name='costofhome']
${KU_W_feature_sg_goalDurationTxt} =  xpath=//input[@name='goalduration']
${KU_W_feature_sg_yes} =  xpath=//button[@class='btn btn-lg btn-custom btn-custom-yes']
${KU_W_feature_sg_no} =  xpath=//button[@class='btn btn-lg btn-custom btn-custom-no btn-danger']
${KU_W_feature_sg_downPaymentTxt} =  xpath=//input[@name='downpayment']
${KU_W_feature_sg_investUpfrontTxt} =  xpath=//input[@name='upfront']
${KU_W_feature_sg_almostDone} =  xpath=//div[@class='risk-profile-heading']/h2
${KU_W_feature_sg_married} =  xpath=///p[contains(text(),'MARRIED')]
${KU_W_feature_sg_dependents} =  xpath=///p[contains(text(),'DEPENDENTS (KIDS/ELDERS)')]
${KU_W_feature_sg_continue} =  xpath=//button[@class='btn in-btn']
${KU_W_feature_sg_investmentSummary} =  xpath=//*[@class='investment-summary']
${KU_W_feature_sg_seeYourPlan} =  xpath=//button[@class='btn in-btn']
${KU_W_feature_sg_getThisPlan} =  xpath=//button[@class='btn in-btn hidden-xs']
${KU_W_feature_sg_closeBtn} =  xpath=//a[@class='header-actions close-nav close-btn active']
${KU_W_feature_sg_costTxt} =  xpath=//input[@name='costtoday'] 
${KU_W_feature_sg_monthlyInvestTxt} =  xpath=//input[@name='sip']
${KU_W_feature_sg_monthlyExpenseTxt} =  xpath=//input[@name='expense']
${KU_W_feature_sg_retireAgeTxt} =  xpath=//input[@name='retireage']
${KU_W_feature_sg_goalNameTxt} =  xpath=//input[@name='goalname']
*** Keywords ***
Launch URL
    Open Browser  ${URL}  ${BROWSER}  alias=Kuvera
    #Maximize Browser Window
    Set Window Size  ${1366}  ${768}
    Reload Page
Verify Question And Enter Input
    [Arguments]  ${actualQTitle}  ${expectedQTitle}  ${inputTxtField}  ${inputValue}
    Click Element  ${inputTxtField}
    Clear Text Field  ${inputTxtField}
    Input Text  ${inputTxtField}  ${inputValue}  clear=True
    Press Enter Key  ${inputTxtField}

Wait For Element Visibility
    [Arguments]  ${element}
    Wait Until Element Is Visible  ${element}  timeout=50

Get Json Values
    [Arguments]  ${jsonPath}  ${jsonFilePath}
    ${jsonFile}  Load JSON From File  ${jsonFilePath}
    ${jsonValue}  Get Value From Json  ${jsonFile}  ${jsonPath}
    [Return]  ${jsonValue}
    
Press Enter Key
    [Arguments]  ${element}  
    Press Keys  ${element}  ENTER

Clear Text Field
    [Arguments]  ${field}
    Sleep  1s
    #Press Keys  ${field}  COMMAND+A  DELETE
    ${fieldText} =  Get Value  ${field}
    ${fieldTextLen} =  Get Length  ${fieldText} 
    #Log To Console  ${fieldText}
    #Log To Console  ${fieldTextLen}
    Run Keyword If    """${fieldText}""" != ''    # if there's no current value - no need to slow down by an extra SE call
    ...     Repeat Keyword  ${fieldTextLen}  Press Keys  ${field}   \\08  
Verify Retire Easy Questionnaire
    Click Element  ${KU_W_featureLink}
    Wait For Element Visibility  ${KU_W_feature_setAGoalLink}
    Click Element  ${KU_W_feature_setAGoalLink}
    ${query1}  Get Json Values  $.Questionnaire..g4q1  Resources/TestData/Questionnaire.json 
    ${query2}  Get Json Values  $.Questionnaire..g4q2  Resources/TestData/Questionnaire.json 
    ${query3}  Get Json Values  $.Questionnaire..g4q3  Resources/TestData/Questionnaire.json 
    ${query4}  Get Json Values  $.Questionnaire..g4q4  Resources/TestData/Questionnaire.json 
    ${query5}  Get Json Values  $.Questionnaire..g4q5  Resources/TestData/Questionnaire.json 
    Wait For Element Visibility  ${KU_W_feature_sg_retireEasy}
    Click Element  ${KU_W_feature_sg_retireEasy}
    Wait For Element Visibility  ${KU_W_feature_sg_questionScreen}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q_userName}  ${query1}  ${KU_W_feature_sg_userNameTxt}  ${e_feature_sg_userName}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q_userAge}  ${query2}  ${KU_W_feature_sg_userAgeTxt}  ${e_feature_sg4_userAge}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q3}  ${query3}  ${KU_W_feature_sg_monthlyExpenseTxt}  ${e_feature_sg4_montlyExpense}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q4}  ${query4}  ${KU_W_feature_sg_retireAgeTxt}  ${e_feature_sg4_retireAge}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q5}  ${query5}  ${KU_W_feature_sg_investUpfrontTxt}  ${e_feature_sg4_investUpfront}
    Verify Recommendation And Navigation    
***Test Cases***
Goal And Questionnaire Navigation Test
    [Tags]  TC01
    Wait Until Element Is Visible  ${KU_W_close}
    Click Element  ${KU_W_close}
    Verify Retire Easy Questionnaire