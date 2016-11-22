![R](https://www.r-project.org/Rlogo.png)

# R-analytics for technical analysis
Exploring R for technical analysis.

The **[R](https://www.r-project.org/)** project is very suitable for technical analysis with its capabilities for handling large data sets, statistical computing and charting. There are libraries available that are dedicated for technical analysis.

The modelling is implemented with   **[quantmod](http://www.quantmod.com/)**; a Quantitative Financial Modelling & Trading Framework for R. The package for R is designed to assist the quantitative trader in the development, testing, and deployment of statistically based trading models.

It is our goal to develop trading models that are verified with Backtesting (see **[Backtesting strategies with R]( https://timtrice.github.io/backtesting-strategies/)**).

**[R Studio](https://www.rstudio.com/)** is used for the  development and can be installed with **[Docker compose](https://docs.docker.com/compose/)** to build a Dockerized development environment. The Dockerfile will install R Studio with the required packages for this project. For more information please check the [Docker](https://docs.docker.com/compose/) documentation.

![r studio](https://www.rstudio.com/wp-content/uploads/2016/09/RStudio-Logo-Blue-Gray-250.png)


## Key libraries
+ **[Quantmod](http://www.quantmod.com/)**, quantitative financial modelling for development of trading models
+ **TTR (Technical Trading Rules)**, technical analysis package
+ **xts (eXtensible Time Series)**, time-series package
+ **curl**, a modern and flexible web client for R
