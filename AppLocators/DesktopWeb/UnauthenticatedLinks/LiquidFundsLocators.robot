*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_lf_url} =  https://staging2.kuvera.in/#/landing/liquid-funds
${e_lf_liquidFundHeader} =  KUVERA SUPER SAVER PLAN
${e_lf_liquidFundSubHeader} =  Earn 6-9% per year. Liquid & safe.
${e_lf_earn6-9%Header} =  Earn 6-9%
${e_lf_earn6-9%SubHeader} =  Say goodbye to 4% returns in bank savings. Beat inflation!
${e_lf_noLockInHeader} =  No lock-in
${e_lf_noLockInSubHeader} =  Get your money by 10am next day if you redeem before 2pm.
${e_lf_superSafeHeader} =  Super safe
${e_lf_superSafeSubHeader} =  Invest in money market instruments with the highest credit rating. 
${e_lf_liquidFundSectionTitle} =  LIQUID FUNDS
${e_lf_howTheyWorkTitle} =  How they work.
${e_lf_liquidFundDesc1} =  Our Super Saver plan invests your money in liquid funds. Liquid funds are debt mutual funds which invest in highly liquid and safe money market instruments like certificate of deposits, treasury bills, and term deposits.
${e_lf_liquidFundDesc2} =  You can use our Super Saver funds to:
${e_lf_beatInflation} =  Beat Inflation: and make 6 - 9% per year, higher than a savings account.
${e_lf_parkMoney} =  Park Money: while you research your next Mutual Fund investment.
${e_lf_STP} =  STP: to invest a large windfall into equity over 6 to 12 months.
${e_lf_recommendTitle} =  We Recommend
${e_lf_topSaverFundTitle} =  Top Super Saver Funds
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_lf_liquidFundHeader} =  xpath=(//div[@class='liquid-fund-page']//h1)[1]
${KU_W_lf_liquidFundSubHeader} =  xpath=(//div[@class='liquid-fund-page']//h2)[1]
${KU_W_lf_earn6-9%Header} =  xpath=(//div[@class='content-text']//h3)[1]
${KU_W_lf_earn6-9%SubHeader} =  xpath=(//div[@class='content-text']//p)[1]
${KU_W_lf_noLockInHeader} =  xpath=(//div[@class='content-text']//h3)[2]
${KU_W_lf_noLockInSubHeader} =  xpath=(//div[@class='content-text']//p)[2]
${KU_W_lf_superSafeHeader} =  xpath=(//div[@class='content-text']//h3)[3]
${KU_W_lf_superSafeSubHeader} =  xpath=(//div[@class='content-text']//p)[3]
${KU_W_lf_liquidFundSectionTitle} =  xpath=//section[@class='liquid-funds']//h1
${KU_W_lf_howTheyWorkTitle} =  xpath=//section[@class='liquid-funds']//h2
${KU_W_lf_liquidFundDesc1} =  xpath=(//div[@class='well']//p)[1]
${KU_W_lf_liquidFundDesc2} =  xpath=(//div[@class='well']//p)[2]
${KU_W_lf_beatInflation} =  xpath=//li[contains(text(),'and make 6 - 9% per year, higher than a savings ac')]
${KU_W_lf_parkMoney} =  xpath=//li[contains(text(),'while you research your next Mutual Fund investmen')]
${KU_W_lf_STP} =  xpath=//li[contains(text(),'to invest a large windfall into equity over 6 to 1')]
${KU_W_lf_recommendTitle} =  xpath=(//section[@class='liquid-funds']//h2)[2]
${KU_W_lf_topSaverFundTitle} =  xpath=//section[@class='liquid-funds']//h3
${KU_W_lf_startInvestingBtn} =  xpath=//button[contains(text(),'Start Investing')]