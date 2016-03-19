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

## A script which produces test data for retstable, to compare w/ Matlab

source("setupDir.R")

V0 <- runif(10000)
alpha <- 0.5
h <- 1
method <- "MH"
St = retstable(alpha, V0, h, method)

write.table(V0, file = "testfiles/retstable_input1.csv", sep = ",",
            row.names = FALSE, col.names = FALSE)
write.table(St, file = "testfiles/retstable_output1.csv", sep = ",", 
            row.names = FALSE, col.names = FALSE)

V0 <- runif(10000)
alpha <- 1
h <- 2
method <- "MH"
St = retstable(alpha, V0, h, method)

write.table(V0, file = "testfiles/retstable_input2.csv", sep = ",",
            row.names = FALSE, col.names = FALSE)
write.table(St, file = "testfiles/retstable_output2.csv", sep = ",", 
            row.names = FALSE, col.names = FALSE)

V0 <- runif(10000)
alpha <- 0.1
h <- 4
method <- "MH"
St = retstable(alpha, V0, h, method)

write.table(V0, file = "testfiles/retstable_input3.csv", sep = ",",
            row.names = FALSE, col.names = FALSE)
write.table(St, file = "testfiles/retstable_output3.csv", sep = ",", 
            row.names = FALSE, col.names = FALSE)