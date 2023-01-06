---
title: "Team Git Workflow Guide"
date: 2023-01-06T15:58:16-06:00
draft: false
weight: 1
originalAuthor: <no value> # to be set by page creator
originalAuthorGitHub: <no value> # to be set by page creator
reviewer: # to be set by the page reviewer
reviewerGitHub: # to be set by the page reviewer
lastEditor: # update any time edits are made after review
lastEditorGitHub: # update any time edits are made after review
lastMod: # UPDATE ANY TIME CHANGES ARE MADE
---

This guide is for mentors and students in Liftoff. Using this Git workflow will allow for easier and more productive collaboration. 
 
## What is a Git Workflow?
 
A Git workflow is a strategy for using Git. Git is a powerful tool that can be used in many ways. Having a common strategy for using Git makes it easier and more efficient for teams to collaborate. There are many Git workflows that can be adopted by a team. For this course, we suggest the feature branch workflow. Read about other Git workflows.
 
## Feature Branch Workflow
 
The feature branch workflow is focused on keeping work on different features in separate feature branches. Those feature branches are then merged into a main branch.
 
### `main` Branch
 
Before discussing how to create feature branches, let’s discuss the main branch. Your feature branches will be created from the main branch.
 
**`main` Branch Facts**
   * The `main` branch is the `main` branch for your repository and project.
   * The `main` branch should contain code that is working and ready to be released.
      * Don’t merge broken code into `main`!
   * Code should be tested and reviewed before being merged into `main`.
   * Avoid committing directly to the `main` branch.

{{% notice "blue" "Note" "rocket" %}}
Avoid committing directly to `main`. Instead, create a feature branch and merge the branch into `main` using a pull request. Pull requests will be discussed soon.
{{% /notice %}}

### What is a Feature?
 
A **feature** is a requirement or related set of requirements that add value to a project.  Developers create user stories to determine the goal of the feature, but not the steps to create the feature.  

**Example Features**
* **Feature**: Add a login page to the website
* **User Story**: As a user, I would like to create a personal account on this website.


* **Feature**: Make the user list sortable
* **User Story**: As a user, I would like to sort through my list of items on the website.

{{% notice "blue" "Note" "rocket" %}}
You don’t necessarily need to make a user story for bugs unless you are exploring how the bug is preventing a feature from happening.  This is more for documentation. 

You should track work on bugs.  Create a Trello card for the bug.  Capture details to share with your team.

