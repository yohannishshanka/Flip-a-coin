

t=as.numeric(readline("how many trails?"))
d=as.numeric(readline("what is the current position?"))
r=rbinom(t,1,0.5)
f=c()
w=1
while (w<=100) {
  if (r[w]==1){f=append(f,"head")}else{f=append(f,"tail")}
  w=w+1
}

Head_or_tail=c("no trails",f)
Current_position=c()
Current_position=append(Current_position,d)
a=2
while (a<=t+1) {
  if(Head_or_tail[a]=="head"){d=d+d*0.01}else{d=d-d*0.01}
  
  Current_position <- append(Current_position,d)
  a=a+1
  
} 
num_of_trail=0:t
D=data.frame(num_of_trail,Head_or_tail,Current_position)
print(D)

plot(x=num_of_trail ,y=Current_position,xlab = "Df$time_points",ylab =" Df$position",main = "graph")

