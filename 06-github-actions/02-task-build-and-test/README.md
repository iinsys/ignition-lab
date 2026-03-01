# Task 2: Building and Testing a Node.js Application

## Objective
Learn how to create a GitHub Actions workflow to build and test an application.

## Exercises
1. In a new directory `02-task-build-and-test`, create a simple Node.js application with a test.
   - `app.js`:
     ```javascript
     function sum(a, b) {
       return a + b;
     }
     module.exports = sum;
     ```
   - `app.test.js`:
     ```javascript
     const sum = require('./app');

     test('adds 1 + 2 to equal 3', () => {
       expect(sum(1, 2)).toBe(3);
     });
     ```
   - `package.json`:
     ```json
     {
       "name": "my-app",
       "version": "1.0.0",
       "description": "",
       "main": "app.js",
       "scripts": {
         "test": "jest"
       },
       "keywords": [],
       "author": "",
       "license": "ISC",
       "devDependencies": {
         "jest": "^27.0.0"
       }
     }
     ```
2. Create a workflow file at `.github/workflows/build-and-test.yml` that:
   - Runs on every push to the `main` branch.
   - Uses a Node.js environment.
   - Installs the dependencies.
   - Runs the tests.
   ```yaml
   name: Build and Test
   on:
     push:
       branches: [ main ]
   jobs:
     build:
       runs-on: ubuntu-latest
       strategy:
         matrix:
           node-version: [14.x, 16.x]
       steps:
       - uses: actions/checkout@v2
       - name: Use Node.js ${{ matrix.node-version }}
         uses: actions/setup-node@v2
         with:
           node-version: ${{ matrix.node-version }}
       - run: npm ci
       - run: npm test
   ```
3. Commit and push your changes.
4. Check the "Actions" tab in your repository to see the workflow run.
