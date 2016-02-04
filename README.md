#Simple Docker MySQL#
Create a data-only container:
 > docker create --name mysql_data -v /var/lib/mysql mysql

Then build clone this repo and then build the container:
 > docker build -t sohrabkhan/mysql .

Then run the mysql container using:
 > docker run -it --volumes-from mysql_data sohrabkhan/mysql
