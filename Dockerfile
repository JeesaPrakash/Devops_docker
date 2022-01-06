FROM mysql
#This includes the mysql container image

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=pucsdStudents
ENV MYSQL_USER=pucsd 
ENV MYSQL_PASSWORD=pucsd

COPY text.sql /docker-entrypoint-initdb.d
#It copies the data in the container and builds in when called
EXPOSE 3306

