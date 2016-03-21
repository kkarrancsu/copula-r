#**************************************************************************
#* 
#* Copyright (C) 2016  Kiran Karra <kiran.karra@gmail.com>
#*
#* This program is free software: you can redistribute it and/or modify
#* it under the terms of the GNU General Public License as published by
#* the Free Software Foundation, either version 3 of the License, or
#* (at your option) any later version.
#*
#* This program is distributed in the hope that it will be useful,
#* but WITHOUT ANY WARRANTY; without even the implied warranty of
#* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#* GNU General Public License for more details.
#*
#* You should have received a copy of the GNU General Public License
#* along with this program.  If not, see <http://www.gnu.org/licenses/>.
#**************************************************************************

## A script which produces test data for rF01Frank, to compare w/ Matlab

source("setupDir.R")

V0 <- runif(10000)*100
theta0 <- 0.4
theta1 <- 3
rej <- 10
approx <- 100
St = rF01Frank(V0, theta0, theta1, rej, approx)

write.table(V0, file = "testfiles/rF01Frank_input1.csv", sep = ",",
            row.names = FALSE, col.names = FALSE)
write.table(St, file = "testfiles/rF01Frank_output1.csv", sep = ",", 
            row.names = FALSE, col.names = FALSE)

V0 <- runif(10000)*300
theta0 <- 0.8
theta1 <- 8
rej <- 50
approx <- 200
St = rF01Frank(V0, theta0, theta1, rej, approx)

write.table(V0, file = "testfiles/rF01Frank_input2.csv", sep = ",",
            row.names = FALSE, col.names = FALSE)
write.table(St, file = "testfiles/rF01Frank_output2.csv", sep = ",", 
            row.names = FALSE, col.names = FALSE)
