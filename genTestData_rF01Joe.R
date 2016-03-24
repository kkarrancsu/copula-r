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

## A script which produces test data for rF01Joe, to compare w/ Matlab

source("setupDir.R")

# tests the else branch
V0 <- runif(1000)*100
alpha <- 0.3
approx <- 100000
St = rF01Joe(V0, alpha, approx)

write.table(V0, file = "testfiles/rF01Joe_input1.csv", sep = ",",
            row.names = FALSE, col.names = FALSE)
write.table(St, file = "testfiles/rF01Joe_output1.csv", sep = ",", 
            row.names = FALSE, col.names = FALSE)

# test the IF branch
V0 <- runif(10000)*100+300
alpha <- 0.8
approx <- 10
St = rF01Joe(V0, alpha, approx)

write.table(V0, file = "testfiles/rF01Joe_input2.csv", sep = ",",
            row.names = FALSE, col.names = FALSE)
write.table(St, file = "testfiles/rF01Joe_output2.csv", sep = ",", 
            row.names = FALSE, col.names = FALSE)