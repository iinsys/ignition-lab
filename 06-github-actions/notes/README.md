# GitHub Actions Notes

## What is GitHub Actions?
GitHub Actions is a continuous integration and continuous delivery (CI/CD) platform that allows you to automate your build, test, and deployment pipeline. You can create workflows that build and test every pull request to your repository, or deploy merged pull requests to production.

## Key Concepts
- **Workflow:** A configurable automated process that will run one or more jobs. Workflows are defined by a YAML file checked in to your repository.
- **Event:** A specific activity in a repository that triggers a workflow run. For example, activity can originate from GitHub when someone creates a pull request, opens an issue, or pushes a commit to a repository.
- **Job:** A set of steps in a workflow that execute on the same runner.
- **Step:** An individual task that can run commands in a job. A step can be either an action or a shell command.
- **Action:** A custom application for the GitHub Actions platform that performs a complex but frequently repeated task.
- **Runner:** A server that runs your workflows when they're triggered. Each runner can run a single job at a time.
