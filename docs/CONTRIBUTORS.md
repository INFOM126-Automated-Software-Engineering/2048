# Contributor Guide

## Table of Contents
- [Getting Started](#getting-started)
- [Issue and Branch Management](#issue-and-branch-management)
- [Issue Templates & Reporting Guidelines](#issue-templates--reporting-guidelines)
- [Commit Messages Conventions](#commit-messages-conventions)
- [Code Conventions](#code-conventions)
- [Writing Tests](#writing-tests)
- [Release Policy](#release-policy)
- [Continuous Integration](#continuous-integration)
- [Contact](#contact)
---

## Getting Started

1. **Fork the repository**: Click on the "Fork" button at the top-right corner of this repository.
2. **Clone your fork locally**:
    ```bash
    git clone https://github.com/your-username/2048-game.git
    ```
3. **Install dependencies**: Ensure you have JDK 11 and Maven installed.
4. **Run the game locally**:
    ```bash
    mvn clean install
    java -jar target/game2048.jar
    ```
5. Have fun! Pick an issue, create a branch, and start [coding](#code-conventions)!

--- 

## Issue and Branch Management

We use GitHub Issues to track bugs, enhancements, and documentation tasks. Here's how we manage them:

### creating Issues
- Use clear titles like `[BUG] Title`, `[FEATURE] Title`, `[DOCS] Title`, etc.
- Add relevant labels (`bug`, `enhancement`, `documentation`, etc.)
- Assign the issue to yourself if you're working on it.

### Branch Naming Convention
- Use the format: `label/issue-XX`
    - Examples:
        - `bug/fix-issue-02`
        - `feature/issue-03`
        - `docs/issue-85`

### Workflow
1. Create an issue.
2. Create a branch from `main` using the naming convention.
3. Commit changes with clear messages referencing the issue (e.g., `Fixes issue-03`).
4. Open a Pull Request and link it to the issue.
5. Once reviewed and approved, merge into `main`.

### Good First Issues
Check the `good first issue` label if you're new and want to contribute!

---

## Issue Templates & Reporting Guidelines

To keep our issue tracking organized and efficient, we use also some
**GitHub Issue Templates**. These templates guide contributors when
reporting bugs, suggesting features or tasks.
> **Note:** The use of these templates is not mandatory, but preferred.
### Why Use Templates?
- Ensures all necessary details are provided.
- Makes issues easier to reproduce, prioritize, and resolve.
- Keeps the repository clean and consistent.


### Available Templates
- **Bug Report** – For reporting problems in the game.
- **Feature Request** – For suggesting new features or improvements.
- **Task request** - For suggesting small tasks to enhance the app or provide more documentation.

When you click **New Issue** in the repository, you’ll see these templates along with a classic blank issue form.

---

### How It Works ?
Templates are stored in:
  ```
  .github/ISSUE_TEMPLATE/
  ```
Go to Issues → New Issue.
  - Select the appropriate template (Bug Report or Feature/Task Request).
  - Fill in all sections as completely as possible.
  - Submit the issue.
---
## Commit Messages Conventions

- Use clear and descriptive commit messages.
- Follow the format: `type(scope): description`.
    - **Type**: `feat` (feature), `fix` (bug fix), `docs` (documentation), `style` (formatting), `refactor` (refactoring), `test` (adding tests), `chore` (maintenance).
    - **Scope**: The part of the codebase affected (optional).
    - **Description**: A brief summary of the changes.

### Examples

- `feat(game): add new game mode`
- `fix(ui): resolve button alignment issue`

---

## Code Conventions

- Follow the [Oracle Java Coding Standards](https://www.oracle.com/java/technologies/javase/codeconventions-introduction.html).
- Use the following naming conventions:
    - **Classes**: `PascalCase` (e.g., `GameController`)
    - **Variables and Methods**: `camelCase` (e.g., `playerScore`)
    - **Constants**: `UPPER_CASE` (e.g., `MAX_SCORE`)
- Write meaningful comments for complex logic.

---

## Writing Tests

- All new features must include unit tests.
- Use JUnit for testing.
- Ensure at least 80% code coverage (measured using JaCoCo).
- Example test file structure:
    ```
    src/test/java/be/unamur/game2048/TestGameController.java
    ```
- Run tests locally before submitting a pull request:
    ```bash
    mvn test
    ```

---

## Release Policy

- **Release Pattern**: Follow semantic versioning (e.g., `v1.0.0`).
- **Release Frequency**: New feature EQUALS new release, and this depends on the contribution of the community.

---

## CI/CD Pipeline – GitHub Actions

This project uses **GitHub Actions** to automate tasks such as building, testing, code quality analysis, deployment, and telemetry. All workflows are defined in the `.github/workflows/` directory.

### Workflow Files

| File | Type | Description                                                      |
|------|------|------------------------------------------------------------------|
| `build.yml` | CI | Builds the backend and runs tests                                |
| `checkstyle.yml` | CI | Runs static code analysis using Checkstyle                       |
| `deploy.yml` | CD | Automates deployment of the project to a Docker Container        |
| `qodana_code_quality.yml` | CI | Performs code quality analysis using Qodana                      |
| `telemetry.yml` | CI | Generates coverage reports and sends metrics to Codana dashboard |

---

### Pipeline Overview

Each workflow is triggered automatically on **push** or **pull request** to the `main` branch. The typical steps include:

1. **Checkout**
    - Retrieves the source code from the repository.

2. **Environment Setup**
    - Installs Java 17 using Temurin.
    - Installs Maven dependencies.

3. **Build & Test**
    - Compiles the project using Maven.
    - Runs unit tests.

4. **Code Analysis**
    - `checkstyle.yml` checks for style violations.
    - `qodana_code_quality.yml` analyzes code quality.

5. **Telemetry**
    - `telemetry.yml` generates Jacoco coverage reports and sends metrics to Codana.

6. **Deployment**
    - `deploy.yml` handles automated deployment (customizable based on your infrastructure).

---

### Best Practices

- Never merge a PR if the pipeline fails.
- Fix any issues reported by Checkstyle or Qodana.
- Review coverage and quality reports.
- Use GitHub Actions logs to debug failures.

---

### Viewing Artifacts

In Actions, after each workflow run, generated artifacts (e.g., coverage reports) are available for download. Here's a screenshot showing the artifacts section:

![Pipeline Artifacts](docs/assets/artifacts.png)

---

## Contact

For any questions or feedback, please open an issue in the repository or contact the project maintainers.

