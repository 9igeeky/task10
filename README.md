# Simple Web Application Deployment

Простое веб-приложение с Flask backend и Nginx frontend.

## Архитектура
- **Frontend**: Nginx serving static HTML with JavaScript
- **Backend**: Flask API returning text responses
- **Инфраструктура**: Kubernetes with Services, Deployments, ConfigMaps

## Развертывание

### Способ 1: Использование kubectl

```bash
# Создайте namespace
kubectl create namespace production

# Примените все манифесты
kubectl apply -f manifests/ -n production

# Проверьте развертывание
kubectl get all -n production
```

### Способ 2: Использование help

``` bash
# Установите Helm chart
helm install my-release ./helm-charts/my-web-app -n production --create-namespace

# Проверьте установку
helm list -n production

# Проверьте ресурсы
kubectl get all -n production
```

## Обновление развертывания

```bash
# Измените values.yaml (например, количество реплик)
# Выполните обновление
helm upgrade my-release ./helm-charts/my-web-app -n production

# Проверьте изменения
kubectl get pods -n production
```

## Удаление

```bash
# Удаление Helm release
helm uninstall my-release -n production

# Или удаление через kubectl
kubectl delete -f manifests/ -n production
```