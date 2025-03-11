FROM tomcat:10.1-jdk11

# WAR 파일을 Tomcat의 webapps 디렉토리에 복사
COPY target/your-app.war /usr/local/tomcat/webapps/

# 8080 포트 열기
EXPOSE 8080

# Tomcat 시작 명령어
CMD ["catalina.sh", "run"]
