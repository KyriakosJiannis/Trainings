#####################################################################################################################################################
# Session 1 
# by Kyriakos Ioannis  
# kyriakos.giannis@gmail.com, 
# Basics of R language, Learn your Machine, R enviroment, libraries and directories
#####################################################################################################################################################

version # Version 
sessionInfo() # R details including packages current in use

# q() # exit R

#############
## Help

help.start() # start help

?mean # help on the mean function - same as help(mean)
help(mean) # help on the mean function - same as ?mean
help(filter, package="dplyr") # help of a function in a specific package
help(package="dplyr") # main documentation on a package - same as clicking on the package name

??mean # search through all documentation using string "mean" - same as help.search("mean")
example(mean) # runs the example for the mean function - see at the end of the help file

args(lm) # list the arguments, same as using F1...
lm # try F1 over "lm"


??mean; ?mean # multiple commands in one line

# run external scripts
source("~/") # to execute external R file

#############
## working directory and script output

getwd() # what is the currenty working directory?
setwd("~/") # set working directory

sink("output.txt") # export all output of the script, helpful if you run a script "blind" 
i <- 1:10
outer(i,i,"*")
unlink("output.txt")
sink() # stop sinking

#############
## Packages/libraries

library() # to see which packages are installed at your site - the same as Packages tab on the right
search() # show which packages are currently loaded - same as tick box in the Packages tab on the right
loadedNamespaces() # some packages may be loaded by not available on the search list, this provides

# a full list
install.packages("foreign") # install package/library
update.packages() # update packages - you will not be able to update the shared packages, only personal

# personal ones
library(foreign) # load package/library, so it is available for you to use its functions
library("foreign", lib.loc="/../R/library") # loading personal version (personal library)
library("foreign", lib.loc="/../R/library")  # loading the shared version (global library)
detach("package:foreign", unload=TRUE) # detach&unload
remove.packages("foreign") # remove package : remove.packages(pkgs, lib) -- only removes the first in the list 

.libPaths() # # all library trees R knows about
.libPaths("C:/software/Rpackages")  # your path 

# you can install libraries from GitHub - GitHub frequently has development versions of packages
library(devtools) # install packages from github e.g. https://github.com/twitter/AnomalyDetection
install_github("twitter/AnomalyDetection")
library(githubinstall) # install packages from github e.g. https://github.com/twitter/AnomalyDetection (alternative)
githubinstall("AnomalyDetection")

#############
## Useful system functions

# Global options - affects the way R displays its results
op <- options(digits = 3) # e.g 3 digits
gc() #  empty garbagies
memory.limit()

# system invokes the OS command specified by command
system('msinfo32')
system('Netstat')
system('ipconfig')

# take the details of your Global Enviroment
eapply(.GlobalEnv,typeof) # gives the "type" of object from R's point of view
eapply(.GlobalEnv,class) # what "type" an object is from the point of view of object-oriented programming in R
eapply(.GlobalEnv,mode) # S - view
eapply(.GlobalEnv,storage.mode)

# dont run it :: for fun Sys.setlocale(locale = "Greek")
