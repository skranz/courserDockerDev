FROM skranz/courser:latest

MAINTAINER Sebastian Kranz "sebastian.kranz@uni-ulm.de"

# copy and run package installation file
COPY install_dev.r /tmp/install_dev.r
RUN Rscript /tmp/install_dev.r 

# Use manual shiny-server configuration
COPY shiny-server.conf /etc/shiny-server/shiny-server.conf
RUN chmod 644 /etc/shiny-server/shiny-server.conf
