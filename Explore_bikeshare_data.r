#Load libraries
library(tidyverse)

#Create variable to store each city's data in
ny  <-  read.csv('new_york_city.csv')
wash  <-  read.csv('washington.csv')
chi  <-  read.csv('chicago.csv')

#Check to see if data is what we expect
head(ny,10)

head(wash,10)

head(chi,10)

#Create a data frame that only contains the dates

#New York
ny.date.only <- as.Date(ny$Start.Time)
head(ny.date.only)

#Chicago
chi.date.only <- as.Date(chi$Start.Time)
head(chi.date.only)

#Washington
wash.date.only <- as.Date(wash$Start.Time)
head(wash.date.only)



#Get the day of the week for each date and each city
#New York
ny.day <- weekdays(ny.date.only)
head(ny.day)

#Chicago
chi.day <- weekdays(chi.date.only)
head(chi.day)

#Washington
wash.day <- weekdays(wash.date.only)
tail(wash.day)
tail(chi.day)
tail(ny.day)


#Count the number of days for each city
#day <- c('Sunday','Monday','Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday')
ny.sunday_counter <- c()
chi.sunday_counter <- c()
wash.sunday_counter <- c()
ny.saturday_counter <- c()
chi.saturday_counter <- c()
wash.saturday_counter <- c()
ny.friday_counter <- c()
chi.friday_counter <- c()
wash.friday_counter <- c()
ny.thursday_counter <- c()
chi.thursday_counter <- c()
wash.thursday_counter <- c()
ny.wednesday_counter <- c()
chi.wednesday_counter <- c()
wash.wednesday_counter <- c()
ny.tuesday_counter <- c()
chi.tuesday_counter <- c()
wash.tuesday_counter <- c()
ny.monday_counter <- c()
chi.monday_counter <- c()
wash.monday_counter <- c()
idx_ny <- 1
idx_chi <- 1
idx_wash <- 1

#Sunday
#New York
for(day in ny.day){
    if(day == 'Sunday'){
      ny.sunday_counter[idx_ny] = 1
        idx_ny = idx_ny + 1
    } else {
        ny.sunday_counter[idx_ny] = 0
        idx_ny = idx_ny + 1
    }
}

#Chicago
for(day in chi.day){
    if(day == 'Sunday'){
      chi.sunday_counter[idx_chi] = 1
        idx_chi = idx_chi + 1
    } else{
        chi.sunday_counter[idx_chi] = 0
        idx_chi = idx_chi + 1
    }
}

#Washington
for(day in wash.day){
    if(day != 'Sunday' || is.na(day)){
      wash.sunday_counter[idx_wash] = 0
        idx_wash = idx_wash + 1
    } else {
        wash.sunday_counter[idx_wash] = 1
        idx_wash = idx_wash + 1
    }
}

#Saturday
idx_ny <- 1
idx_chi <- 1
idx_wash <- 1
#New York
for(day in ny.day){
    if(day == 'Saturday'){
      ny.saturday_counter[idx_ny] = 1
        idx_ny = idx_ny + 1
    } else {
        ny.saturday_counter[idx_ny] = 0
        idx_ny = idx_ny + 1
    }
}

#Chicago
for(day in chi.day){
    if(day == 'Saturday'){
      chi.saturday_counter[idx_chi] = 1
        idx_chi = idx_chi + 1
    } else{
        chi.saturday_counter[idx_chi] = 0
        idx_chi = idx_chi + 1
    }
}

#Washington
for(day in wash.day){
    if(day != 'Saturday' || is.na(day)){
      wash.saturday_counter[idx_wash] = 0
        idx_wash = idx_wash + 1
    } else {
        wash.saturday_counter[idx_wash] = 1
        idx_wash = idx_wash + 1
    }
}

#Friday
idx_ny <- 1
idx_chi <- 1
idx_wash <- 1
#New York
for(day in ny.day){
    if(day == 'Friday'){
      ny.friday_counter[idx_ny] = 1
        idx_ny = idx_ny + 1
    } else {
        ny.friday_counter[idx_ny] = 0
        idx_ny = idx_ny + 1
    }
}

