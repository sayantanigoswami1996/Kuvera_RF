*** Variables *** 
# Application Expected Values 'e_<variableName
# Application Locator 'KU_<locatorName>'
# Add Family Member
${e_FM_addFamMemberTitle} =  Add family member
${e_FM_addFamMemberSubTitle1} =  You can cover spouse and 2 children aged 23Y or less.
${e_FM_addFamMemberSubTitle2} =  To cover others, add them with Family account
${e_FM_infoPopupTitle1} =  Family account feature helps you to add and manage wealth for your family members.
${e_FM_infoPopupTitle2} =  For clarification, contact support@kuvera.in 
${e_FM_name} =  Bhavani Sruti Somaraju Venkata Naga\n27Y Self\nPrimary
${e_FM_memberName} =  Moolya 

# Select City
${e_SC_selectCityTitle} =  Select your city
${e_SC_selectCitySubTitle} =  Health Protect is valid across India. Check cashless hospital network for your city.
${e_SC_cityHeader} =  City
${e_SC_networkHospitalHeader} =  Network hospitals     
${e_SC_infoLinkPopupTitle} =  Insurance companies have tie-ups with hospitals, called "Network hospitals". You don’t have to pay cash if you get hospitalised to one such network hospital. The insurer will directly settle the bill with the hospital.\n\nFor non-network hospitals, you will have to settle bill first and then get reimbursed from the insurer.
${e_SC_cityName1} =  Bengaluru
${e_SC_cityName2} =  Delhi
${e_SC_cityName3} =  Hyderabad
${e_SC_cityName4} =  Kolkata
${e_SC_cityName5} =  Mumbai
${e_SC_hospitalInCity1} =  315
${e_SC_hospitalInCity2} =  245
${e_SC_hospitalInCity3} =  253
${e_SC_hospitalInCity4} =  144
${e_SC_hospitalInCity5} =  564
${e_SC_searchedCityName} =  Trichy

# Build Your  Coverage
${e_BYC_buildCoverageTitle} =  Build your coverage
${e_BYC_noRentPolicy} =  No room rent capping
${e_BYC_noTreatmentPolicy} =  No treatment capping
${e_BYC_noCoPaymentPolicy} =  No co-payment
${e_BYC_waitingPeriodPolicy} =  Lowest waiting period
${e_BYC_30DayGuranteePolicy} =  30-day settlement guarantee
${e_BYC_ayushCoveredPolicy} =  AYUSH covered
${e_BYC_supportPolicy} =  Dedicated support
${e_BYC_noRentPolicyDesc} =  Get a single A/C room across all hospitals in India.
${e_BYC_noTreatmentPolicyDesc} =  There is no capping on any specific treatment. Everything is up to sum insured.
${e_BYC_noCoPaymentPolicyDesc} =  You don’t have to shell anything on any treatment. Absolutely zero cost sharing.
${e_BYC_waitingPeriodPolicyDesc} =  Get your pre-existing and specific illness covered within 2 years.
${e_BYC_30DayGuranteePolicyDesc} =  Get paid within 30 days of claim acceptance or get 2% above current bank rate interest till it is settled.
${e_BYC_ayushCoveredPolicyDesc} =  Ayurveda, Yoga and Naturopathy, Unani, Siddha and Homeopathy covered up to full sum insured.
${e_BYC_supportPolicyDesc} =  Get year-round dedicated support.
${e_BYC_FAQ_question1} =  What is a base indemnity policy and when should I get one?
${e_BYC_FAQ_answer1} =  A base indemnity policy is your primary health insurance policy that covers for health expenses.\n\nYou may consider enrolling into a base indemnity if:\n\n(a) Don't own a personal/family floater insurance.\n\n(b) Only have an employer-sponsored policy. Employer-sponsored policy lapses when your employment ends.\n\n(c) Features/exclusions/waiting period of your existing base policy is not par with group health insurance offerings.\n\n(d) Existing policy cover is less than 3 lac. With rising medical costs, having a low sum insured as risky as not having a medical cover at all.\n\n(e) Hospital of your choice is not present in the cashless network list of your current insurer.
${e_BYC_FAQ_question2} =  What is a Super top-up policy?
${e_BYC_FAQ_answer2} =  A super top-up policy is similar to your base policy in terms of coverage, deductible and cashless facility; but they are different in terms of coverage initiation.\n\nWhile your base policy starts to cover your health bill from the start;\nSuper top-up coverage starts after your cumulative eligible medical expenses exceed the deductible limit mentioned in the policy.\n\nIt means you have to pay for health expenses up to a specific limit from pocket or through your base health policy to activate the super top-up policy which will then cover the excess amount up to the policy coverage limit.\n\nFor example, suppose you bought a super top-up policy of Rs ₹30L with a deductible of ₹3L. You also have a base health policy of ₹3L.\n\nSuppose you get hospitalised on three occasions during the policy year wherein the bill was:\n(1) ₹2L during the first time,\n\n(2) ₹3L during the second time and\n\n(3) ₹5L during the third time.\n\nNow, your base health policy worth ₹3L will cover your first hospitalisation.\n\nHowever, your base policy will not be able to cover for the second hospitalisation in full as you had already claimed ₹2L for your first hospitalisation. For the second hospitalisation, the base policy will pay ₹1L. Remaining ₹2L is settled by your super top-up policy.\n\nThe third hospitalisation bill of ₹5L will be completely taken care of by your super top-up policy as you have already fulfilled the deductible limit clause.\n\nSuper top-up policies come at a low premium primarily owing to the deductible clause.\n\nPlease note:\n(1) By default, our group health insurance comes with a ₹3L deductible. If you select a base policy of ₹5L and above then your deductible is increased to ₹5L.It is to reduce your premium burden.\n\n(2) You can opt to buy a super top-up policy without a base policy as well. Just select None for Base policy cover amount.\n\n(3) All norms, waiting period and limitations are identical across the base and super top-up policy.\n\n(4) You can claim for tax deduction under section 80D of the IT act.  
${e_BYC_FAQ_question3} =  How much coverage should I get?
${e_BYC_FAQ_answer3} =  Decide on health cover amount based on the following consideration:\n(a) LifeStage: Cover should be sufficient to accommodate natural additions; like a spouse or kids. You can increase the cover subject to the insurer's approval.\n\n(b) Inflation: A routine procedure costing ₹1L today will cost ₹20L more after 15Y. A cover that seems sufficient today will become inadequate with rising costs.\n\n(c) Lifestyle: A knee replacement cost will vary from Govt to a private hospital. One should check the average cost of a room in their preferred hospital. Hospital charges are anchored based on the room a patient takes.\n\nThere is no ideal health cover, but generally, most advisors consider:\n(1) Health cover should be at least 50% of your annual income.\n\n(2) Coverage should be able to cover the cost of a Heart transplant in a hospital of your choice. Usually costs ₹5-8 lac. 
${e_BYC_healthProtectTitle} =  Health Protect 
${e_BYC_baseIndemnityTitle} =  Base Indemnity cover 
${e_BYC_superCoverTitle} =  Super top-up cover
${e_BYC_indemnityBaseValue} =  ₹3 L
${e_BYC_indemnityPremiumValue} =  ₹5,380.5/Y
${e_BYC_superCoverBaseValue} =  None
${e_BYC_sumCoveredTitle} =  Sum covered 
${e_BYC_sumCoveredSubTitle} =  Total premium
${e_BYC_sumCoveredValue} =  ₹10 L
${e_BYC_totalPremiumValue} =  ₹6,457/Y
${e_BYC_topUpValue} =  ₹1,077/Y

