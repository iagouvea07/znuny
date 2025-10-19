# Znuny ITSM application with Kubernetes ⚙️

As Open Source contributor, I did my first kubernetes model for Znuny using Helm Charts.

The Znuny version used for this repository is 7.0.19

With this repository, you should able to deploy this application using

- docker compose
- helm charts 

Before deploy this application, is recommended build your docker image first, push them in your registry, and finally put the image reference in

- values.yaml           (if deployed with kubernetes)
- docker-compose.yml    (if deployed with docker)


## Deployment with Docker Compose 🐋

```bash 
    docker compose -f ./docker/docker-compose.yml up -d
```

## Deployment with Helm 🚢

```bash
    helm install znuny ./helm
```

This project will be supported with the aim of improve this image for support the most several scenarios



### Release notes

- 19-10-2025: Added opentelemetry module to Apache2 HTTP Server for send traces to opentelemetry collector  