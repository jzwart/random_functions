
percentAnni<-function(){
bday<-as.Date(readline('When is your birthday? (format: YYYY-MM-DD) '))
anni<-as.Date(readline('When is your anniversary? (format: YYYY-MM-DD) ') )
days<-as.numeric(Sys.Date()-anni)  #days together
percent<-days/(as.numeric(Sys.Date()-bday))*100 #percent of life together
nextAnni<-trunc(percent)+1 #next percent anniversary
nextDate<-Sys.Date()
while(nextAnni>(as.numeric(nextDate-anni)/as.numeric(nextDate-bday)*100)){
  nextDate<-nextDate+1
}
nextAnniDays<-as.numeric(nextDate-Sys.Date())
print(paste("Your next percent anniversary is ",nextAnni,' percent life together and will occur on ',nextDate,'. This is ',nextAnniDays,' days away.',sep=''))
}
