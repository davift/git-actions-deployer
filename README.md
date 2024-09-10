# github-actions

This repository contains examples for building and deploying to Dev and Prod environments using GitHub Actions to a K8s cluster.

## This repository has examples of GitHub Workflows for:

- `.github/workflows/`
  - `dev.yaml`
    - Automatically build and deploy into Dev when a PR is open.
  - `dev.yaml`
    - Automatically build and deploy into Dev when a PR is approved.

## It also contains examples of Kubernetes resources:

- `dft/`
  - `docker/Dockerfile`
    - Container image build configuration.
  - `nginx-combined.yaml`
    - Combined manifests: Namespace + Deployment + Service + Ingress

## For more information, check out:

- https://dft.wiki/?p=1372
  - Kubernetes Cheat Sheet
- https://dft.wiki/?p=3122
  - Kubernetes Manifests Demo
- https://dft.wiki/?p=1435
  - Kubernetes Persistent Volumes
