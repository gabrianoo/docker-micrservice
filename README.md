# Docker Microservice

Docker build file for microservices created by Java, maven and S3 repository. You need to have [Docker](https://www.docker.com/) installed and running to make this useful.

## Build from source

### How to build

```
git clone https://github.com/gabrianoo/docker-microservice.git
docker build -t docker-microservice-custom docker-microservice
```

### How to run

```
# Snapshots: s3://<S3_URL>/repository/snapshots
# Releases: s3://S3_URL/repository/releases
# if you will use AWS S3 Wagon add the -e variables otherwise ignore this
docker run -d --name docker-microservice -e S3_URL=<S3_URL> -e S3_USERNAME=<S3_USERNAME> \
-e S3_PASSWORD=<S3_PASSWORD> -e ARTIFACT=<ARTIFACT_TO_RUN> docker-microservice-custom
```

## Versions

### Microservice Latest

#### What is inside

1. Ubuntu 14.04
2. Oracle Java 1.8.0_66
3. Maven 3.3.9

#### How to run

```
docker run -d --name microservice -e S3_URL=<S3_URL> -e S3_USERNAME=<S3_USERNAME> \
-e S3_PASSWORD=<S3_PASSWORD> -e ARTIFACT=<ARTIFACT_TO_RUN> otasys/microservice
```
