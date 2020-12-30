# Project Initialization Automation 

A bash script that automates a coding project's initialization by creating a new remote repo and a local directory for the project, initializing git, and pushing the project onto the remote repo.

## Getting Started

Once the repository is cloned on your local machine, navigate to its directory using the command line, and open the create.py file. Update the `TOKEN` constant
to hold your personal access github token, and save the python file.

On the command line, run the bash script with your desired project name and the destination directory path as shown below.

```
./init-project new-project /Users/me/Desktop
```

Note: Your personal access token needs to have repo scope. For more information, check out the github docs below.  

[How to create a new personal access token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token)

### Prerequisites

The python script uses PyGithub. If not already installed, install it using the following command:

```
pip install PyGithub
```

The bash script opens up the project in Visual Studio Code using the `code .` command. If the `code .` command isn't configured on your machine, check out the [Visual Studio Code docs](https://code.visualstudio.com/docs/editor/command-line).


## Built With

  - [PyGithub](https://github.com/PyGithub/PyGithub)
  - [Python3](https://docs.python.org/3/)
