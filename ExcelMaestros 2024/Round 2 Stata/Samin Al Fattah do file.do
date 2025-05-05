**Samin Al Fattah
**ROOM501
. cd "C:\Users\Administrator\Desktop\Stata exam"


. pwd

. use "Data set_BUPFS EXCEL MAESTROS ROUND 2"

. help string

. help f_sting

. recast double case_id

. recast float case_id

. recast string case_id

. destring cluster, gen(cl)

. drop cluster

. rename cl cluster

. rename V001 gender

. rename V003 age

. rename age income

. rename v002 age

. rename v004 edu

. rename V005 occup

. rename v025 residence

. rename v225 mar_st

. label variable gender "Sex of the respondent"

. label variable age "Age of the respondent"

. label variable income "Monthly income"

. label variable edu "Highest education achieved"

. label variable occup "Current occupation"

. label variable residence "Place of residence"

. label variable mar_st "Ever married status"

. label define gen_label 1 "Female" 2 "Male"

. label value gender gen_label

. br

. ed

. label define occup_label 1 "Agricultue" 2 "Business" 3 "Privat

. label value occup occup_label

. ed

. label define res_label  0 "Urban" 2 "Rural"

. label value residence res_label

. ed

. label define res_label  1 "Urban" 2 "Rural"

. label define res_labell  1 "Urban" 2 "Rural"

. label value residence res_labell

. ed

. label define mr_label 0 "No" 1 "Yes"

. label value mar_st mr_label

. ed

. summarize age income edu, detail


. ed

. gen inc_cat = income

. ed

. replace inc_cat=1 if income < 15000

. replace inc_cat=2 if 15000 < income < 20000

. replace inc_cat=1 if income < 15000

. ed

. replace inc_cat=5 if income < 40000

. replace inc_cat=4 if income < 30000

. replace inc_cat=3 if income < 25000

. replace inc_cat=2 if income < 20000

. replace inc_cat=1 if income < 15000

. ed

.  gen edu_cat = edu


. replace edu_cat=4 if edu < 20

 . replace edu_cat=3 if edu <= 7

. replace edu_cat=2 if edu <= 4

. replace edu_cat=1 if edu == 0

. label define educ_label 1 "Uneducated" 2 "Below primary" 3 "Pr


. label value edu_cat educ_label

. ed

. gen age_cat = age

. replace age_cat=1 if age <50

. replace age_cat=2 if age < 50


. replace age_cat=1 if age <= 30


. ed

. label define agec_label 1 "30 years of below" 2 "30 years abov
> e"

. label value age_cat agec_label

. ed

 
 
. label define agec_labell 1 "30 years or below" 2 "30 years above"

. label value age_cat agec_labell

. label variable inc_cat "Generated Income Category"

. label variable edu_cat "Generated Education Category"

. label variable age_cat "Generated Age Category"

. tab residence


. tab gender


. tab occup


. tab inc_cat


. tab edu_cat


. tab edu_cat gender, row col chi2


.  tab edu_cat gender, row col chi2

 
.  tab inc_cat residence , row col chi2

.  tab inc_cat edu_cat , row col chi2

. graph pie gender

. ed

. graph pie residence, over(gender)

. graph export "C:\Users\Administrator\Desktop\Stata exam\Graph.
> png", as(png) name("Graph")

. histogram income



. graph save "Graph" "C:\Users\Administrator\Desktop\Stata exam\
> Histogram.gph"

graph bar (mean) occup

. reg income age edu residence occup

