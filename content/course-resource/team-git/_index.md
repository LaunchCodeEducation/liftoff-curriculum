---
title: "Team GitHub Workflow"
date: 2022-11-29T15:25:02-06:00
draft: true
---

## Team Project Git Workflow
 
This guide is for mentors and students in Liftoff. Using this Git workflow will allow for easier and more productive collaboration.
 
### What is a Git Workflow?
 
A **Git workflow** is a strategy for using Git. Git is a powerful tool that can be used in many ways. Having a common strategy for using Git makes it easier and more efficient for teams to collaborate. There are many Git workflows that can be adopted by a team. For this course, we suggest the **[feature branch workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)**. Read about other [Git workflows](https://www.atlassian.com/git/tutorials/comparing-workflows).
 
#### Feature Branch Workflow
 
The [feature branch workflow](https://learn.microsoft.com/en-us/azure/devops/repos/git/git-branching-guidance?view=azure-devops#keep-your-branch-strategy-simple) is focused on keeping work on different features in separate feature branches. Those feature branches are then merged into a main branch.
 
##### Main Branch
 
Before discussing how to create feature branches, let’s discuss the main branch. The master branch will be the branch that your feature branches will be created from.
 
**Main branch facts**
* The maim branch is the main branch for your repository and project.
* The main branch should contain code that is working and ready to be released.
* Don’t merge broken code into main!
* Code should be tested and reviewed before being main into master.
* Avoid committing directly to the main branch.
 

{{% notice style="note"  %}}
Avoid committing directly to main. Instead, create a feature branch and merge the branch into main using a pull request. Pull requests will be discussed soon. 
{{% /notice %}}

 
##### What is a Feature?
 
A feature is a requirement or related set of requirements that add value to a project. Before you can start coding, your team will need to create a list of features. Sometimes these features are called stories or even cards if you are using a tool such as Trello. Each feature should be as small as possible, while still adding value to the project.
 
**Example Features**
* Adding a login page
* Fix change password bug
* Make the user list sortable

##### Feature Branch
 
When you go to work on a feature, you will need to create a branch specifically for that feature. Most of the time you will branch off of the main branch.


{{% notice style="note" title="For Example" %}}
If we want to create a feature branch for the “Fix change password bug” feature.

1. Make sure you are on the correct base branch before creating the new feature branch.
   - `git checkout main`
1. Pull to make sure that the base branch is up to date.
   - `git pull`

1. Create a new branch with a meaningful name.
   - `git checkout -b <branch-name>` creates and switches to the newly named branch

   - `git checkout -b fix-change-password-bug` 
1. Check your status to make sure you are on the right branch.
   - `git status` should return the following output:

   `On branch fix-change-password-bug`
   `nothing to commit, working tree clean`
{{% /notice %}}



