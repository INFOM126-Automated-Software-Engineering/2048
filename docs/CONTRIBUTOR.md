**Branch Management Policy**

Branch Naming Convention:

    Feature Branches:
        Format: feature/issueID-short-description
        Example: feature/5-add-game-logic
    Bug Fix Branches:
        Format: fix/issueID-short-description
        Example: fix/10-fix-score-reset
    Hotfix Branches:
        Format: hotfix/short-description
        Example: hotfix/fix-broken-deploy
    Contributor Experimental Branches:
        Format: experiment/username-short-description
        Example: experiment/john-ui-improvements

Branch Merging Guidelines

    Pull Request Workflow:
        A branch can only be merged into main via a pull request.
        PRs must pass:
            Automated CI pipeline checks (build, test, and code quality).
            At least one code review by a project maintainer or assigned reviewer.
        PRs should have a clear description referencing the issue being addressed (e.g., Closes #5).

    Branch Protection Rules:
        Enable branch protection on main:
            Require status checks to pass before merging.
            Require at least one approval review.
            Enforce linear history (no merge commits).

    Delete Branch After Merge:
        Once a branch is merged into main, it should be deleted to keep the repository clean.

**Commit Message Conventions**

    Format:

    <type>(<scope>): <description>

        Type:
            feat: New feature.
            fix: Bug fix.
            docs: Documentation updates.
            refactor: Code changes that don’t add features or fix bugs.
            test: Adding or updating tests.
            build: Miscellaneous tasks like build updates or dependency changes.
        Scope: Optional, can denote the module or feature being worked on.
        Description: Brief description.

    Examples:
        feat(game): implement game grid mechanics
        fix(score): correct issue with score calculation
        docs: update CONTRIBUTOR.md with branch naming conventions

Code Conventions

    ////////Style Guide/ GITHUB ACTION DOING IT:
    ////////    Follow the Google Java Style Guide.
    ////////    Use a linter (Checkstyle).

    Best Practices:
        Look up https://sourcemaking.com
        Write clear, self-documenting code with meaningful variable/method names.
        Avoid large, monolithic commits; instead, commit incrementally with clear messages.
        Write unit tests for new features and fixes.
        Include Javadoc comments for public methods and classes.

**Release Policy**

Release Pattern

    Adopt semantic versioning (MAJOR.MINOR.PATCH):
        MAJOR: For breaking changes.
        MINOR: For backward-compatible feature additions.
        PATCH: For bug fixes or small improvements.

Release Frequency

    A new release is created after a significant feature is completed, tested, and merged.
    Schedule a weekly release if multiple small changes accumulate.


Permissions Setup

    Branch Permissions:
        Restrict force pushes to main.
        Allow merges into main only through pull requests.
        Assign write access only to maintainers.