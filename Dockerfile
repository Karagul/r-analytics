# R-Studio by Rocker (standard docker)
FROM rocker/rstudio-stable:latest

# R configuration
RUN R -e "install.packages('quantmod', repos='http://cran.us.r-project.org')"
RUN R -e "install.packages('xts', repos='http://cran.us.r-project.org')"
RUN R -e "install.packages('TTR', repos='http://cran.us.r-project.org')"
RUN R -e "install.packages('PerformanceAnalytics', repos='http://cran.us.r-project.org')"
