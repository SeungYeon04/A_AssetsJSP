# Tomcat 10.1 이미지 사용
FROM tomcat:10.1-jdk11

# WAR 파일을 Tomcat webapps 디렉토리에 복사
COPY A_ChipShopping.war /usr/local/tomcat/webapps/ROOT.war

# 포트 개방
EXPOSE 8080

# Tomcat 실행
CMD ["catalina.sh", "run"]
