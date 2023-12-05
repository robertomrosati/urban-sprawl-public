#modify the next line with the proper path to your repository, and uncomment it
#repository_folder <- "/home/username/Documents/urban-sprawl-public"
b50 <- read.csv(paste(repository_folder,"/experiments/results_bicycle50.csv", sep=""))
b10 <- read.csv(paste(repository_folder,"/experiments/results_bicycle10.csv", sep=""))
c50 <- read.csv(paste(repository_folder,"/experiments/results_car50.csv", sep=""))
c10 <- read.csv(paste(repository_folder,"/experiments/results_car10.csv", sep=""))

aggb50 <- aggregate(b50, by=list(b50$city), FUN=mean)
aggb10 <- aggregate(b10, by=list(b10$city), FUN=mean)
aggc50 <- aggregate(c50, by=list(c50$city), FUN=mean)
aggc10 <- aggregate(c10, by=list(c10$city), FUN=mean)

compare <- data.frame(cbind(aggb50$Group.1, aggb50$cost,  aggb10$cost, aggc50$cost, aggc10$cost))

colnames(compare) = c("city","b50","b10","c50","c10")
compare$b50 <- as.numeric(compare$b50)
compare$b10 <- as.numeric(compare$b10)
compare$c50 <- as.numeric(compare$c50)
compare$c10 <- as.numeric(compare$c10)