#Chicago
for(day in chi.day){
    if(day == 'Friday'){
      chi.friday_counter[idx_chi] = 1
        idx_chi = idx_chi + 1
    } else{
        chi.friday_counter[idx_chi] = 0
        idx_chi = idx_chi + 1
    }
}

#Washington
for(day in wash.day){
    if(day != 'Friday' || is.na(day)){
      wash.friday_counter[idx_wash] = 0
        idx_wash = idx_wash + 1
    } else {
        wash.friday_counter[idx_wash] = 1
        idx_wash = idx_wash + 1
    }
}

#Thursday
idx_ny <- 1
idx_chi <- 1
idx_wash <- 1
#New York
for(day in ny.day){
    if(day == 'Thursday'){
      ny.thursday_counter[idx_ny] = 1
        idx_ny = idx_ny + 1
    } else {
        ny.thursday_counter[idx_ny] = 0
        idx_ny = idx_ny + 1
    }
}

#Chicago
for(day in chi.day){
    if(day == 'Thursday'){
      chi.thursday_counter[idx_chi] = 1
        idx_chi = idx_chi + 1
    } else{
        chi.thursday_counter[idx_chi] = 0
        idx_chi = idx_chi + 1
    }
}

#Washington
for(day in wash.day){
    if(day != 'Thursday' || is.na(day)){
      wash.thursday_counter[idx_wash] = 0
        idx_wash = idx_wash + 1
    } else {
        wash.thursday_counter[idx_wash] = 1
        idx_wash = idx_wash + 1
    }
}

#Wednesday
idx_ny <- 1
idx_chi <- 1
idx_wash <- 1
#New York
for(day in ny.day){
    if(day == 'Wednesday'){
      ny.wednesday_counter[idx_ny] = 1
        idx_ny = idx_ny + 1
    } else {
        ny.wednesday_counter[idx_ny] = 0
        idx_ny = idx_ny + 1
    }
}

#Chicago
for(day in chi.day){
    if(day == 'Wednesday'){
      chi.wednesday_counter[idx_chi] = 1
        idx_chi = idx_chi + 1
    } else{
        chi.wednesday_counter[idx_chi] = 0
        idx_chi = idx_chi + 1
    }
}

#Washington
for(day in wash.day){
    if(day != 'Wednesday' || is.na(day)){
      wash.wednesday_counter[idx_wash] = 0
        idx_wash = idx_wash + 1
    } else {
        wash.wednesday_counter[idx_wash] = 1
        idx_wash = idx_wash + 1
    }
}

#Tuesday
idx_ny <- 1
idx_chi <- 1
idx_wash <- 1
#New York
for(day in ny.day){
    if(day == 'Tuesday'){
      ny.tuesday_counter[idx_ny] = 1
        idx_ny = idx_ny + 1
    } else {
        ny.tuesday_counter[idx_ny] = 0
        idx_ny = idx_ny + 1
    }
}

#Chicago
for(day in chi.day){
    if(day == 'Tuesday'){
      chi.tuesday_counter[idx_chi] = 1
        idx_chi = idx_chi + 1
    } else{
        chi.tuesday_counter[idx_chi] = 0
        idx_chi = idx_chi + 1
    }
}

#Washington
for(day in wash.day){
    if(day != 'Tuesday' || is.na(day)){
      wash.tuesday_counter[idx_wash] = 0
        idx_wash = idx_wash + 1
    } else {
        wash.tuesday_counter[idx_wash] = 1
        idx_wash = idx_wash + 1
    }
}

#Monday
idx_ny <- 1
idx_chi <- 1
idx_wash <- 1
#New York
for(day in ny.day){
    if(day == 'Monday'){
      ny.monday_counter[idx_ny] = 1
        idx_ny = idx_ny + 1
    } else {
        ny.monday_counter[idx_ny] = 0
        idx_ny = idx_ny + 1
    }
}

#Chicago
for(day in chi.day){
    if(day == 'Monday'){
      chi.monday_counter[idx_chi] = 1
        idx_chi = idx_chi + 1
    } else{
        chi.monday_counter[idx_chi] = 0
        idx_chi = idx_chi + 1
    }
}