Example bug:
* Login information email address only accepts [alphanumerical characters](https://en.wikipedia.org/wiki/Alphanumericals).  
{{% /notice %}}

## Feature Branch

When you go to work on a feature, you will need to create a branch specifically for that feature. Most of the time you will branch off of the main branch.
 
### Example

We want to create a feature branch for the “add login page” feature.

1. Make sure you are on the correct base branch before creating the new feature branch.
1. Pull to make sure that the base branch is up to date.

   ```console
   git checkout main
   git pull
   ```
1. Create a new branch with a meaningful name.
   * `git checkout -b <branch-name>` creates and then switches to the new branch

   ```console
   git checkout -b add-login-page
   ```
1. Check your status to make sure you are on the right branch.

   ```console
   git status
   On branch add-login-page
   nothing to commit, working tree clean
   ```

## Making Commits

You will write code and make commits to implement the feature. Make a commit when you have made progress towards the feature. Don’t commit every time you add a line of code. Don’t wait too long to commit or you will forget what you have done.

{{% notice "blue" "Note" "rocket" %}}
**Helpful Commit Message:** “Created user login form - not attached to server”

**Unhelpful Commit Message:** “Login done”
{{% /notice %}}

### Push Your Work to Origin
 
After making commits to your feature branch, you will need to push them to the origin. This will make sure they are backed up in case something bad happens to your computer and it will make the branch visible on origin.
 
## Pull Requests
 
A **pull request (PR)** represents the process of merging (or pulling) a feature branch into `main`. A pull request is created and managed on your repository page on GitHub. Pull requests provide a user interface for reviewing files that were changed, approving the changes, and finally merging those changes into the main branch.

{{% notice "blue" "Note" "rocket" %}}
Pull requests can be created to merge a branch into any other branch. For the majority of this project, your pull requests will merge a feature branch into the `main` branch.
{{% /notice %}}

### How to Create a Pull Request
 
You can create a PR anytime after you have pushed your feature branch to origin. You can wait until you are done coding and you have verified that the feature works.
 
### Example
This example creates a pull request for the `add-login-page` feature branch.
1. Your feature branch must exist on `origin`.
1. Go to the list of branches for your repository.
1. Click on the New pull request button for the feature branch.

   ![create pr from branch](pictures/create-pr-from-branch.png?classes=border&height=50%)

1. Change the pull request name to a meaningful name, usually the feature name works best.
   * You can also add notes in the description.
   * The notes section is a good place to tell people what to look out for when testing.
   * You can also give reviewers hints about new libraries or code you added.
   * Finally add a link back to the Trello card, or other documentation, to help the reviewer know what the feature is supposed to do.
1. Notice that main is shown as the base branch and that the `add-login-page` branch will be merged into it.  
   * The PR compares the base branch to the new branch before merging.  GitHub will perform a quick code check.  If no conflicts are present then you will be able to merge, like the image below.  If there are conflicts, you will receive a warning before merging.  We suggest you handle the conflicts before merging into the `main` branch.  Follow our guide to managing merge conflicts.
   <!-- TODO: still need to create/find this guide -->

   ![Create pull request form with brnaches highlighted](pictures/create-pr-form.png?classes=border&height=40%)

1. Click the Create pull request button.
   * Your URL will be changed to a unique address for the new PR. [https://github.com/LaunchCodeEducation/example-pull-request/pull/1](https://github.com/LaunchCodeEducation/example-pull-request/pull/1)
   * You can share this with teammates.
   * You can also see open PRs by going to the list of pull requests for your repository on GitHub.

After these steps, you will have an open pull request. An open pull request can be merged or closed. Closing will cancel the pull request. Merging will merge the feature branch into main. 

Before merging, the code needs to be reviewed.

## Requesting a Review
 
After creating a pull request, you need to assign a **reviewer**.  A reviewer is someone who will look at your code before merging it in.  Ideally, they will pull down your branch and see the functionality you created.  A reviewer should leave comments about your code in GitHub if something needs to be changed.

Pull requests provide an organized way to see what files were edited, added, and removed. You can even compare the changes to what was previously there. This allows a reviewer to see what was changed and if it meets team and language programming standards.
 
### Example
Assign code reviewer for Add login page pull request.
   1. Go to the pull request on GitHub
   1. Click the gear in the Assignees section
      * There is also a Reviewer section. The main difference is that the Assignee has been officially assigned to review this PR.
   1. Find and click on a team member that you want to assign to review the PR.
      * You can assign multiple people, but you only need one.
      * The assignee will be notified by GitHub, but it’s also a good idea to remind them directly that they need to review the PR.

![Pull Request with assignee selected](pictures/assign-pr.png?classes=border&height=50%)

## Reviewing a Pull Request
A pull request should not be merged unless it has been reviewed and approved by a teammate.
 
Benefits of code reviews:
* Knowledge sharing between teammates
   * Technical knowledge and business knowledge is shared by having someone other than the original developer look at the code.
* Best practices enforced
   * Team coding best practices are shared and reinforced.
* Code Confidence
   * The team has more confidence in the code because more than one person has looked at it.

## How to Review Code
 
When reviewing code, don’t be picky just to be picky. Only provide feedback if you have a question, or you feel strongly that there is an issue with the code. Code reviews can be a place to have a conversation about a requirement or the code itself. The comments will stay on the PR and could serve as documentation in the future.
 
Focus on these topics when reviewing code:
* Language conventions
   * Variable, function, and class names meet the language standards.
* Security concerns
   * Don’t commit passwords to GitHub!
   * Don’t use risky third-party code that hasn’t been verified.
   * Look out for SQL injection attacks.
* Non-ideal code
   * Repeated code that could be turned into a function.
   * Unnecessary complexity, maybe a class was created that isn’t needed.
* Does the code work?
   * Test out the feature to see if it works.
   * Are there unit tests? If so are they passing?


### Example
In this example, we will review and eventually approve the “Add login page” PR.
1. Go to the pull request on GitHub
1. Go to the “Files changed” tab
   * This tab lists all files that were edited, added, or removed.
   * Each file is listed and the changes have been color coded.
   * Red lines have been removed.
   * Green lines have been added or edited.
1. To add a comment, hover over a line of code and click the blue plus icon.
   * This will open a comment editor
   * Type in the note about the line of code
1. Then click the green button to add the comment
   * This button will say “Start a review” or “Add a review comment”

   ![Comment added to pull request](pictures/add-comment.png?classes=border&height=50%)

1. Next the programmer that created the PR needs to address the issue.
1. The programmer updates the code and pushes a new commit to the feature branch.
1. As soon as the push happens, the new commit appears on the pull request page.
1. The “Conversation Tab” is where you can reply to previous comments.
Notice the reply comment that says the issue has been fixed.

   ![Conversation tab shows the comment and the reply](pictures/reply-after-fixing-code.png?classes=border&height=50%)

1. Finally, the pull request can be approved.
   * Since that is the only issue the reviewer found, the pull request can be approved.
   * This will mark the pull request as approved.
   * You can also mark a pull request as “Request Changes”
      * This is done when the reviewer wants to indicate that some issues need to be addressed before they are willing to give their approval.
1. Approving is done by clicking on “Review Changes” on the “Files Changed” tab.
   * You can provide a message when approving or requesting changes.
   * You can also simply add comments without changing the status of the pull request.

   ![Review changes form](pictures/approve-changes.png?classes=border&height=50%)

## Merging Into `main`
After a pull request has been approved by a reviewer, it can be merged. Normally the developer or person that opened the PR should click the big green merge button. However, anyone on the project can click merge if needed.
 
### Example
Let’s merge `add-login-page` into main by clicking the merge button.

1. Click the green merge button shown on the conversation tab.

   ![Merge button](pictures/merge-button.png?classes=border&height=50%)

1. Click the green confirm button.

   ![Confirm button](pictures/confirm-merge-button.png?classes=border&height=50%)

1. Click the grey delete branch button
   * The branch is no longer needed because all of it’s commits are now merged into `main`.

   ![Delete branch button](pictures/delete-branch.png?classes=border&height=50%)

1. Tell your teammates that main has been updated and that they should update their local main branches.

1. Celebrate! You merged code into main!

{{% notice "orange" "Warning" warning %}}
Sometimes the merge button is NOT clickable because there are conflicts that can not be resolved automatically. This happens when you need to update the feature branch with commits that are in `main`. These are usually very basic conflicts to fix, so don’t be scared.
   1. Checkout the `main` branch.
      ```console
      git checkout main
      ```
   1. Git pull to update `main`.
      ```console
      git pull
      ```
   1. Checkout the feature branch.
      ```console
      git checkout add-login-page
      ```
      
   1. Merge `main` into the feature branch:
      ```console
      git merge main
      ```
   1. Resolve conflicts.
   1. Stage and Commit
      ```console
      git status
      git add .
      git commit -m “<commit message here>
      ```
   1. Push up to origin
      ```console
      git push
      ```
{{% /notice %}}

## Additional Resources
[Atlassian article comparing Git workflows](https://www.atlassian.com/git/tutorials/comparing-workflows)
[GitHub pull request reference](https://help.github.com/en/articles/about-pull-requests)
