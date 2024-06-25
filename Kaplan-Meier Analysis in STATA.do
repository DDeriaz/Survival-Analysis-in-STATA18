* Kaplan-Meier Analysis in STATA 18. Denis Dériaz
*************************************************

***************
* create data *
***************

import excel veteran.xlsx, sheet("Sheet 1") firstrow
save veteran.dta, replace
use veteran.dta, clear

*******************
* data conversion *
*******************

stset time, failure(status)
encode celltype, gen(celltype_num)

*****************
* Data analysis *
*****************

* Kaplan-Meier survivor function
sts list, at(1 30(30)570)

* Kaplan-Meier survivor graph
sts graph, ci

* Kaplan-Meier survivor analysis by treatment
sts list, by(trt) at(1 30(30)570)
sts graph, by(trt) ci

* Kaplan-Meier survivor analysis by cell type
sts list, by(celltype_num) at(1 30(30)570)
sts graph, by(celltype_num) ci