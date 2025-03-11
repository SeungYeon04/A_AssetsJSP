FROM tomcat:10.1-jdk11

# Copy WAR file to the Tomcat webapps directory
COPY target/your-app.war /usr/local/tomcat/webapps/

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
