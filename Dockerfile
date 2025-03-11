# Tomcat을 기본으로 사용하는 Docker 이미지
FROM tomcat:10.1

# JSP 파일을 Tomcat의 웹 애플리케이션 폴더에 복사
COPY ./A_ChipShopping /usr/local/tomcat/webapps/ROOT

# Tomcat 서버 실행 명령어
CMD ["catalina.sh", "run"]
