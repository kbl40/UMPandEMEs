********************************************************************************
*FX_Plots code
*Author: Kyle Lackinger
*Date Created: 17 June 2020
*Date Last Updated: 24 June 2020
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

*Timeseries plotting USD relative to foreign currency
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

*Timeseries plotting foreign currency relative to USD 
tsline IND_USD, tline(16mar2020 27mar2020 17apr2020 13may2020 22may2020)  tlabel(, format(%tddm)) ttitle("Date (2020)")  ytitle("IND/USD") ttick(16mar2020 27mar2020 17apr2020 13may2020 22may2020, tpos(in)) ttext(70 16mar2020 "FX swaps announced" 70 27mar2020 "COVID-19 policy Announced" 70 17apr2020 "Policy adjustments" 70 13may2020 "MSME lending policy announced" 70 22may2020 "Policy rate & regulation adjustments", orient(vert) place(nw))
graph save IND_USD.gph

tsline KRW_USD, tline(20jan2020 27feb2020 12mar2020 16mar2020 19mar2020 26mar2020 29mar2020 09apr2020 16apr2020 13may2020 28may2020) tlabel(, format(%tddm)) ttitle("Date (2020)")  ytitle("KRW/USD") ttick(20jan2020 27feb2020 12mar2020 16mar2020 19mar2020 26mar2020 29mar2020 09apr2020 16apr2020 13may2020 28may2020, tpos(in)) ttext(1150 20jan2020 "First confirmed case" 1150 27feb2020 "BILSF expansion announced" 1150 12mar2020 "Collateral types broadened" 1150 16mar2020 "Base Rate cut 50 bps" 1150 19mar2020 "US FX swap agreement" 1150 26mar2020 "FX derivatives & unlimited liquidity" 1150 29mar2020 "USD swap auctions announced" 1150 09apr2020 "Base Rate unchanged" 1150 16apr2020 "CBBLF announced" 1150 13may2020 "BILSF ceiling raised" 1150 28may2020 "Base Rate cut 25 bps", orient(vert) place(nw) size(vsmall))
graph save KRW_USD.gph

tsline CNY_USD, tline(25jan2020 01feb2020 02feb2020 06feb2020 07feb2020 16feb2020 19feb2020 25feb2020 01mar2020 13mar2020 03apr2020 15apr2020 21apr2020 24apr2020) tlabel(, format(%tddm)) ttitle("Date (2020)") ytitle("CNY/USD") ttext(6.8 25jan2020 "1,000 confirmed case" 6.8 01feb2020 "Financial support package; RMB1.2 trillion OMO" 6.8 06feb2020 "Re-lending faciltiy expansion; bond regulation change" 6.8 16feb2020 "MTLF rate reduced" 6.8 19feb2020 "Loan prime rates reduced" 6.8 25feb2020 "RMB500 billion lending facility increase" 6.8 01mar2020 "Loan payment defferals" 6.8 13mar2020 "RRR reduced" 6.8 03apr2020 "OMO, RRR reduced" 6.8 15apr2020 "MTLF operation" 6.8 21apr2020 "Central bank bills swap" 6.8 24apr2020 "RMB56.1 trillion injected via TMLF", orient(vert) place(nw) size(vsmall))
graph save CNY_USD.gph

tsline CZK_USD, tline(01mar2020 16mar2020 22mar2020 01apr2020 07may2020) tlabel(, format(%tddm)) ttitle("Date (2020)")  ytitle("CZK/USD") ttext(22 01mar2020 "Czechia first case of COVID-19" 22 16mar2020 "50 bps policy rate cut" 22 22mar2020 "75 bps policy rate cut" 22 01apr2020 "75 bps capital buffer rate cut" 22 07may2020 "75 bps policy rate cut", orient(vert) place(nw) size(vsmall))
graph save CZK_USD.gph

tsline THB_USD, tline(13jan2020 05feb2020 28feb2020 20mar2020 25mar2020 31mar2020 07apr2020 11may2020 20may2020) tlabel(, format(%tddm)) ttitle("Date (2020)")  ytitle("THB/USD") ttext(30 13jan2020 "Thailand first case of COVID-19" 30 05feb2020 "Policy rate cut 25 bps" 30 28feb2020 "Repatriation threshold increased to USD 1M" 30 20mar2020 "Policy rate cut 25 bps" 30 25mar2020 "Policy rate maintained at 0.75%" 30 31mar2020 "Currency Swap Arrangment with Japan" 30 07apr2020 "Package to assist SMEs" 30 11may2020 "BOT BIP adjusted" 30 20may2020 "Policy rate cut 25 bps", orient(vert) place(nw) size(vsmall))
graph save TBH_USD.gph

tsline TRY_USD, tline(11mar2020 17mar2020 31mar2020 17apr2020 21may2020 29may2020 05jun2020) tlabel(, format(%tddm)) ttitle("Date (2020)")  ytitle("TRY/USD") ttext(5.5 11mar2020 "Turkey first case of COVID-19" 5.5 17mar2020 "FG and policy package announced" 5.5 31mar2020 "OMO added to policy package" 5.5 17apr2020 "OMO upper bound increased" 5.5 21may2020 "250 bps rate cut" 5.5 29may2020 "Bank Asset Ratios altered" 5.5 05jun2020 "Rediscount lending facility alterations", orient(vert) place(nw) size(vsmall)) 
graph save TRY_USD.gph