#Washington
for(day in wash.day){
    if(day != 'Monday' || is.na(day)){
      wash.monday_counter[idx_wash] = 0
        idx_wash = idx_wash + 1
    } else {
        wash.monday_counter[idx_wash] = 1
        idx_wash = idx_wash + 1
    }
}

#Check to see if data is what we expect
head(chi.sunday_counter,30)
head(ny.sunday_counter,30)
head(wash.sunday_counter,30)
head(chi.saturday_counter,30)
head(ny.saturday_counter,30)
head(wash.saturday_counter,30)
head(chi.friday_counter,30)
head(ny.friday_counter,30)
head(wash.friday_counter,30)
head(chi.thursday_counter,30)
head(ny.thursday_counter,30)
head(wash.thursday_counter,30)
head(chi.wednesday_counter,30)
head(ny.wednesday_counter,30)
head(wash.wednesday_counter,30)
head(chi.tuesday_counter,30)
head(ny.tuesday_counter,30)
head(wash.tuesday_counter,30)
head(chi.monday_counter,30)
head(ny.monday_counter,30)
head(wash.monday_counter,30)

#Combine all the days of the week for the three cities

Sunday <- sum(chi.sunday_counter,ny.sunday_counter,wash.sunday_counter)
Saturday <- sum(chi.saturday_counter,ny.saturday_counter,wash.saturday_counter)
Friday <- sum(chi.friday_counter,ny.friday_counter,wash.friday_counter)
Thursday <- sum(chi.thursday_counter,ny.thursday_counter,wash.thursday_counter)
Wednesday <- sum(chi.wednesday_counter,ny.wednesday_counter,wash.wednesday_counter)
Tuesday <- sum(chi.tuesday_counter,ny.tuesday_counter,wash.tuesday_counter)
Monday <- sum(chi.monday_counter,ny.monday_counter,wash.monday_counter)

Sunday
Saturday
Friday
Thursday
Wednesday
Tuesday
Monday

#Combine all the totals in a table and check to see if it looks like what we expect
Days_of_the_week <- c('Sunday', 'Saturday', 'Friday', 'Thursday', 'Wednesday', 'Tuesday', 'Monday')
df <- data.frame(Days_of_the_week, Total_Bike_Shares = c(Sunday, Saturday, Friday, Thursday, Wednesday,Tuesday, Monday))
df
summary(df)

#Create a barchart of the amount of bike rides per week day

 ggplot(aes(x = Days_of_the_week, y = Total_Bike_Shares, fill = Days_of_the_week), data = df) +
    geom_bar(stat = 'identity', width = 0.8) +
    geom_text(aes(label=Total_Bike_Shares), vjust=1.6, color="white", size=3.5) +
    labs(
        title = "Total bike rides per week day",
        x = "Days of the week",
        y = "Total"
    ) +
    theme_minimal()



key <-data.frame(c(seq(1,33691, by = 1)))

#Extract start and end stations from all three cities
ny_start_station <- ny['Start.Station']
ny_end_station <- ny['End.Station']
chi_start_station <- chi['Start.Station']
chi_end_station <- chi['End.Station']
wash_start_station <- wash['Start.Station']
wash_end_station <- wash['End.Station']

#Combine into one table for each city
ny_stations  <- cbind(ny_start_station,ny_end_station)
chi_stations  <- cbind(chi_start_station,chi_end_station)
wash_stations  <- cbind(wash_start_station,wash_end_station)

#Count the number of station combinations: New York
ny_stations_no_duplicates <-  ny_stations %>%
                    group_by(Start.Station, End.Station)  %>%
                    tally()  %>%
                    arrange(desc(n)) %>%
                    glimpse()

#Count the number of station combinations: Chicago
chi_stations_no_duplicates <-  chi_stations %>%
                    group_by(Start.Station, End.Station)  %>%
                    tally()  %>%
                    arrange(desc(n)) %>%
                    glimpse()

#Count the number of station combinations: Washington
wash_stations_no_duplicates <-  wash_stations %>%
                    group_by(Start.Station, End.Station)  %>%
                    tally()  %>%
                    arrange(desc(n)) %>%
                    glimpse()

head(wash_stations_no_duplicates)
sum(wash_stations_no_duplicates$n)

