FROM    ubuntu:18.04

# Update mirrors
RUN    apt-get update
RUN    apt-get upgrade -y
RUN    apt-get install nginx -y
RUN    service nginx start


# SSH installation
RUN    apt-get install ssh -y
RUN echo "root:admin" | chpasswd admin
RUN    mkdir /var/run/sshd

# Supervisord installation and configuration
RUN    apt-get install supervisor -y 
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Expose ports
EXPOSE    22 80 3306 8080 21

# Execute supervisord
# CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
CMD ["/usr/bin/supervisord"]