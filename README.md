# AIDO 6 Lane Following Challenges

This repository contains the ente-era AIDO lane-following challenge definitions.
The active definitions use the `aido6_embodied_sys` protocol and the
Duckiematrix evaluator image `${DOCKER_REGISTRY}/duckietown/dt-duckiematrix:ente-amd64`.
When `DOCKER_REGISTRY` is not set, current Challenges tooling resolves it to `docker.io`.

All checked-in challenge definitions now live under `challenges/`.
That directory is limited to the LF challenge family and its LF compatibility
variants; non-LF definitions and older sampled scenario archives have been removed.

The old flat helper fragments used by earlier experiment-manager flows were removed
because the ente challenge YAMLs are now self-contained and use a single
`SUBMISSION_CONTAINER` solution service with the containerized Duckiematrix evaluator.

The remaining LF compatibility definitions in `challenges/` intentionally continue
to reuse the same Duckiematrix loop evaluator. This repository does not keep
separate per-variant ente evaluator launchers until a future runtime path
actually needs different engine behavior.

## Defining Challenges

Define the current public validation challenge:

```bash
make define-challenge
```

Define every checked-in LF challenge definition:

```bash
make define-challenges
```

Define one challenge by file stem:

```bash
make define-challenge-LF-norm-vali
```

List the checked-in challenge stems:

```bash
make list-challenges
```
