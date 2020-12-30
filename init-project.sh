#!/bin/bash

#################################################################
#Script Name:   init-project.sh
#Description:   create a new project directory with the provided
#               name, initialise git, and push the project to a 
#               new GitHub repo
#Args:          name of the new project
#Author:        Aryan Shah
#Email:         aryanshah791@gmail.com
#################################################################

#Run python script to create new GitHub repo
python3 ./create.py $2

#Create new project directory in my-projects
cd $1
mkdir $2

#Innitialize git and run set up commands
cd $1/$2
git init
touch README.md
echo "# $2" >> README.md
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/aryanshah701/$2.git
git push -u origin main

#Opening up visual studio code
code .