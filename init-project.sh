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
python ./create.py $1

#Create new project directory in my-projects
cd /Users/aryanshah/Desktop/MyProjects
mkdir $1

#Innitialize git and run set up commands
cd /Users/aryanshah/Desktop/MyProjects/$1
git init
touch README.md
echo "# $1" >> README.md
git add .
git commit -m "Initial commit"
git branch -M main