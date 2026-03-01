# Task 9: Container Image Security

## Objective
Learn how to scan Docker images for vulnerabilities.

## Exercises
1. There are many tools for scanning container images for vulnerabilities. In this exercise, we will use `Trivy`. If you don't have it installed, you can find the installation instructions here: [https://github.com/aquasecurity/trivy#installation](https://github.com/aquasecurity/trivy#installation)
2. Pull an older, known vulnerable image.
   ```bash
   docker pull python:3.4-alpine
   ```
3. Scan the image for vulnerabilities using Trivy.
   ```bash
   trivy image python:3.4-alpine
   ```
4. Examine the output. You should see a list of vulnerabilities, their severity, and information about how to fix them.
5. Now, pull a more recent, patched version of the image.
   ```bash
   docker pull python:3.10-alpine
   ```
6. Scan the new image.
   ```bash
   trivy image python:3.10-alpine
   ```
7. Compare the results. The new image should have significantly fewer vulnerabilities.
