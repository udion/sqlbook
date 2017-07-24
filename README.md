# sqlbook
set of excerises on sql using postgresql.

# Introduction and Setting up
this consists of files correponding to some excercise demonstarting the concepts from database using *postgresql*.
Following sets up the required *postgres* environment along with *pgAdmin3* which will ease out the life for all future purposes.
* Install the postgresql following instruction [here](https://www.postgresql.org/download/linux/ubuntu/)
* Do `sudo -i -u postgres` to shift to the postgres default user
* Once the shell for *postgres* opens up do `createuser --interactive` , this [link](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-16-04) can be helpful for the setup, also create the **db** with the corresponding username (*postgresql convention*)
* Setup the password for the newly created user *this will help in connecting pgAdmin3 to the server as one can not leave the password box blank*

# Running the *.sql* scripts
* Once the above setups are done to create the **Database** of a club usinf the *clubdata.sql* script in the repo, do
`psql -U <username> -a -f <path_to_sql_file>` (this will run the script and create and filled the database)
