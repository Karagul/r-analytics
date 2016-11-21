# R-Studio by Rocker (standard docker)
FROM rocker/rstudio-stable:latest

# R configuration
RUN R -e "install.packages('TTR', repos='http://cran.us.r-project.org')"