key_ny <- data.frame(c(seq(1,33691, by=1)))
key_chi <- data.frame(c(seq(1,6334, by=1)))
key_wash <- data.frame(c(seq(1,26379, by=1)))

head(key_wash)

#Create new tables with keys for each city
ny_stations_no_duplicates <- bind_cols(key_ny,ny_stations_no_duplicates)
chi_stations_no_duplicates <- bind_cols(key_chi,chi_stations_no_duplicates)
wash_stations_no_duplicates <- bind_cols(key_wash,wash_stations_no_duplicates)

#Check that data is correct
head(wash_stations_no_duplicates)
tail(wash_stations_no_duplicates)

#Create a table containing top ten combinations for each city
#New York
ny_top_10 <- ny_stations_no_duplicates[1:10,1:4]
colnames(ny_top_10)[1] <- "key"
head(ny_top_10)

ny_top_10_b <- ny_top_10 %>%
    select(key,Start.Station,End.Station, n) %>%
    unite(Start_and_end, c(Start.Station,End.Station))

#Chicago
chi_top_10 <- chi_stations_no_duplicates[1:10,1:4]
colnames(chi_top_10)[1] <- "key"
head(chi_top_10)

chi_top_10_b <- chi_top_10 %>%
    select(key,Start.Station,End.Station, n) %>%
    unite(Start_and_end, c(Start.Station,End.Station))

#Washington
wash_top_10 <- wash_stations_no_duplicates[1:10,1:4]
colnames(wash_top_10)[1] <- "key"
head(wash_top_10)

wash_top_10_b <- wash_top_10 %>%
    select(key,Start.Station,End.Station, n) %>%
    unite(Start_and_end, c(Start.Station,End.Station))

head(wash_top_10_b,10)

#Plot the top 10 combinations for each city
#New York
ny_plot <- ggplot(aes(x = key, y = n, fill = Start_and_end), data = ny_top_10_b) +
        geom_bar(stat="identity") +
        labs(
            title = "Most common trip from start to end for New York",
            x = "Start & End Stations",
            y = "Count" ) +
        theme_minimal()

ny_plot + theme(axis.text.x = element_text(angle = 90, hjust = 1))

#Chicago
chi_plot <- ggplot(aes(x = key, y = n, fill = Start_and_end), data = chi_top_10_b) +
        geom_bar(stat="identity") +
        labs(
            title = "Most common trip from start to end for Chicago",
            x = "Start & End Stations",
            y = "Count" ) +
        theme_minimal()

chi_plot + theme(axis.text.x = element_text(angle = 90, hjust = 1))

#Washington
wash_plot <- ggplot(aes(x = key, y = n, fill = key), data = wash_top_10_b) +
        geom_bar(stat="identity") +
        labs(
            title = "Most common trip from start to end for Washington",
            x = "Start & End Stations",
            y = "Count" ) +
        theme_minimal()

wash_plot + theme(axis.text.x = element_text(angle = 90, hjust = 1))

head(chi)
max(ny$Trip.Duration)

#Create separate tables from the main data to use in plots
#New York
ny_gender <- ny %>%
    select(Trip.Duration,Gender) %>%
    glimpse()

#Chicago
chi_gender <- chi %>%
    select(Trip.Duration,Gender) %>%
    glimpse()

summary(ny_gender)

summary(chi_gender)

#Plot for New York
ggplot(data = subset(ny_gender, !is.na(Gender)), aes(x = Gender , y = Trip.Duration)) +
        geom_boxplot()+
        facet_wrap(~ Gender) +
        coord_cartesian(ylim = c(200,2000)) +
        labs(
            title = "Trip Durations By Gender for Commuters in New York",
            xlab = 'Gender',
            ylab = 'Trip Duration')+
        theme_minimal()

#Plot for Chicago
ggplot(data = subset(chi_gender, !is.na(Gender)), aes(x = Gender , y = Trip.Duration)) +
        geom_boxplot()+
        facet_wrap(~ Gender) +
        coord_cartesian(ylim = c(200,2000)) +
        labs(
            title = "Trip Durations By Gender for Commuters in Chicago",
            xlab = 'Gender',
            ylab = 'Trip Duration')+
        theme_minimal()

system('python -m nbconvert Explore_bikeshare_data.ipynb')
