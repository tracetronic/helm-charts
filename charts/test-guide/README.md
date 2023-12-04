# test.guide

This chart bootstraps a **[test.guide](https://www.tracetronic.com/products/test-guide/)** deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

<img src=".../../../../.github/img/test_guide_logo.png" align="left" alt="Automotive DevOps Platform" style="width: 300px">

**test.guide** is a database application for the overview, analysis and follow-up processing of test procedures, which has been specially developed for use in the automotive sector. It significantly facilitates the management of test resources. At the same time, it encourages cross-role cooperation, thereby closing the gap between test execution and test management.

## Usage

See the official [helm commands](https://helm.sh/docs/helm/helm/) to use the provided chart. Some first steps commands are given below:

```bash
# Add helm repository
$ helm repo add tracetronic https://tracetronic.github.io/helm-charts
$ helm repo update

# Install chart
$ helm install [RELEASE_NAME] tracetronic/test-guide [flags]

# Uninstall chart
$ helm uninstall [RELEASE_NAME]
```

## Configuration

See [Customizing the Chart Before Installing](https://helm.sh/docs/intro/using_helm/#customizing-the-chart-before-installing).
To see all configurable options with detailed comments, visit the chart's [values.yaml](./values.yaml), or run this command:

```bash
# Show chart values
$ helm show values tracetronic/test-guide
```

## Migration

### To 0.4.0

This version supports a configurable test.guide application directory which must match the used image.

#### values.yaml

| Change | Name | Description | Default Value | Value to reuse existing clusters |
| ------ | ---- | ----------- | ------------- | -------------------------------- |
| Add value | `baseSettings.tgWorkspace` | support for test.guide workspace path configuration | `/home/tg_user/` | `/app/`|
| Change default value | `db.url` | adjust path to match the official test.guide image | `/home/tg_user/TTS-TM/TT-DB` | `/app/TTS-TM/TT-DB`|
| Change default value | `dbMonitoring.url` | adjust path to match the official test.guide image | `/home/tg_user/TTS-TM/TT-Monitoring` | `/app/TTS-TM/TT-Monitoring`|
| Change default value | `dbArtifact.url` | adjust path to match the official test.guide image | `/home/tg_user/TTS-TM/TT-Artifact` | `/app/TTS-TM/TT-Artifact`|
