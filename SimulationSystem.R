
#load_vector <- sample(0:10, 15, replace = TRUE)
load_vector <- c(0,1,4,2,0,4,7,0,2,7,3,2,4,0,1)

plot(load_vector, xlim = c(0,15), type="S",
     xlab= "Time", ylab= "Jobs in the System")
grid(lty = "dotted")

load_server <- sum(load_vector > 0)

#Avarage Server
avarage_su <- load_server/length(load_vector)

avarage_ql <- (sum(load_vector) - load_server)/(length(load_vector))

avarage_nj <- avarage_su + avarage_ql

#1. Average Server Utility(load) in the given time interval. 
avarage_su

#2. The Average Queue Length. 
avarage_ql

#3. The Average Number of Jobs in the System.  
avarage_nj
