********************************************************************************
*FX_Plots code
*Author: Kyle Lackinger
*Date Created: 17 June 2020
*Date Last Updated: 17 June 2020
*Dependencies: FX_SpotRates.dta file
*Description: This brief scipt can be used to plot the timeseries data associated 
*with FOREX for six countries: Korea (KWN), China (CNY), India (IND), Czech 
*Republic (CZK), Thailand (THB), and (TRY) Turkey.  All data is plotted USD over
*international currency. Graphs are saved to disk in current working directory.
********************************************************************************

*Call in data set
use FX_SpotRates

*Format the time variable
quietly generate double newdate = date(date, "MDY")
format %td newdate

*Establish the time variable
tsset newdate

*Timeseries plotting
tsline USD_IND, tlabel(, format(%tddm)) ttitle("Date (2020)")  ytitle("USD/IND")
graph save USD_IND.gph

tsline USD_KRW, tlabel(, format(%tddm)) ttitle("Date (2020)")  ytitle("USD/KRW")
graph save USD_KRW.gph

tsline USD_CNY, tlabel(, format(%tddm)) ttitle("Date (2020)")  ytitle("USD/CNY")
graph save USD_CNY.gph

tsline USD_CZK, tlabel(, format(%tddm)) ttitle("Date (2020)")  ytitle("USD/CZK")
graph save USD_CZK.gph

tsline USD_THB, tlabel(, format(%tddm)) ttitle("Date (2020)")  ytitle("USD/THB")
graph save USD_TBH.gph

tsline USD_TRY, tlabel(, format(%tddm)) ttitle("Date (2020)")  ytitle("USD/TRY")
graph save USD_TRY.gph