# Daily Cash Coverage
${e_DCC_dailyCashCoverageTitle} =  Daily cash cover  
${e_DCC_dailyCashCoverageSubTitle} =  Covers out of pocket expense during hospitalisation such as travelling, food etc.                  
${e_DCC_dailyCashCoverageDesc1} =  Covers up to 30 days of hospitalisation. 
${e_DCC_dailyCashCoverageDesc2} =  No bills submission needed. 
${e_DCC_dailyCashCoverageDesc3} =  Money credited from 2nd day onwards.  
${e_DCC_selectDailyCash} =  Select daily cash 
${e_DCC_2KPremiumAmount} =  ₹847/Y
${e_DCC_totalPremiumAmount} =  ₹7,304.5/Y

# General Exclusions
${e_GE_generalExclusionTitle} =  General exclusions
${e_GE_generalExclusionSubTitle} =  Policy does not apply if you have any of the following medical conditions at time of issuance.\n\nIf you get diagnosed with any such conditions after the Policy issuance then they will be covered as per the policy wordings.
@{e_GE_illnessList} =  Any complications related to Diabetes, Hypertension, and Hypothyroidism  Any problem with vision or eyes other than having undergone cataract operation in either or both eyes, or having errors of refraction.  Tumor or Cancer anywhere in the body.  Arthritis, Spine or Joint disorder in the last 5 years.  Any problem with reproductive organs like the prostate, testis.  Any stone disease like kidney or ureter stones in the last 10 years.  Any disease of major organs including but not limited to the brain (includes stroke or paralysis), heart, kidney, lungs, liver or mental health disorder.  Taken any medicine more than 21 days consistently in last 5 years except for infrequent acidity, loose motion, common cold, fever, headache.  Applicant(s)/dependents have high cholesterol, asthma, diabetes, hypertension and hyperthyroidism.  Ever reported positive for Hepatitis B, HIV / AIDS or other sexually transmitted diseases.  Any major surgery (any surgery is done other than those done under local anaesthesia) in last 5 years other than family planning/ C- section ( Applicable for Females).  Any disorder of the cervix, uterus, ovary(ies), abnormal bleeding or problem with the reproductive system in the last 5 years. (Applicable for female members proposed to be insured).       

