### Assigmenmt for the course of Advanced Bioinformatics, Data mining and data intergration for biomedical reserach###

###Assignment 2


install.packages('cgdsr') ## this install the package cgdsr  

help('cgdsr') ## in order to understand the package, this command checks the documantation of the package

mycgds = CGDS("http://www.cbioportal.org/public-portal/") ## according to the documenation this creates the CGDS object in which the data for cancer studies would be extracted

cancerstudies=getCancerStudies(mycgds)[,1] ### in column 1 I have the list of cancer studies, I am interested in cancer study thca_tgca, so...
mycancerstudy = getCancerStudies(mycgds) [which(cancerstudies=="thca_tcga"),1]  ##my cancer study will be the line for that cancer study in this column (function which avoids me to manually check)

mycaselist=getCaseLists(mycgds,mycancerstudy)[2,1] ## column 1 contains the case lists, I chose all tumors

mygeneticprofile=getGeneticProfiles(mycgds,mycancerstudy)[1,1]  ## since I am interested in mutations the genetic profile chosen was "thca_tcga_mutations"

mutationtable=getProfileData(mycgds,"BRAF",mygeneticprofile,mycaselist)  ## this generates a data frame with the patients and their corresponding mutations, if tumor was sequenced 

table(mutationtable$BRAF)  ##this summarizies the mutations giving how many occurrances for each mutation. 
plot(x = table(mutationtable),lwd=15 , ylab="number of patients with mutation",ylim = c(0,300),xlab="types of mutations")  ## this plots a graph for the number of mutations 
