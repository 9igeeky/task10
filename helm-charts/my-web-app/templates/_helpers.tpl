{{/* Общие метки */}}
{{- define "my-web-app.labels" -}}
app: {{ .Chart.Name }}
release: {{ .Release.Name }}
chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "." "-" }}
{{- end }}

{{/* Метки селектора */}}
{{- define "my-web-app.selectorLabels" -}}
app: {{ .Chart.Name }}
release: {{ .Release.Name }}
{{- end }}

{{/* Полное имя приложения */}}
{{- define "my-web-app.fullname" -}}
{{- printf "%s" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Имя backend компонента */}}
{{- define "my-web-app.backend.fullname" -}}
{{- printf "%s-backend" .Release.Name -}}
{{- end -}}

{{/* Имя frontend компонента */}}
{{- define "my-web-app.frontend.fullname" -}}
{{- printf "%s-frontend" .Release.Name -}}
{{- end -}}