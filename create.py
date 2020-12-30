import sys
from github import Github

#Create GitHub instance, get authenticated user, and create repo
TOKEN = ""
g = Github(TOKEN)
user = g.get_user()
user.create_repo("new repo")

#Success message
print("Repositary Created!")