# Existing Illness
${e_EI_existingIllnessTitle} =  Do you have an existing illness?
${e_EI_existingIllnessSubTitle} =  This ensures claims are not rejected for non-disclosures of existing illness
${e_EI_infoLinkDetails} =  Existing illness means any condition, ailment, injury or disease:
${e_EI_infoLinkSubDetails} =   That is/are diagnosed by a physician within 48 months prior to the effective date of the policy issued by the insurer or its reinstatement or\nFor which medical advice or treatment was recommended by, or received from, a physician within 48 months prior to the effective date of the policy issued by the insurer or its reinstatement.
${e_EI_noIllnessBtnTitle} =  I/we don’t have any illness
${e_EI_noIllnessBtnSubTitle} =  Neither you or your loved one has an existing health condition or disease.
${e_EI_illnessBtnTitle} =  I/we have an existing illness
${e_EI_illnessBtnSubTitle} =  Either you or your loved one has an existing health condition or disease.
${e_EI_declareIllnessTitle} =  Declare existing illness
${e_EI_declareIllnessSubTitle} =  Please ensure you mention all existing health conditions or illness.
${e_EI_userIllnessTitle} =  Current illness or health condition of
${e_EI_addIllness} =  Thyroid
${e_EI_applicantlllnessTitle} =  Current illness or health condition
${e_EI_applicantlllnessDesc1} =  Please ensure your health condition is not part of the general exclusions
${e_EI_applicantlllnessDesc2} =  Example: Applicant(s) aling from Diabetes, Hypertension, Asthma is not eligible at the time of insurance.
${e_EI_generalExclusionPopupTitle} =   Policy does not apply if you have any of the following medical conditions at time of issuance. 

# Contact Details
${e_CD_contactDetailsTitle} =  Confirm contact details
${e_CD_contactDetailsSubTitle} =  Helps insurer to connect with you and mail physical policy
${e_CD_addressLabel} =  Address
${e_CD_pincodeLabel} =  Pincode
${e_CD_stateLabel} =  State
${e_CD_cityLabel} =  City

# Add Nominee
${e_AN_addNomineeTitle} =  Add nominee for each policy
${e_AN_nomineeDetailsTitle} =  Add nominee details for
${e_AN_nomineeDetailsSubTitle} =  Base Indemnity cover
${e_AN_userName} =  Tester
${e_AN_userNameLabel} =  Full Name
${e_AN_relationshipLabel} =  Relationship

# Coverage Details
${e_CoverageDets_coverageDetailsTitle} =  Coverage details 
${e_CoverageDets_userNameLabel} =  Primary applicant
${e_CoverageDets_emailIDLabel} =  Email ID
${e_CoverageDets_resdentialAddressLabel} =  Residential address
${e_CoverageDets_applicantName} =  Bhavani Sruti Somaraju Venkata Naga
${e_CoverageDets_cityAndStateAddress} =  Bengaluru - 560004, Karnataka
${e_CoverageDets_coverPlanSummaryTitle} =  Cover plan summary
${e_CoverageDets_coverTitle} =  Cover
${e_CoverageDets_coverSubTitle} =  ₹10 L + ₹2 K/day 
${e_CoverageDets_indemnityDetails} =  Base Indemnity\n₹3 L
${e_CoverageDets_topUpDetails} =  Super top up\n₹7 L
${e_CoverageDets_dailyAllowance} =  Daily allowance\n₹2 K/day
${e_CoverageDets_coveringTitle} =  Covering
${e_CoverageDets_coveringSubTitle} =  Self (27Y) + 1 more
${e_CoverageDets_applicantDetails} =  Bhavani Sruti Somaraju Venkata Naga\n27Y - (1993-08-13) 
${e_CoverageDets_familyMemberDetails} =  Moolya\n1Y - (2019-08-07)
${e_CoverageDets_nomineesTitle} =  Nominees
${e_CoverageDets_nominee_userDetail1} =  Base indemnity - Tester (husband)
${e_CoverageDets_nominee_userDetail2} =  Super top up - Tester (husband)
${e_CoverageDets_nominee_userDetail3} =  Daily cash - Tester (husband)
${e_CoverageDets_policyDocumentsTitle} =  Policy documents
${e_CoverageDets_infoBox} =  If you’re not satisfied with your policy then you can cancel it within a 15 day lookout period.

