********************************************************************************
*MSCI_EM_Plot code
*Author: Kyle Lackinger
*Date Created: 24 June 2020
*Date Last Updated: 24 June 2020
*Dependencies: MSCI_EM.dta file
*Description: This brief scipt can be used to plot the timeseries data associated 
*with MSCI-EM index. Graphs are saved to disk in current working directory.
********************************************************************************

*Call in data set
use MSCI_EM

*Format the time variable
quietly generate double newdate = date(date, "MDY")
format %td newdate

*Establish the time variable
tsset newdate

*Timeseries plotting
tsline close, tline(22jan2020 03mar2020 15mar2020 17mar2020 23mar2020 09apr2020 10jun2020) tlabel(, format(%tddm)) ttitle("Date (2020)")  ytitle("Index value") ttext(760 22jan2020 "US first confirmed COVID-19 case" 760 03mar2020 "FFR cut 50 bps" 760 15mar2020 "FFR target dropped to 0-0.25% & QE announced; Section 13(3) facilities announced" 760 23mar2020 "Open-ended securities purchases and bond lending facilities announced" 760 09apr2020 "Additional 13(3) facilities announced" 760 10jun2020 "Tapering of security purchases abandoned", orient(vert) place(nw) size(vsmall))
graph save MSCI_EM.gph