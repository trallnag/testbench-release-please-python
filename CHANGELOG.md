# Changelog

## [0.2.2](https://github.com/trallnag/testbench-tuna/compare/v0.2.1...v0.2.2) (2022-08-18)


### CI/CD

* Add workflow_dispatch to codeql.yaml ([a179c95](https://github.com/trallnag/testbench-tuna/commit/a179c95e70b44ec8d6ad32641e227c44631b3bbf))


### Docs

* Adjust help msg in uvicorn.sh ([46d796d](https://github.com/trallnag/testbench-tuna/commit/46d796d27cd09b51f442134036244b17f6eb061f))
* Replace md-toc with vscode extension and refactor docs ([8527462](https://github.com/trallnag/testbench-tuna/commit/852746258196c1148bfabe4cf7c54439517dcf1b))
* Restructure internal docs ([1af7dd4](https://github.com/trallnag/testbench-tuna/commit/1af7dd4e2a0f1c7a2410c3c7abbfe9c7c9808da4))
* Update and rename example settings for VS Code ([4e8782e](https://github.com/trallnag/testbench-tuna/commit/4e8782e04c3dd3dcf80ca2ed325d442dc422e487))

## [0.2.1](https://github.com/trallnag/testbench-tuna/compare/v0.2.0...v0.2.1) (2022-08-16)

### 🍀 Summary 🍀

Nothing relevant for users. Tiny patch release that updates the metadata available on the PyPI repository page. Also a few changes related to Codecov and GitHub Actions.


### CI/CD

* **codecov:** Rename extension YML to YAML ([d4a7ada](https://github.com/trallnag/testbench-tuna/commit/d4a7ada9703ddcdbdc263ce0db8b0bbf5c475bc8))
* **pre-commit:** Add poetry.lock to exclude ([64cf72c](https://github.com/trallnag/testbench-tuna/commit/64cf72c3adec7bd5d9a3b0e7458dde89913c094f))
* Reformat tests-and-checks.yaml ([78f9ae3](https://github.com/trallnag/testbench-tuna/commit/78f9ae3f6f770ea647d54694ee5d135d9a09f810))


### Docs

* **pyproject:** Add description and repository parameters ([f3d9b18](https://github.com/trallnag/testbench-tuna/commit/f3d9b184ef41da13ad0cef74ccf1908b9d85cb41))

## [0.2.0](https://github.com/trallnag/testbench-tuna/compare/v0.1.1...v0.2.0) (2022-08-16)

### ✨ Highlights ✨

* Added new endpoint `/users/{username}/email` that can be used to retrieve the email for a specific user by username ([#15](https://github.com/trallnag/testbench-tuna/issues/15)). Thanks to @crispymouse!


### Features

* Add user email info endpoint ([#15](https://github.com/trallnag/testbench-tuna/issues/15)) ([70ce9ac](https://github.com/trallnag/testbench-tuna/commit/70ce9ac93c93f0423d775d7fe814b4bb79a8ed75))


### Refactor

* Rename function root to get_root ([d3effe5](https://github.com/trallnag/testbench-tuna/commit/d3effe5e1dc20ae4d8f7ca6eb900c674bdc71b8a))


### Tests

* Add test for get_root ([b012a6c](https://github.com/trallnag/testbench-tuna/commit/b012a6c3f0b5e0d0efdae4422b2c1b2ac0229121))


### Docs

* Adjust badges in project README ([3cfb8f4](https://github.com/trallnag/testbench-tuna/commit/3cfb8f477de45ea11d0d42b126dcdccb1ce0fb45))
* Update poetry.md ([4421038](https://github.com/trallnag/testbench-tuna/commit/442103825cfacae1cce303e0cc723b6c1b25f372))

## [0.1.1](https://github.com/trallnag/testbench-tuna/compare/v0.1.0...v0.1.1) (2022-08-09)

### Bug Fixes

- Fix nothing
  ([02ca48d](https://github.com/trallnag/testbench-tuna/commit/02ca48da9698e4af349c00cf022b6afcf4a9e369))

### Docs

- **readme:** Update title and description
  ([#8](https://github.com/trallnag/testbench-tuna/issues/8))
  ([2bfb25f](https://github.com/trallnag/testbench-tuna/commit/2bfb25fde505c23065c2d3adb5431c9278b927b4))

### CI/CD

- Add workflow_dispatch flag to release-please workflow
  ([ac726ab](https://github.com/trallnag/testbench-tuna/commit/ac726ab38cfff720be4a589434244e087046caf3))
- Delete old primary workflow
  ([dfc0bc9](https://github.com/trallnag/testbench-tuna/commit/dfc0bc9813b4406f00078fc182a14f303cccca2f))
- Fix poetry publish steps
  ([14f4496](https://github.com/trallnag/testbench-tuna/commit/14f44962b020b80fdeffdd47de2102673c440c1f))
- **release-please:** Again replace incorrect option `version-path`
  ([7d07420](https://github.com/trallnag/testbench-tuna/commit/7d07420c519615ed1f538bbeba81b98bd33ac7e6))
- **release-please:** Remove parameter `package-name`
  ([e789f7f](https://github.com/trallnag/testbench-tuna/commit/e789f7fb27eb9a5e3fc551f96ad3859505d34729))
- **release-please:** Remove parameter `version-file`
  ([8980a2d](https://github.com/trallnag/testbench-tuna/commit/8980a2dbe0f71005b0cf4bcaccc05b0bd88a7821))
- **release-please:** Replace incorrect option `version-path`
  ([a81132e](https://github.com/trallnag/testbench-tuna/commit/a81132e5c149d16e19358778e224d8cc8980d511))
- **release-please:** Revert to v2 to debug issues
  ([93d5fbc](https://github.com/trallnag/testbench-tuna/commit/93d5fbc176afdd0b0dd86c336e8510d1e4c790a2))
- **release-please:** Revert to v3 to debug issues
  ([890233b](https://github.com/trallnag/testbench-tuna/commit/890233bb8cf0779a5e9f8b380b9f458b8127e6d1))
- Rename steps in primary workflow
  ([3c97319](https://github.com/trallnag/testbench-tuna/commit/3c97319e43e20c62cc00153c6fbfac588f097ea0))
- Work on ci & build in general
  ([b2b8c73](https://github.com/trallnag/testbench-tuna/commit/b2b8c73a224c80324122953e944fc0fa0224103e))

## 0.1.0 (2022-07-12)

### Features

- Initial commit
  ([e71dd0d](https://github.com/trallnag/testbench-release-please-python/commit/e71dd0dfcee7139512f87ce6172696876aa32b5a))
