
#load_vector <- sample(0:10, 15, replace = TRUE)
load_vector <- c(0,1,4,2,0,4,7,0,2,7,3,2,4,0,1)

plot(1:15,
     load_vector,
     type="h",
     xlab= "Time",
     ylab= "Jobs in the System"
     )

avarage_su <- sum(load_vector > 0)/length(load_vector)

avarage_ql <- (sum(load_vector) - avarage_su)/(length(load_vector))

avarage_nj <- avarage_su + avarage_ql

#1. Average Server Utility(load) in the given time interval. 
avarage_su

#2. The Average Queue Length. 
avarage_ql

#3. The Average Number of Jobs in the System.  
avarage_nj
