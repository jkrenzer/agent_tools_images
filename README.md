# agent_tools_images

Bootstrap repository for building and publishing an agent tooling Docker image.

## Image/runtime

- Base image: `python:3.14-slim`
- Poetry-managed environment installed in `/opt/venv`
- Environment activation is preconfigured via:
  - `VIRTUAL_ENV=/opt/venv`
  - `PATH=/opt/venv/bin:$PATH`
- Runtime initialization is handled by `entrypoint.sh`

## Devcontainer

VS Code devcontainer configuration is provided in `.devcontainer/devcontainer.json` and builds from `.devcontainer/Dockerfile`.

## CI publish

A GitHub Actions workflow at `.github/workflows/publish.yml` builds and publishes the Docker image to GHCR on pushes to `main`.
