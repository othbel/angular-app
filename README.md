# MyApp

Ce projet a été générer avec [Angular CLI](https://github.com/angular/angular-cli) version 15.2.4.

### Cloner le repository git
Pour récupérer le projet sur votre machine, vous pouvez utiliser la commande suivante:
```bash
git clone https://github.com/othbel/angular-app.git
```

### Publier l'image Docker sur Docker Hub
Pour déployer l'application avec kubernetes, l'image Docker doit être disponible sur un registry. Pour publier l'image Docker, il faudra *build* l'image sur votre machine avant, vous pouvez utiliser les commandes suivantes pour *build* et publier l'image:
```bash
docker build -t <DockerID>/angular-app:<tag> .
docker push <DockerID>/angular-app:<tag>
```

### Déployer l'application avec K8s
Les fichiers **YML** sont dans le dossier ressources du repository. N'hésitez pas à modifier les limites de ressources selon votre machine.

```bash
kubectl apply -f ressources/deployment.yml,ressources/service.yml
```

### Exposer l'API avec minikube
Afin d'avoir accès à l'api, vous pouvez utiliser le tunnel LoadBalancer de Minikube.
```bash
minikube service angular-app-service
```
