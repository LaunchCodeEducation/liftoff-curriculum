---
title: "Team GitHub Workflow"
weight: 100
---

# Team Project Git Workflow
 
This guide is for mentors and students in Liftoff. Using this Git workflow will allow for easier and more productive collaboration.
 
## What is a Git Workflow?
 
A **Git workflow** is a strategy for using Git. Git is a powerful tool that can be used in many ways. Having a common strategy for using Git makes it easier and more efficient for teams to collaborate. There are many Git workflows that can be adopted by a team. For this course, we suggest the **[feature branch workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)**.  Other [Git workflow](https://www.atlassian.com/git/tutorials/comparing-workflows) options exist, but the feature branch workflow is recommended for this project.
 
### Feature Branch Workflow
 
The feature branch workflow separates new work from the current codebase, or `main` branch.  Using this workflow, protects the main branch and provides accountability in new code added.  Once your feature branch has been reviewed and approved, it can be merged into the `main` branch.  

{{% notice style="tip" title="Workflow Tip" %}}

In this workflow, the `main` branch is updated often.  It is good practice to `pull` or `fetch` the `main` branch periodically.  

If changes have been made since you last pulled down the `main` branch, you can merge them into your feature branch.  This will allow you to see how your feature fits in with the most current version of `main`. 

{{% /notice %}}
 
### `main` Branch
 
Before discussing how to create feature branches, let’s discuss the main branch. The `main` branch will be the branch that your feature branches will be created from.
 
**`main` branch facts**
* The `main` branch is the central branch for your repository and project.
* The `main` branch should contain code that is working and ready to be released.
* Don’t merge broken code into `main`!
* Code should be tested and reviewed before being merged into `main`.
* Avoid committing directly to the `main` branch.
 
### What is a Feature?
 
A **feature** is a requirement or related set of requirements that add value to a project. Before you can start coding, your team will need to create a list of features. Sometimes these features are called **stories** or even **cards** if you are using a productivity tool such as Trello. 

Each feature should be as small as possible, while still adding value to the project.
 
**Example Features**
* Adding a login page
* Fix change password bug
* Make the user list sortable

### Feature Branch
 
When you go to work on a feature, you will need to create a branch specifically for that feature. Most of the time you will branch off of the `main` branch.


{{% notice style="note" title="Feature Branch Example" %}}

If we want to create a feature branch for the “Fix change password bug” feature.

1. Make sure you are on the correct base branch before creating the new feature branch.
   - `git checkout main`
1. Pull to make sure that the base branch is up to date.
   - `git pull`

1. Create a new branch with a meaningful name.
   - `git checkout -b <branch-name>` creates and switches to the newly named branch

   - Let's make a feature branch for fixing the password bug:  `git checkout -b fix-change-password-bug`

1. Check your status to make sure you are on the right branch.
   - `git status` should return the following output:

      `On branch fix-change-password-bug`
      `nothing to commit, working tree clean`

1. Start working on your feature branch.

{{% /notice %}}


### Making Commits
 
You will write code and make commits to implement the feature. Make a commit when you have made progress towards the feature. Don’t commit every time you add a line of code. Don’t wait too long to commit or you will forget what you have done.

Make sure you write [helpful commit messages](https://www.freecodecamp.org/news/how-to-write-better-git-commit-messages/).  Writing "fixed bug" may work right now, but as you review your code later you may not remember which bug or what you actually changed.  Anyone reviewing your code may not find that message helpful either, as they may not have realized there was a bug or what exactly the bug did.  
 
### Push Your Work to Origin
 
After making commits to your feature branch, you will need to push them to the origin. This will make sure they are backed up in case something bad happens to your computer and it will make the branch visible on origin.
 
## Pull Requests
 
A **pull request (PR)** represents the process of merging (or pulling) a feature branch into `main`. A pull request is created and managed on your repository page on GitHub. Pull requests provide a user interface for reviewing files that were changed, approving the changes, and finally merging those changes into the master branch.
 
{{% notice note %}}
   Pull requests can be created to merge a branch into any other branch. For the majority of this project, your pull requests will merge a feature branch into the master branch.
{{% /notice %}}


 
How to Create a Pull Request
 
You can create a PR anytime after you have pushed your feature branch to origin. You can wait until you are done coding and you have verified that the feature works.

