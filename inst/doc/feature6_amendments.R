## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----echo=FALSE---------------------------------------------------------------
branch = "master"
library(knitr)
sampleAnnotation = system.file(
"extdata",
paste0("example_peps-", branch),
"example_amendments1",
"sample_table.csv",
package = "pepr"
)
sampleAnnotationDF = read.table(sampleAnnotation, sep = ",", header = T)
knitr::kable(sampleAnnotationDF, format = "html") 

## ---- echo=FALSE,message=TRUE,collapse=TRUE,comment=" "-----------------------
library(pepr)
projectConfig = system.file(
"extdata",
paste0("example_peps-", branch),
"example_amendments1",
"project_config.yaml",
package = "pepr"
)
.printNestedList(yaml::read_yaml(projectConfig))

## ----echo=FALSE---------------------------------------------------------------
library(knitr)
sampleAnnotation = system.file(
  "extdata",
  paste0("example_peps-", branch),
  "example_amendments1",
  "sample_table_newLib.csv",
  package = "pepr"
  )
  sampleAnnotationDF = read.table(sampleAnnotation, sep = ",", header = T)
  knitr::kable(sampleAnnotationDF, format = "html") 

## ----echo=FALSE---------------------------------------------------------------
library(knitr)
sampleAnnotation = system.file(
"extdata",
paste0("example_peps-", branch),
"example_amendments1",
"sample_table_newLib2.csv",
package = "pepr"
)
sampleAnnotationDF = read.table(sampleAnnotation, sep = ",", header = T)
knitr::kable(sampleAnnotationDF, format = "html") 

## -----------------------------------------------------------------------------
library(pepr)
projectConfig = system.file("extdata", paste0("example_peps-", branch),"example_amendments1", "project_config.yaml", package="pepr")
p=Project(projectConfig)

## -----------------------------------------------------------------------------
sampleTable(p)

## -----------------------------------------------------------------------------
listAmendments(p)

## -----------------------------------------------------------------------------
pNewLib = Project(file = projectConfig, amendments = "newLib")

## -----------------------------------------------------------------------------
sampleTable(pNewLib)

## -----------------------------------------------------------------------------
pNewLib2 = activateAmendments(p, "newLib2")
sampleTable(pNewLib2)

## -----------------------------------------------------------------------------
config(p)