# Select Payment Mode
${e_SPM_paymentModeTitle} =  Select Payment Mode
${e_SPM_paymentModeSubTitle} =  Choose how you’d like to pay for your Policy
${e_SPM_netPremium} =  Net premium\n₹7,305
${e_SPM_GST} =  GST at 18%\n₹1,315
${e_SPM_totalPayable} =  Total Payable\n₹8,620
${e_SPM_UPILabel} =  UPI
${e_SPM_debitCardLabel} =  Debit Card
${e_SPM_netBankingLabel} =  Net Banking
${e_SPM_creditCardLabel} =  Credit Card
${e_SPM_merchantName} =  KUVERA
${e_SPM_merchantDesc} =  Transfer payment for health insurance
${e_SPM_payViaNetBanking} =  PAY VIA NETBANKING
${e_SPM_bankName} =  State Bank of India
${e_SPM_razorPayTitle} =  Welcome to Razorpay Software Private Ltd Bank
${e_SPM_title} =  Razorpay Bank
# Health Protect
${e_HP_pagetitle} =  Health protect enabled
${e_HP_pageSubtitle} =  Your certificate of insurance and policy document will be emailed to you.
# Application Locator 'KU_<locatorName>'   
# Kuvera :: Wealth Management Simplified
# Add Family Member
${KU_W_FM_infoLink} =  xpath=//img[@alt='information icon']
${KU_W_FM_addFamMemberSubTitle1} =  xpath=(//div[@class='b-insurance__description b-add-members-details__subheading'])[1]
${KU_W_FM_addFamMemberSubTitle2} =  xpath=(//div[@class='b-insurance__description b-add-members-details__subheading'])[2]
${KU_W_FM_infoPopupTitle1} =  xpath=//div[@class='b-insurance-description b-insurance-add-member__description']/div[1]
${KU_W_FM_infoPopupTitle2} =  xpath=//div[@class='b-insurance-description b-insurance-add-member__description']/div[2]
${KU_W_FM_insuranceHolderName} =  xpath=(//div[@class='b-item__row__content'])[1]
${KU_W_FM_addMemberMenu} =  xpath=//div[@class='b-item__row']/div[1]
${KU_W_FM_memberName} =  xpath=//input[@id='name']
${KU_W_FM_dropdown} =  xpath=//div[@class='default-message']
${KU_W_FM_daughter} =  xpath=//div[contains(text(),'Daughter')]
${KU_W_FM_DOB} =  xpath=//input[@placeholder='Select DOB']
${KU_W_FM_monthOnCalendar} =  xpath=//div[@class='vdp-datepicker']//div[2]//header[1]//span[1]
${KU_W_FM_dateOnCalendar} =  xpath=//span[text()='7']
${KU_W_FM_primaryApplicant} =  xpath=(//div[@class='b-item__row b-item__row__hasDetails'])[1]
${KU_W_FM_primaryApplicantGender} =  xpath=//div[contains(text(),'Female')]

# Select City
${KU_W_SC_selectCitySubTitle} =  xpath=//div[@class='b-insurance__description b-add-ciy__subheading']
${KU_W_SC_cityHeader} =  xpath=//div[@class='b-add-ciy__container__title-row']/div[1]
${KU_W_SC_networkHospitalHeader} =  xpath=//div[@class='b-add-ciy__container__title-row']/div[2]
${KU_W_SC_hospitalInfoLink} =  xpath=//div[@class='b-add-ciy__container__title--hospital']//img
${KU_W_SC_infoLinkPopupTitle} =  xpath=//div[@class='b-hospital-info-details__title']
${KU_W_SC_cityName1} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text'])[1]
${KU_W_SC_cityName2} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text'])[2]
${KU_W_SC_cityName3} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text'])[3]
${KU_W_SC_cityName4} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text'])[4]
${KU_W_SC_cityName5} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text'])[5]
${KU_W_SC_hospitalInCity1} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text b-add-ciy__container__cashless-hsopital-number'])[1]
${KU_W_SC_hospitalInCity2} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text b-add-ciy__container__cashless-hsopital-number'])[2]
${KU_W_SC_hospitalInCity3} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text b-add-ciy__container__cashless-hsopital-number'])[3]
${KU_W_SC_hospitalInCity4} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text b-add-ciy__container__cashless-hsopital-number'])[4]
${KU_W_SC_hospitalInCity5} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text b-add-ciy__container__cashless-hsopital-number'])[5]
${KU_W_SC_hospitalsList} =  xpath=//div[@class='b-add-ciy__modal__wrapper']/div[1]
${KU_W_SC_hospitalListCloseBtn} =  xpath=(//img[@alt='close-btn-img'])[2]
${KU_W_SC_searchBox} =  xpath=//input[@placeholder='Type city name']
${KU_W_SC_searchedCity} =  xpath=//div[@class='b-city-list__row']
${KU_W_SC_viewPlanBtn} =  xpath=//button[contains(text(),'View Plan')]
${KU_W_SC_OtherAddBtn} =  xpath=//div[contains(text(),'Other')]

# Build Your Coverage
${KU_W_BYC_noRentPolicy} =  xpath=(//div[@class='b-policy-feature__title'])[1]
${KU_W_BYC_noTreatmentPolicy} =  xpath=(//div[@class='b-policy-feature__title'])[2]
${KU_W_BYC_noCoPaymentPolicy} =  xpath=(//div[@class='b-policy-feature__title'])[3]
${KU_W_BYC_waitingPeriodPolicy} =  xpath=(//div[@class='b-policy-feature__title'])[4]
${KU_W_BYC_noRentPolicyDesc} =  xpath=(//div[@class='b-policy-features-content__description'])[1]
${KU_W_BYC_noTreatmentPolicyDesc} =  xpath=(//div[@class='b-policy-features-content__description'])[2]
${KU_W_BYC_noCoPaymentPolicyDesc} =  xpath=(//div[@class='b-policy-features-content__description'])[3]
${KU_W_BYC_waitingPeriodPolicyDesc} =  xpath=(//div[@class='b-policy-features-content__description'])[4]
${KU_W_BYC_seeMoreLink} =  xpath=//div[@class='b-insurance__link b-policy-feature__see-more--text']
${KU_W_BYC_30DayGuranteePolicy} =  xpath=(//div[@class='b-show-more-feature__title'])[5]
${KU_W_BYC_30DayGuranteePolicyDesc} =  xpath=(//div[@class='b-show-more-feature__description'])[5]
${KU_W_BYC_ayushCoveredPolicy} =  xpath=(//div[@class='b-show-more-feature__title'])[6]
${KU_W_BYC_ayushCoveredPolicyDesc} =  xpath=(//div[@class='b-show-more-feature__description'])[6]
${KU_W_BYC_supportPolicy} =  xpath=(//div[@class='b-show-more-feature__title'])[7]
${KU_W_BYC_supportPolicyDesc} =  xpath=(//div[@class='b-show-more-feature__description'])[7]
${KU_W_BYC_noRentImage} =  xpath=(//img[@class='b-policy-features-content__img'])[1]
${KU_W_BYC_noTreatmentImage} =  xpath=(//img[@class='b-policy-features-content__img'])[2]
${KU_W_BYC_noCopaymentImage} =  xpath=(//img[@class='b-policy-features-content__img'])[3]
${KU_W_BYC_waitingPeriodImage} =  xpath=(//img[@class='b-policy-features-content__img'])[4]
${KU_W_BYC_30DayGuranteeImage} =  xpath=(//div[@class='b-policy-feature__img'])[5]
${KU_W_BYC_ayushCoveredImage} =  xpath=(//div[@class='b-policy-feature__img'])[6]
${KU_W_BYC_supportPolicyImage} =  xpath=(//div[@class='b-policy-feature__img'])[7]
${KU_W_BYC_FAQ_question1} =  xpath=(//div[@class='b-insurance-faq__list__content__question'])[1]
${KU_W_BYC_FAQ_answer1} =  xpath=(//div[@class='b-insurance-faq__list__content__answer'])[1]
${KU_W_BYC_FAQ_question2} =  xpath=(//div[@class='b-insurance-faq__list__content__question'])[2]
${KU_W_BYC_FAQ_answer2} =  xpath=(//div[@class='b-insurance-faq__list__content__answer'])[2]
${KU_W_BYC_FAQ_question3} =  xpath=(//div[@class='b-insurance-faq__list__content__question'])[3]
${KU_W_BYC_FAQ_answer3} =  xpath=(//div[@class='b-insurance-faq__list__content__answer'])[3]
${KU_W_BYC_FAQ_arrowImg1} =  xpath=(//div[@class='b-insurance-faq__list__content__question']//img)[1]
${KU_W_BYC_FAQ_arrowImg2} =  xpath=(//div[@class='b-insurance-faq__list__content__question']//img)[2]
${KU_W_BYC_FAQ_arrowImg3} =  xpath=(//div[@class='b-insurance-faq__list__content__question']//img)[3]
${KU_W_BYC_healthProtectTitle} =  xpath=//div[@class='b-insurance__subtitle b-insurance-image-title-comp__title-text']
${KU_W_BYC_healthProtectImg} =  xpath=//img[@class='b-insurance-image-title-comp__img']
${KU_W_BYC_baseIndemnityTitle} =  xpath=(//div[@class='b-insurance-health__description b-health-plan-detail__title'])[1]
${KU_W_BYC_superCoverTitle} =  xpath=(//div[@class='b-insurance-health__description b-health-plan-detail__title'])[2]
${KU_W_BYC_indemnityInfoLink} =  xpath=(//img[@class='b-order-summary__info-ques-icon'])[1]
${KU_W_BYC_indemnityBaseValue} =  xpath=//div[@class='default-message'][contains(text(),'₹3 L')]
${KU_W_BYC_indemnityPremium} =  xpath=(//div[@class='b-insurance-health__description text-right'])[1]
${KU_W_BYC_infoLinkDesc} =  xpath=//span[contains(@class,'has-tooltip v-tooltip-open')]
${KU_W_BYC_superCoverInfoLink} =  xpath=(//img[@class='b-order-summary__info-ques-icon'])[2]
${KU_W_BYC_superCoverBaseValue} =  xpath=//div[contains(text(),'None')]
${KU_W_BYC_superCoverTopUpValue} =  xpath=//div[@class='options ku-standard-card options-align-undefined']//div[2]
${KU_W_BYC_superCoverDropdown} =  xpath=(//div[@class='standard-select-container b-health-plan-detail__dropdown'])[2]
${KU_W_BYC_superCoverPremium} =  xpath=(//div[@class='b-insurance-health__description text-right'])[2]
${KU_W_BYC_indemnityPremiumVal} =  xpath=(//div[@class='b-health-plan-detail__text'])[1]
${KU_W_BYC_superCoverPremiumVal} =  xpath=(//div[@class='b-health-plan-detail__text'])[2]
${KU_W_BYC_sumCoveredTitle} =  xpath=//div[@class='b-health-plan-sum__title']
${KU_W_BYC_sumCoveredSubTitle} =  xpath=//div[@class='b-health-plan-sum__title b-health-plan-sum__title--text']
${KU_W_BYC_sumCoveredValue} =  xpath=//div[@class='b-build-coverage__sub-title w-half']
${KU_W_BYC_totalPremiumValue} =  xpath=//div[@class='b-build-coverage__sub-title w-half b-health-plan-sum__title--text']
${KU_W_BYC_policyDocuLink} =  xpath=//div[@class='b-insurance__link b-build-coverage__link']
${KU_W_BYC_documentLinkCloseBtn} =  xpath=//div[@class='modal-content-desktop']//img[@alt='close-btn-img']

# Daily Cash Coverage
${KU_W_DCC_cashCoverageSubTitle} =  xpath=//div[@class='b-add-on-insurance__subtitle b-insurance__description']
${KU_W_DCC_coverageDesc1} =  xpath=(//div[@class='b-add-on-insurance__subtitle--list b-insurance__description'])[1]
${KU_W_DCC_coverageDesc2} =  xpath=(//div[@class='b-add-on-insurance__subtitle--list b-insurance__description'])[2]
${KU_W_DCC_coverageDesc3} =  xpath=(//div[@class='b-add-on-insurance__subtitle--list b-insurance__description'])[3]
${KU_W_DCC_coverageImg1} =  xpath=(//img[@class='b-add-nominee-icon'])[1]
${KU_W_DCC_coverageImg2} =  xpath=(//img[@class='b-add-nominee-icon'])[2]
${KU_W_DCC_coverageImg3} =  xpath=(//img[@class='b-add-nominee-icon'])[3]
${KU_W_DCC_cashcoverCardTitle} =  xpath=//div[@class='b-insurance__subtitle b-insurance-image-title-comp__title-text']
${KU_W_DCC_policyDocumentsLink} =  xpath=//div[@class='b-insurance__link b-add-on__polic-doc--link']
${KU_W_DCC_cashCoverCardImg} =  xpath=//img[@class='b-insurance-image-title-comp__img']
${KU_W_DCC_defaultPremimVal} =  xpath=//div[@class='b-add-on__premuim--text']
${KU_W_DCC_2KDailyCashBtn} =  xpath=(//div[@class='b-add-on-insurance-plan__button'])[1]
${KU_W_DCC_totalPremimVal} =  xpath=//div[@class='b-add-on__total-premuim--text']

# General Exclusions
${KU_W_GE_generalExclusionSubTitle} =  xpath=//div[@class='b-insurance__description b-add-members-details__subheading']
${KU_W_GE_illnessPointers} =  xpath=//li[@class='b-insurance__body-dark b-check-illness__list']

# Existing Ilness
${KU_W_EI_existingIllnessTitle} =  xpath=//div[@class='b-insurance__title b-existing-illness__title']
${KU_W_EI_existingIllnessImg} =  xpath=//img[@alt='insurance helth icon']
${KU_W_EI_existingIllnessSubTitle} =  xpath=//div[@class='b-insurance-illness_subtitle']
${KU_W_EI_existingIllnessInfoLink} =  xpath=//img[@alt='information icon']
${KU_W_EI_infoLinkDetail} =  xpath=//div[@class='b-hospital-info-details__title']
${KU_W_EI_infoLinkSubDetail} =  xpath=//div[@class='b-insurance-description b-hospital-info-details-description']
${KU_W_EI_noIllnessBtnTitle} =  xpath=(//div[@class='b-insurance__subtitle--dark'])[1]
${KU_W_EI_noIllnessBtnSubTitle} =  xpath=(//div[@class='b-insurance__body-dark'])[1]
${KU_W_EI_noIllnessBtnImg} =  xpath=(//img[@alt='insurance illness icon'])[1]
${KU_W_EI_illnessBtnTitle} =  xpath=(//div[@class='b-insurance__subtitle--dark'])[2]
${KU_W_EI_illnessBtnSubTitle} =  xpath=(//div[@class='b-insurance__body-dark'])[3]
${KU_W_EI_illnessBtnImg} =  xpath=(//img[@alt='insurance illness icon'])[3]
${KU_W_EI_declareIllnessTitle} =  xpath=//div[@class='b-insurance__title b-declare-illness__title']
${KU_W_EI_declareIllnessSubTitle} =  xpath=//div[@class='b-insurance__description b-declare-illness__description']
${KU_W_EI_addBtn} =  xpath=(//div[@class='b-item__row__image']//img)[1]
${KU_W_EI_deleteBtn} =  xpath=//img[@alt='insurance-delete-detail']
${KU_W_EI_popupOkayBtn} =  xpath=//div[@class='b-confirmation-modal__btn-group--okay']
${KU_W_EI_addIllnessField} =  xpath=//input[@placeholder='Add condition']
${KU_W_EI_applicantIllnessTitle} =  xpath=//div[@class='b-insurance__title b-applicant-illness__title']
${KU_W_EI_generalExclusionLink} =  xpath=//span[@class='b-check-illness__excision-link']
${KU_W_EI_generalExclusionPopupTitle} =  xpath=//div[@class='b-health-insurance-nav__description']
${KU_W_EI_applicantIllnessDesc1} =  xpath=(//div[@class='b-insurance__description b-check-illness__description'])[1]
${KU_W_EI_applicantIllnessDesc2} =  xpath=(//div[@class='b-insurance__description b-check-illness__description'])[2]

# Contact Details
${KU_W_CD_contactDetailsTitle} =  xpath=//div[@class='b-insurance__title b-primary-applicant-left__title']
${KU_W_CD_addressLabel} =  xpath=(//label[@class='b-text-field__label'])[2]
${KU_W_CD_addressField} =  xpath=//input[@id='address']
${KU_W_CD_pincodeLabel} =  xpath=(//label[@class='b-text-field__label'])[3]
${KU_W_CD_stateLabel} =  xpath=(//div[@class='b-systematic-subheading__title'])[1]
${KU_W_CD_cityLabel} =  xpath=(//div[@class='b-systematic-subheading__title'])[2]
${KU_W_CD_stateSearchBar} =  xpath=(//input[@aria-label='Search for option'])[1]
${KU_W_CD_citySearchBar} =  xpath=(//input[@aria-label='Search for option'])[2]

# Add Nominee
${KU_W_AN_addNomineeTitle} =  xpath=//div[@class='b-insurance__title b-add-nominee-details-comp__title']
${KU_W_AN_baseIndemnityPolicy} =  xpath=(//div[@class='b-item__row__image'])[1]
${KU_W_AN_nomineeDetailsTitle} =  xpath=//div[@class='b-insurance__title b-nominee-details__title']
${KU_W_AN_nomineeDetailsSubTitle} =  xpath=//div[@class='b-insurance__subtitle--dark']
${KU_W_AN_userName} =  xpath=//input[@placeholder='Add Nominee']
${KU_W_AN_realtionshipLabel} =  xpath=//div[@class='b-health-input-details__relationship--label']
${KU_W_AN_husband} =  xpath=//div[contains(text(),'Husband')]

# Coverage Details
${KU_W_CoverageDets_coverageDetailsTitle} =  xpath=//div[@class='b-insurance__title b-coverage-plan__title']
${KU_W_CoverageDets_userNameLabel} =  xpath=(//div[@class='b-insurance-text-display__title'])[1]
${KU_W_CoverageDets_emailIDLabel} =  xpath=(//div[@class='b-insurance-text-display__title'])[2]
${KU_W_CoverageDets_phoneNumLabel} =  xpath=(//div[@class='b-insurance-text-display__title'])[3]
${KU_W_CoverageDets_addressLabel} =  xpath=(//div[@class='b-insurance-text-display__title'])[4]
${KU_W_CoverageDets_applicantName} =  xpath=(//div[@class='b-insurance-text-display__description'])[1]
${KU_W_CoverageDets_emailID} =  xpath=(//div[@class='b-insurance-text-display__description'])[2]
${KU_W_CoverageDets_phoneNumber} =  xpath=(//div[@class='b-insurance-text-display__description'])[3]
${KU_W_CoverageDets_address1} =  xpath=(//div[@class='b-insurance-text-display__description'])[4]
${KU_W_CoverageDets_address2} =  xpath=(//div[@class='b-insurance-text-display__description'])[5]
${KU_W_CoverageDets_coverPlanSummaryTitle} =  xpath=//div[@class='b-insurance__subtitle']
${KU_W_CoverageDets_coverTitle} =  xpath=//div[text()='Cover']
${KU_W_CoverageDets_coverDropDown} =  xpath=(//img[@class='b-policy-features__img'])[1]
${KU_W_CoverageDets_dropdownDetail1} =  xpath=(//div[@class='b-cover-plan-summar__coverage-details'])[1]
${KU_W_CoverageDets_dropDownDetail2} =  xpath=(//div[@class='b-cover-plan-summar__coverage-details'])[2]
${KU_W_CoverageDets_dropDownDetail3} =  xpath=(//div[@class='b-cover-plan-summar__coverage-details'])[3]
${KU_W_CoverageDets_coveringDropDown} =  xpath=(//img[@class='b-policy-features__img'])[2]
${KU_W_CoverageDets_nomineesDropDown} =  xpath=(//img[@class='b-policy-features__img'])[3]
${KU_W_CoverageDets_policyDropDown} =  xpath=(//img[@class='b-policy-features__img'])[4]
${KU_W_CoverageDets_nomineesTitle} =  xpath=//div[contains(text(),'Nominees')]
${KU_W_CoverageDets_coveringTitle} =  xpath=//div[text()='Covering']
${KU_W_CoverageDets_policyDocumentsTitle} =  xpath=//div[contains(text(),'Policy documents')]
${KU_W_CoverageDets_infoBox} =  xpath=//div[@class='b-insurance__body-dark b-information-box__text']
${KU_W_CoverageDets_OTP} =  xpath=//input[@placeholder='Enter OTP here']

# Select Payment Mode
${KU_W_SPM_paymentModeTitle} =  xpath=//div[@class='d-payment-breakup__heading']
${KU_W_SPM_paymentModeSubTitle} =  xpath=//div[@class='d-payment-breakup__caption']
${KU_W_SPM_netPremium} =  xpath=//div[@class='d-payment-breakup__info d-payment-breakup__info--base']
${KU_W_SPM_GST} =  xpath=//div[@class='d-payment-breakup__info']
${KU_W_SPM_totalPayable} =  xpath=//div[@class='d-payment-breakup__info d-payment-breakup__info--total']
${KU_W_SPM_netBankingPaymentMode} =  xpath=(//div[@class='b-payment-modes__payment-mode-row-top'])[3]
${KU_W_SPM_UPILabel} =  xpath=//div[contains(text(),'UPI')]
${KU_W_SPM_UPIImg} =  xpath=(//img[@class='b-payment-modes__payment-mode-icon'])[1]
${KU_W_SPM_debitCardLabel} =  xpath=//div[contains(text(),'Debit Card')]
${KU_W_SPM_netBankingLabel} =  xpath=//div[contains(text(),'Net Banking')]
${KU_W_SPM_creditCardLabel} =  xpath=//div[contains(text(),'Credit Card')]
${KU_W_SPM_debitCardImg} =  xpath=(//img[@class='b-payment-modes__payment-mode-icon'])[2]
${KU_W_SPM_netBankingImg} =  xpath=(//img[@class='b-payment-modes__payment-mode-icon'])[3]
${KU_W_SPM_creditCardImg} =  xpath=(//img[@class='b-payment-modes__payment-mode-icon'])[4]
${KU_W_SPM_payAmtBtn} =  xpath=//button[@class='button-primary']
${KU_W_SPM_merchantName} =  xpath=//div[@id='merchant-name']
${KU_W_SPM_merchanteDesc} =  xpath=//div[@id='merchant-desc']
${KU_W_SPM_SBIBank} =  xpath=//label[@for='bank-radio-SBIN']
${KU_W_SPM_footerPayBtn} =  xpath=//div[@id='footer']
${KU_W_SPM_mobile_emailDetails} =  xpath=//button[@id='user-details']
${KU_W_SPM_payViaNetBanking} =  xpath=//h3[@class='title']
${KU_W_SPM_netBankingOption} =  xpath=//button[@method='netbanking']
${KU_W_SPM_razorPayFrame} =  xpath=//iframe[@class='razorpay-checkout-frame']
${KU_W_SPM_bankName} =  xpath=//button[@id='bank-select']
${KU_W_SPM_razorPayTitle} =  xpath=//h3[normalize-space()='Welcome to Razorpay Software Private Ltd Bank']
${KU_W_SPM_razorPaySuccessBtn} =  xpath=//button[contains(text(),'Success')]

# Health Protect
${KU_W_HP_healthProtectSubTitle} =  xpath=//div[@class='b-health-insurance-confirmation__subtitle']
${KU_W_HP_successIconImg} =  xpath=//img[@alt='sucess icon']