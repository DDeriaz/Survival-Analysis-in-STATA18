# Survival analysis in STATA18

## Summary
Some STATA code reproducing the [survival analysis](https://github.com/JRigh/Survival-Analysis-in-R-and-Python) thanks to [JRigh](https://github.com/JRigh).

## Data description: Veterans' Administration Lung Cancer study

### Description
Randomised trial of two treatment regimens for lung cancer. This is a standard survival analysis data set.

### Format
trt:	1=standard 2=test  
celltype:	1=squamous, 2=smallcell, 3=adeno, 4=large  
time:	survival time  
status:	censoring status  
karno:	Karnofsky performance score (100=good)  
diagtime:	months from diagnosis to randomisation  
age:	in years  
prior:	prior therapy 0=no, 10=yes

### Source
D Kalbfleisch and RL Prentice (1980), The Statistical Analysis of Failure Time Data. Wiley, New York.
