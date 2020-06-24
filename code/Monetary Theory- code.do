* Code for Monetary Theory & Policy- Project 
* Interday FX Data for China, India, South Korea, Turkey, Czech, Thailand 
* ECON 572 - Summer2020
* Georgetown University
* Reema Alhawas
* data files needed: none
* ---------------------
** Contents: 
** (1) Summary Statistics 
** (2) Graph 
** (3) 


******************** (1) Summary Statistics *************************

use "/Users/Reema/Desktop/FX_DailyChange-1.dta" // load the data 

drop USD_KRW USD_IND USD_CNY USD_CZK USD_THB USD_TRY // Drop the Variables 

summarize // Summary Statistics

summarize, detail // Summary Stats fro Kurtosis and Skewness

sort //each variable to get the date for the appreciation (min) and depreciation (max)



******************** (2) Bar Graph ***********************************

gen date2 = date(date, "MDY")
format date2 %td               // create the date variable (change from string to date2)

twoway (bar KRW_USD date2), name (Korea)

twoway (bar IND_USD date2), name (India) 

twoway (bar CNY_USD date2), name (China)

twoway (bar CZK_USD date2), name (Czech)

twoway (bar THB_USD date2), name (Thailand)

twoway (bar TRY_USD date2), name (Turkey)

graph combine Thailand India China Czech Korea Turkey, col (3) row(2)


graph combine Thailand India China Czech Korea Turkey, ycommon col (3) row(2)



*******old code******* 


******************** (1) China- Daily FX Data and Summary Statistics *************************
freduse DEXCHUS // To download the data 
rename DEXCHUS ChinaFX //Renaming the variable
rename daten daydate //Date variable 
tsset daydate

//Delete observations and keep date from 01/01/2020- 06/05/2020

******************** (2) India- Daily FX Data and Summry Statistics **************************
freduse DEXCHUS // To download the data 
rename DEXCHUS ChinaFX //Renaming the variable
rename daten daydate //Date variable 
tsset daydate

******************** (3) N. Korea- Daily FX Data and Summery Statistics *************************
freduse DEXCHUS // To download the data 
rename DEXCHUS ChinaFX //Renaming the variable
rename daten daydate //Date variable 
tsset daydate
