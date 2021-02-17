#WET Dilution calculator
#first, enter in the ZID value
ZID<-readline(prompt = "What is the ZID?")
#convert to integer
ZID<-as.numeric(ZID,options(scipen=-100,digits = 4))
ZDIL<-(100/ZID)
#enter RMZ
RMZ<-readline(prompt = "What is the RMZ?")
RMZ<-as.numeric(RMZ,options(scipen=-100,digits = 4))
RDIL<-(100/RMZ)
#calculate the WET dilution series
a<-((ZDIL+100)/2)
b<-(ZDIL)
c<-(ZDIL/2)
d<-(ZDIL/4)
print(paste("100%",a,b,c,d,"0"))
e<-((RDIL+100)/2)
f<-(RDIL)
g<-(RDIL/2)
h<-(RDIL/4)
print(paste("100%",e,f,g,h,"0"))
i<-((100+a)/2)
j<-((g+0)/2)
k<-((RDIL+ZDIL)/2)
print(paste("100%",i,ZDIL,k,RDIL,h,0))
