# Tomcatのイメージをダウンロードします。
FROM tomcat:jdk11-openjdk
 
# ローカルのソースコードをマウントする。
ENV APP_ROOT /usr/local/tomcat/webapps
COPY target/helloworld.war ${APP_ROOT}

# パッケージをアップデートします。
RUN apt-get update

