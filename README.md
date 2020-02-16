# Malumat

## A simple but useful MySQL version control system

A MySQL database version control system that you can use with XAMPP, MAMP, WAMP installations on MacOSX. I wrote this because I wanted to also push database files in Git commits. Pretty useful for me in Wordpress projects. Just setup your credentials with `./malumat config` then, add your **mysqldump** and **mysql** executables, then push & pull like Git. Save your work then add it to your repo. Probably there are thousands of scripts like that but I just needed a basic one for myself. 


## Sample usage in Wordpress folder structure:

Using the root folder of Wordpress, of course can be used in any folder but extract project files like this.

>wordpress/
>|--- wp-content/
>|--- wp-config.php
>|--- wp-config-sample.php
>|--- ... 
>|--- ... 
>|--- ... 
>|--- database/
>|--- malumat
>|--- malumatconfig
>|--- ... 
>|--- ... 
>|--- ... 


## Available commands:

>`./malumat config` to set database, user credentials and MySQL executables.
>`./malumat push` to push the database from your local ./database folder to your MySQL installation.
>`./malumat pull` to pull the database content from your MySQL installation.
>`./malumat save` to save a copy of the database content from your MySQL installation.
>`./malumat show` to see what you saved in ./database
>`./malumat flush` to remove all temporary saves in ./database

### Thanks for interest.

Needs a lot of detailed work but it is working enough for me now. I hope it may be useful for someone too. Especially for starter Wordpress developers.


Cheers...
