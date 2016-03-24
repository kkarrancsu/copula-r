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

source("loadCopulaPackage.R")

n <- 1000;
alphaVal <- 0.3
y <- rSibuya(n, alphaVal)

write.table(y, file = "testfiles/rSibuya_output1.csv", sep = ",",
            row.names = FALSE, col.names = FALSE)

n <- 1000;
alphaVal <- 0.7
y <- rSibuya(n, alphaVal)
write.table(y, file = "testfiles/rSibuya_output2.csv", sep = ",",
            row.names = FALSE, col.names = FALSE)