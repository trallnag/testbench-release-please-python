# Frequently Asked Questions

<!--TOC-->

- [How to release a new version?](#how-to-release-a-new-version)
- [How to setup local dev environment?](#how-to-setup-local-dev-environment)
- [How to start a development server?](#how-to-start-a-development-server)

<!--TOC-->

## How to release a new version?

For release management Release Please is used. Read
[`please-release.md`](./please-release.md) for further information. The general
approach is described in the following.

Ensure that changes to be released are merged or pushed to the default branch.
Ensure that the relevant commits follow the conventional commits convention.

Wait for the GitHub Actions workflow `release-please.yaml` to finish.

Check the appropriate pull request managed by Release Please. The version is
determined by semantic versioning and conventional commits.

Add custom description to release notes and changelog

1. Checkout the Release Please pull request branch
2. Update the changelog file content.
3. Update the pull request description.

Merge the Release Please pull request.

## How to setup local dev environment?

Ensure that [Python Poetry](https://python-poetry.org/) is installed. After
cloning this project (probably as a fork), install the environment and enter a
Poetry shell.

```sh
poetry install
poetry shell
```

Read [`poetry.md`](poetry.md) for more information.

Setup the pre-commit hooks.

```sh
pre-commit install --install-hooks
pre-commit install --install-hooks --hook-type commit-msg
```

Read [`pre-commit.md`](pre-commit.md) for more information.

Run the tests to make sure everything is setup correctly. You can either use the
helper script to trigger tests or execute `pytest` directly.

```sh
./scripts/test.sh
```

Follow the usual Git workflow. Work on a dedicated branch instead of the trunk.
Something along the lines of trunk-based development is a good idea.

## How to start a development server?

Uvicorn is the recommended development server. It is installed as part of the
dependencies. You can either use the helper script to start a server or execute
`uvicorn` directly.

```sh
./scripts/uvicorn.sh
```
