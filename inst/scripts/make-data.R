# see article and Iciar's code repo
library(mixOmics)
library(here)
x_train <- readRDS(here('data-raw', 'x_train.rds'))
y_train <- readRDS(here('data-raw', 'y_train.rds'))
x_test <- readRDS(here('data-raw', 'x_test.rds'))

mod <- mixOmics::splsda(x_train,
                        y_train,
                        ncomp = 1,
                        keepX = 45)
saveRDS(mod, here('data-raw', 'mods'))
