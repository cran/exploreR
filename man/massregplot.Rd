% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/massregplot.R
\name{massregplot}
\alias{massregplot}
\title{Mass Regression Plot}
\usage{
massregplot(data, dv.var, ignore = NULL, save = NULL,
  include.factors = FALSE, include.se = TRUE)
}
\arguments{
\item{data}{data.frame object that contains both the dependent variable and predictor variables you want to plot.}

\item{dv.var}{single dependent variable you want to plot your predictors against.}

\item{ignore}{accepts a character vector of one or more variables you want the function to skip. If nothing is passed through this option, the function will attempt to create a graph plotting the dependent variable and every other column of data.}

\item{save}{accepts a character.  If the function recieves a character, it will create a pdf file with that name and leave the plots in there.}

\item{include.factors}{if TRUE, will also plot factor variables against your dv.  Otherwise it will skip these as regression plots of categorical variables are of imited use.}

\item{include.se}{if left TRUE, will shade the area around the regression line with the 95\% confidence interval range.  Setting to FALSE will plot only the regression line to a scatter plot for each paring of variables.}
}
\value{
Doesn't return a value, per se, but will generate side effects like plotting all the graphs created by the function.  If the save option is used, it will save all generated graphs to a pdf file whose name is specified by the user.
}
\description{
This function takes in a dataframe, the dependent variable, and optionally a character vector of independent variables you want the function to ignore, and produces a regression plot of every variable compared to the dependent variable passed into the function.  It will ignore columns which contain characters and (also optional) factors.
}
\examples{
exam.df <- iris
massregplot(exam.df, "Sepal.Length", ignore = "Species")
massregplot(exam.df, "Sepal.Length", ignore = c("Species", "Petal.Width"), include.se = FALSE)

}

