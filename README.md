# TraceTronic Helm Charts

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![GitHub Release](https://img.shields.io/github/release/tracetronic/helm-charts.svg?label=version)](https://github.com/tracetronic/helm-charts/releases)
[![CI](https://github.com/tracetronic/helm-charts/actions/workflows/ci.yml/badge.svg)](https://github.com/tracetronic/helm-charts/blob/main/.github/workflows/ci.yml)

This repository hosts the official **[TraceTronic](https://www.tracetronic.de/) Helm Charts** for deploying **TraceTronic** products to [Kubernetes](https://kubernetes.io/).

<img src="https://github.com/tracetronic/helm-charts/blob/main/.github/img/automotive_devops_platform_logo.png?raw=true" align="left" alt="Automotive DevOps Platform">

**TraceTronic Helm Charts** project is part of the [Automotive DevOps Platform](https://www.tracetronic.com/products/automotive-devops-platform/) by TraceTronic. With the **Automotive DevOps Platform**, we go from the big picture to the details and unite all phases of vehicle software testing – from planning the test scopes to summarizing the test results. At the same time, continuous monitoring across all test phases always provides an overview of all activities – even with several thousand test executions per day and in different test environments.

## Usage

[Helm](https://helm.sh) must be installed and initialized to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, you could access provided charts as follows:

```bash
$ helm repo add tracetronic https://tracetronic.github.io/helm-charts
$ helm search repo tracetronic
$ helm install [RELEASE_NAME] tracetronic/[CHART_NAME]
```

The provided charts are specific for each TraceTronic product and its values often need an individual configuration. Further information could be found within the respective chart area:
- [TEST-GUIDE](https://github.com/tracetronic/helm-charts/blob/main/charts/test-guide/README.md)

## Contribution

We encourage you to contribute to **TraceTronic Helm Charts** using the [issue tracker](https://github.com/tracetronic/helm-charts/issues/new/choose) to suggest feature requests and report bugs.

Currently, we do not accept any external pull requests.

## Support

If you have any questions, please contact us at [support@tracetronic.com](mailto:support@tracetronic.com).

## License

This project is licensed under the terms of the [Apache License, Version 2.0](https://github.com/tracetronic/helm-charts/blob/main/LICENSE).
