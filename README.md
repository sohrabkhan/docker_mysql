#Simple Docker MySQL#
Then build clone this repo and then build the container:
 > docker build -t sohrabkhan/mysql .

Then run the mysql container using:
 > docker run -v data_dir:/var/lib/mysql -d sohrabkhan/mysql

