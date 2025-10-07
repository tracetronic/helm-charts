# tracetronic Helm Charts

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![GitHub Release](https://img.shields.io/github/release/tracetronic/helm-charts.svg?label=version)](https://github.com/tracetronic/helm-charts/releases)
[![CI](https://github.com/tracetronic/helm-charts/actions/workflows/jenkins-ci.yml/badge.svg)](https://github.com/tracetronic/helm-charts/blob/main/.github/workflows/jenkins-ci.yml)

This repository hosts the official **[tracetronic](https://www.tracetronic.com/) Helm Charts** for deploying **tracetronic** products to [Kubernetes](https://kubernetes.io/).

## Usage

[Helm](https://helm.sh) must be installed and initialized to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, you could access provided charts as follows:

```bash
$ helm repo add tracetronic https://tracetronic.github.io/helm-charts
$ helm search repo tracetronic
$ helm install [RELEASE_NAME] tracetronic/[CHART_NAME]
```

The provided charts are specific for each tracetronic product and its values often need an individual configuration. Further information could be found within the respective chart area:
- [test.guide](https://github.com/tracetronic/helm-charts/blob/main/charts/test-guide/README.md)

## Contribution

We encourage you to contribute to **tracetronic Helm Charts** using the [issue tracker](https://github.com/tracetronic/helm-charts/issues/new/choose) to suggest feature requests and report bugs.

Currently, we do not accept any external pull requests.

## Support

If you have any questions, please contact us at [support@tracetronic.com](mailto:support@tracetronic.com).

## License

This project is licensed under the terms of the [Apache License, Version 2.0](https://github.com/tracetronic/helm-charts/blob/main/LICENSE).
