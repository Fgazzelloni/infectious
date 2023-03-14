#############################################
# building blocks of the package
#############################################

# ADD DATA TO PACKAGE
# set the data from the original source and tidy appropriately
usethis::use_data_raw()
# it creates a .R script where to put the steps for get the data ready

# once data are ready
usethis::use_data(yourdata)

# creates the R folder where the .R scripts of data documentation is located
usethis::use_r("yourdataset")
# read how to document your work
vignette("rd-other") # for datasets
vignette("rd")

devtools::document()
devtools::load_all(".")

#############################################
# ADD PACKAGE INFO 
# so the ? works
usethis::use_package_doc()
devtools::document()


# ADD DATA PACKAGE INFO 
usethis::use_r("yourdataset")
devtools::document()


# when filling the data .R script for explaining what's inside the dataset
# a specific structure needs to be used (see examples)

# when new data are added 
# Build tab and ---> More ---> clean and install
# to add the new data to NAMESPACE



