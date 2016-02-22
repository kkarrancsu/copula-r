#!/bin/bash
reset

# Remove Old versions
rm copula_0.999-14.tar.gz
R CMD REMOVE --library=install copula

# build new version
R CMD build --no-build-vignettes --no-manual copula

# install in our directory
R CMD INSTALL --library=install copula_0.999-14.tar.gz
