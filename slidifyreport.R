usePackage<-function(p){
  # load a package if installed, else load after installation.
  # Args: p: package name in quotes
  if (!is.element(p, installed.packages()[,1])){
    print(paste('Package:',p,'Not found, Installing Now...'))
    suppressMessages(install.packages(p, dep = TRUE))
  }
  print(paste('Loading Package :',p))
  require(p, character.only = TRUE)  
}
usePackage("slidify")
usePackage('knitr')
#setwd("/Users/smallwes/develop/academic/coursera/datascience/c9-dp/project1/")
#author("slidifyreport")

usePackage("slidify")
usePackage('knitr')
setwd("/Users/smallwes/develop/academic/coursera/datascience/c9-dp/project1/slidifyreport")
slidify("index.Rmd")
browseURL('index.html')