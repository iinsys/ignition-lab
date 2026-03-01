# Task 1: Your First GitHub Actions Workflow

## Objective
Learn how to create a basic GitHub Actions workflow that runs on every push to the repository.

## Exercises
1. In your repository, create a `.github/workflows` directory if it doesn't already exist.
2. Inside the `.github/workflows` directory, create a new file named `simple-workflow.yml`.
3. Add the following content to the file:
   ```yaml
   name: Simple Workflow
   on: [push]
   jobs:
     hello-world:
       runs-on: ubuntu-latest
       steps:
         - name: Echo Hello World
           run: echo "Hello, GitHub Actions!"
   ```
4. Commit and push the new file to your repository.
5. Go to the "Actions" tab in your GitHub repository. You should see your new workflow running.
6. Click on the workflow run to see the output of the "Echo Hello World" step.
