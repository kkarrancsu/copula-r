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

## A script which produces test data for rLog, to compare w/ Matlab

source("setupDir.R")

p <- 0.15;
y <- rlog(1000, p)
write.table(y, file = "testfiles/rlog_output1.csv", sep = ",",
            row.names = FALSE, col.names = FALSE)

p <- 0.9;
y <- rlog(1000, p)
write.table(y, file = "testfiles/rlog_output2.csv", sep = ",",
            row.names = FALSE, col.names = FALSE)
