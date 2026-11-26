# MEGIN + FieldTrip real-time MEG guide

A beginner-oriented, evolving guide to building real-time MEG workflows with a MEGIN acquisition system and the FieldTrip buffer. The initial emphasis is MATLAB + FieldTrip; Python-based workflows may be added later.

**Release:** `v0.1.0` — initial documentation release  
**Status:** Educational documentation and illustrative code. This repository is not a validated, experiment-ready real-time MEG system.

## View the guide

- **Start here:** [index.html](index.html)
- [01 · How the system works](01-principle.html)
- [02 · Start streaming](02-setup.html)
- [03 · Timing and validation](03-latency.html)
- [04 · MATLAB examples](04-examples.html)
- [05 · Closed-loop roadmap](05-closed-loop.html)
- [06 · Troubleshooting and references](06-misc.html)

The site is a static set of HTML pages. Open `index.html` locally, or publish the repository with GitHub Pages.

## Repository layout

```text
.
├── index.html
├── 01-principle.html
├── 02-setup.html
├── 03-latency.html
├── 04-examples.html
├── 05-closed-loop.html
├── 06-misc.html
├── assets/                 # shared CSS and JavaScript
├── matlab/                 # MATLAB learning templates
└── references/             # notes about external documentation
```

## Publish with GitHub Pages

1. Create a GitHub repository and push the contents of this directory to its default branch.
2. In the repository, open **Settings → Pages**.
3. Under the build and deployment section, choose **Deploy from a branch**.
4. Select the default branch and the repository root (`/`) as the publishing source.
5. Save and wait for GitHub Pages to publish the site.

Because `index.html` is in the repository root and the site uses relative asset paths, it can be served as a project site without a build step.

## Software and hardware context

The examples assume a MATLAB installation with a compatible FieldTrip version and access to a FieldTrip buffer. The MEGIN-to-buffer bridge is installation- and acquisition-version-dependent. Confirm the supported streaming method with your local MEGIN/DACQ installation and operator before attempting a live connection.

The guide mentions `neuromag2ft` as a historical/installation-specific route. Do not assume that command is supported by every MEGIN system, DACQ version, or TRIUX neo configuration. Follow the current instructions supplied for your installation.

## Important limitations

- The MATLAB files in `matlab/` are **learning templates**, not validated production software.
- No claim is made that the examples have been tested against a particular MEGIN model, DACQ release, FieldTrip release, operating system, or trigger interface.
- The code does not implement a complete real-time safety layer, guaranteed sample-loss detection, clock synchronization, or validated stimulus timing.
- Online RMS is not the same as band-limited power. A phase estimator needs separate causal design, uncertainty handling, and validation.
- Validate data continuity, channel mapping, timing, output behavior, and end-to-end latency using recorded test signals before any participant session.
- Follow local MEGIN operator training and laboratory procedures. This guide is not a substitute for them.

## References

The individual pages link to relevant FieldTrip documentation and other resources. See [references/README.md](references/README.md) for guidance on checking external references and recording version information.

## Contributions

Corrections, tested examples, and reports of version-specific behavior are welcome. When contributing code, please state the hardware model, DACQ version, operating system, MATLAB version, FieldTrip version, and whether the example was tested with simulated or live data.

## License

No license is included in this initial release. Add a license only after deciding the reuse terms for this project. Until then, do not assume that others have permission to redistribute or modify the contents.
