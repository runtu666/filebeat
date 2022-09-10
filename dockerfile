FROM elastic/filebeat:6.8.23

# Copy our custom configuration file
COPY filebeat.yml /usr/share/filebeat/filebeat.yml

USER root
# Create a directory to map volume with all docker log files
RUN mkdir -p /usr/share/filebeat/docker/logs
RUN chown -R root /usr/share/filebeat/
RUN chmod -R go-w /usr/share/filebeat/