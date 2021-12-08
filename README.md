# Dendron CLI Docker image

Docker image with the CLI tools of [Dendron](https://dendron.so) pre-installed.

## Goals

When building an HTML version via the CLI tool, you need it installed + Next. In a CI pipeline, this takes _a lot_ of time to install on modern CPUs. This pre-installed with what's needed.

## Usage

- `@dendronhq/dendron-cli` is already installed
- The Next dependency has been installed in `/.next` and can be copied in your Dendron workspace as is
- Run `dendron publish export` and find the build in `.next/out`
