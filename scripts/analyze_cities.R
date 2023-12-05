#modify the next line with the proper path to your repository, then uncomment it
#repository_folder <- "/home/username/Documents/urban-sprawl-public"

cities <- read.csv(paste(repository_folder,"/city_list/city_data.csv",sep=""))
cities$lived_2018 <- cities$lived_2018/100
cities$lived_2011 <- cities$lived_2011/100
cities$lived_2006 <- cities$lived_2006/100
