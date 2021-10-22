{{/*
Expand the name of the chart.
*/}}
{{- define "test-guide.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "test-guide.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "test-guide.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "test-guide.labels" -}}
helm.sh/chart: {{ include "test-guide.chart" . }}
{{ include "test-guide.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "test-guide.selectorLabels" -}}
app.kubernetes.io/name: {{ include "test-guide.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "test-guide.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "test-guide.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Get the used protocol
*/}}
{{- define "test-guide.protocol" -}}
{{- if and (.Values.ingress.enabled) (.Values.ingress.tls) }}
{{- "https" }}
{{- else }}
{{- "http" }}
{{- end }}
{{- end }}

{{/*
Create the base url
*/}}
{{- define "test-guide.baseUrl" -}}
{{- if .Values.ingress.enabled }}
{{- if and (first .Values.ingress.hosts).host (.Values.ingress.tls) }}
{{- printf "%s://%s%s" (include "test-guide.protocol" .) (first .Values.ingress.hosts).host (first (first .Values.ingress.hosts).paths).path }}
{{- else if and (first .Values.ingress.hosts).host (not (.Values.ingress.tls)) }}
{{- printf "%s://%s:%d%s" (include "test-guide.protocol" .) (first .Values.ingress.hosts).host (.Values.service.port | int) (first (first .Values.ingress.hosts).paths).path }}
{{- else }}
{{- fail "No host is configured for ingress in values.yaml" }}
{{- end }}
{{- else }}
{{- default (printf "%s://127.0.0.1:%d/" (include "test-guide.protocol" .) (.Values.service.port | int)) .Values.customHost }}
{{- end }}
{{- end }}
