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

## setup the dynamic library, I'm not sure why I have to do all this wrangling
## to call logseries_R but this is what I was able to get working :/

dyn.load("testfiles/logseries.so")
n <- 1000
alpha <- 0.75
val <- integer(n)
alpha <- rep(alpha, len = n)
y <- .C("rlogseries_R", as.integer(n), as.double(alpha), val = as.integer(val))$val
write.table(y, file = "testfiles/rlogseries_output1.csv", sep = ",",
            row.names = FALSE, col.names = FALSE)

alpha <- 0.25
val <- integer(n)
alpha <- rep(alpha, len = n)
y <- .C("rlogseries_R", as.integer(n), as.double(alpha), val = as.integer(val))$val
write.table(y, file = "testfiles/rlogseries_output2.csv", sep = ",",
            row.names = FALSE, col.names = FALSE)

alpha <- 0.99
val <- integer(n)
alpha <- rep(alpha, len = n)
y <- .C("rlogseries_R", as.integer(n), as.double(alpha), val = as.integer(val))$val
write.table(y, file = "testfiles/rlogseries_output3.csv", sep = ",",
            row.names = FALSE, col.names = FALSE)