# Malumat

## A simple but useful MySQL version control system

A MySQL database version control system that you can use it pure or with LAMP installations on MacOSX/Linux. I wrote this because I wanted to also push database files in Git commits. Pretty useful for me in Wordpress projects. Just define your credential variables into `.malumatenv` file, add your `mysqldump` and `mysql` executables, then push & pull like Git. Save your work then add it to your repo. Probably there are thousands of scripts like that but I just needed a basic one for myself. If you don't define spesific `mysqldump` and `mysql` executables it will use system default. You can also take a look on sample `.malumatenv` file in the repo.

## Installation
If `~/.local/bin` is in your $PATH then you're good to go.
<pre>
curl -o malumat https://raw.githubusercontent.com/fatihgozenc/malumat/master/malumat
chmod u+x malumat
mv malumat ~/.local/bin
</pre>

## Sample usage in Wordpress folder structure:

Using the root folder of Wordpress, of course can be used in any folder but extract project files like this.
<pre>
wordpress/
|--- wp-content/
|--- wp-config.php
|--- wp-config-sample.php
|--- ... 
|--- ... 
|--- ... 
|--- malumatdir/
|--- .malumatenv
|--- ... 
|--- ... 
|--- ... 
</pre>

### About .htaccess:
Please do not forget to put a redirection for your database folder and .malumatenv file. Otherwise credentials can be seen by everyone. Or you can edit file permissions from your server of course. Adding .malumatenv into your .gitignore file is also an option. You can add redirections in .htaccess like this:
<pre>
Redirect 301 /.malumatenv /
Redirect 301 /malumatdir /
</pre>

## Available commands:

`malumat env` to set database, user credentials and MySQL executables.
`malumat push` to push the database from your local ./malumatdir folder to your MySQL installation.
`malumat pull` to pull the database content from your MySQL installation.
`malumat rename` `-l` or `-p` to rename domain name for your local or production server.
`malumat save` to save a copy of the database content from your MySQL installation.
`malumat show` to see what you saved in ./malumatdir
`malumat flush` to remove all temporary saves in ./malumatdir
`malumat -r init` to create an SSH tunnel with your remote MySQL server.
`malumat -r push` to push database from your local ./malumatdir folder to your remote MySQL server.
`malumat -r pull` to pull database from your remote MySQL server.
`malumat -r save` to save a copy of the database from your remote MySQL server.
`malumat -r exit` to close SSH tunnel with your remote MySQL database.

## TODOs:
• Windows support

### Thanks for interest.

Needs more detailed work but it is working enough for me now. I hope it may be useful for someone too. Especially for Wordpress developers.


Cheers...
