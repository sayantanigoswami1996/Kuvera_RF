*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Resource    ../../../AppLocators/DesktopWeb/MenuNavigationLocators.robot
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot
Resource    ../../../Resources/Utils/DesktopWeb/Common.robot

*** Keywords ***

Verify Widgets
  Verify Mutual Funds Widgets 
  Verify Fund Houses
  Verify Features Widgets 
  Verify Summary Tab Widgets

Verify Mutual Funds Widgets
  Verify Language Switch Login And Signup Link
  Verify Element And Text  ${KU_W_mf_welcomeTitle}  ${e_mfWelcomeTitle}
  Verify Element And Text  ${KU_W_mf_welcomeText}  ${e_mf_welcomeText}
  Verify Element And Text  ${KU_W_mf_category}  ${e_mfCategory} 
  Verify Element And Text  ${KU_W_mf_subcategory}  ${e_mfSubCategory}
  Wait For Element Visbility  ${KU_W_fund_list} 
  Verify Page Contains Element  ${KU_W_fund_list} 
  Verify Element And Text  ${KU_W_loginButton}  ${e_login}
  Verify Element And Text  ${KU_W_signUpButton}  ${e_signup}
  Verify Element And Text  ${KU_W_coreaua_val}  ${e_coreAUAValue}
  Verify Element And Text  ${KU_W_coreaua_text}  ${e_coreAUAText}       
  Verify Element And Text  ${KU_W_cities_val}  ${e_citiesValue} 
  Verify Element And Text  ${KU_W_cities_text}  ${e_citiesText}
  Verify Element And Text  ${KU_W_trans_val}  ${e_transValue}
  Verify Element And Text  ${KU_W_trans_text}  ${e_transText}
  Verify Page Contains Image  ${KU_W_mf_listIcon}
  Scroll Element Into View  ${KU_W_explore_MF}
  Verify Page Contains Element  ${KU_W_explore_MF}
  Verify Google Play & Apple Store Icons
  Verify Page Contains Element  ${KU_W_faqbot_icon}

Verify Features Widgets
  Scroll Element Into View  ${KU_W_exploreELSS}
  Verify Element And Text  ${KU_W_exploreELSS}  ${e_exploreELSSfundsBtn}
  Verify Element And Text  ${KU_W_startHarvest}  ${e_startHarvestingBtn} 
  Verify Element And Text  ${KU_W_switchToday}  ${e_switchTodayBtn}
  Click Element  ${KU_W_next_button} 
  Sleep  1s
  Verify Element And Text  ${KU_W_upgrade_familyAccount}    ${e_upgradeFamilyAccountBtn}
  Verify Element And Text  ${KU_W_consolidate_track}  ${e_consolidateTrackBtn}
  Verify Element And Text  ${KU_W_manage_today}  ${e_manageTodayBtn}
  Click Element  ${KU_W_next_button} 
  Sleep  1s
  Verify Element And Text  ${KU_W_set_a_goal}  ${e_setAGoalBtn} 
  Verify Element And Text  ${KU_W_send_money}  ${e_sendMoneyBtn}

Verify Summary Tab Widgets
  Verify Element And Text  ${KU_W_summary_msg}  ${e_summaryHeader}
  Page Should Contain Link  ${KU_W_summary_learn}         
  Scroll Element Into View  ${KU_W_care_title}            
  Verify Element And Text  ${KU_W_care_title}  ${e_careTitle}
  Scroll Element Into View  ${KU_W_care_info_msg}
  Verify Element And Text  ${KU_W_care_info_msg}  ${e_careInfoMsg} 
  Verify Page Contains Link  ${KU_W_careInfoEmailLink}  ${e_emailLink}
  Verify Page Contains Element  ${KU_W_advice_Title}          
  Verify Element And Text  ${KU_W_advice_content}  ${e_adviceContent} 
  Verify Page Contains Link  ${KU_W_advice_team}  ${e_careTitle}
  Scroll Element Into View  ${KU_W_why_startInvesing}
  # Below 'Start investing' should be changed to ${e_startInvestingBtn} once bug is fixed
  Verify Element And Text  ${KU_W_why_startInvesing}     Start investing 
  Verify Page Contains Element  ${KU_W_happyUsers}            
  Scroll Element Into View  ${KU_W_users_love}
  Verify Element And Text  ${KU_W_users_love}  ${e_usersLove}
  Verify Element And Text  ${KU_W_users_msg}  ${e_usersMsg}
  Verify Element And Text  ${KU_W_earn_title}  ${e_earnTitle} 
  Scroll Element Into View  ${KU_W_earn_msg}
  Verify Element And Text  ${KU_W_earn_msg}  ${e_earnMsg} 
  Verify Element And Text  ${KU_W_earn_learnLink}  ${e_earnLearnLink} 
  Scroll Element Into View  ${KU_W_start_investButton}
  Verify Element And Text  ${KU_W_start_investButton}  ${e_startInvestingBtn}

Verify Fund Houses
  Scroll Element Into View  ${KU_W_fundHouse_title}
  @{fundHouses_list1} =  Get WebElements  ${KU_W_fundHouses_firstColumn}
  #Validation of Fund Houses List on the first column
  Compare Lists  ${fundHouses_list1}  ${e_fndHouse_firstColumn}
  #Validation of Fund Houses List on the second column
  @{fundHouses_list2} =  Get WebElements  ${KU_W_fundHouses_secondColumn}
  Compare Lists  ${fundHouses_list2}  ${e_fndHouse_secondColumn}





   
  

  

