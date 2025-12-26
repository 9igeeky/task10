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

<img width="740" height="139" alt="image" src="https://github.com/user-attachments/assets/f35f22a7-9308-4beb-a49e-8704311ce229" />
<img width="838" height="784" alt="image" src="https://github.com/user-attachments/assets/da5bfa21-264f-4ca9-8947-78fda69e5b32" />
<img width="547" height="68" alt="image" src="https://github.com/user-attachments/assets/a07f068f-9f7c-4672-83e2-0419883db351" />
<img width="659" height="77" alt="image" src="https://github.com/user-attachments/assets/489671d5-7402-4bd3-ae30-cc30505991f5" />
<img width="723" height="304" alt="image" src="https://github.com/user-attachments/assets/ca37a3d2-f94e-4588-81d9-d35f04e9ccf9" />
<img width="822" height="287" alt="image" src="https://github.com/user-attachments/assets/53cadc70-5207-47df-9b89-ed0400020fb3" />
<img width="834" height="298" alt="image" src="https://github.com/user-attachments/assets/c4a1a6db-181f-4dbf-b75e-c44fb68b9346" />
<img width="830" height="300" alt="image" src="https://github.com/user-attachments/assets/86fec66a-30cc-4a96-a453-1d56d2bbc03e" />
<img width="828" height="299" alt="image" src="https://github.com/user-attachments/assets/d9aa437e-4f5f-4dea-b97e-43bed399843b" />








