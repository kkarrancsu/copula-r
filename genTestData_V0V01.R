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

## A script which produces test data for V0 and V01 for Archimedean Copulas,
## to compare w/ Matlab

source("setupDir.R")

cop <- getAcop("Clayton")
n <- 1000
theta0 <- 0.5
theta1 <- 1.7
V0_val <- cop@V0(n, theta0)
V01_val <- cop@V01(V0_val, theta0, theta1)
write.table(V0_val, file = "testfiles/clayton_v0.csv", sep = ",",
            row.names = FALSE, col.names = FALSE)
write.table(V01_val, file = "testfiles/clayton_v01.csv", sep = ",", 
            row.names = FALSE, col.names = FALSE)


cop <- getAcop("Gumbel")
n <- 1000
theta0 <- 1.1
theta1 <- 2.55
V0_val <- cop@V0(n, theta0)
V01_val <- cop@V01(V0_val, theta0, theta1)
write.table(V0_val, file = "testfiles/gumbel_v0.csv", sep = ",",
            row.names = FALSE, col.names = FALSE)
write.table(V01_val, file = "testfiles/gumbel_v01.csv", sep = ",", 
            row.names = FALSE, col.names = FALSE)

cop <- getAcop("Frank")
n <- 1000
theta0 <- 0.5
theta1 <- 5.0
V0_val <- cop@V0(n, theta0)
V01_val <- cop@V01(V0_val, theta0, theta1)
write.table(V0_val, file = "testfiles/frank_v0.csv", sep = ",",
            row.names = FALSE, col.names = FALSE)
write.table(V01_val, file = "testfiles/frank_v01.csv", sep = ",", 
            row.names = FALSE, col.names = FALSE)
