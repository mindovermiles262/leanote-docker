# Dockerized Leanote

## Getting Started

1. Inside `app.conf`, change the secret and any other fields you may want to change. Then run:

```
docker-compose up -d
```

After about a minute log on to http://localhost:8080 to view your blog, or http://localhost:8080/note to get started

Username: admin

Password: abc123

## How it works

This repo contains all the scripts necessary for building and deploying Leanote inside of docker containers. The leanote source code is downloaded from github and installed inside a container. A minimal (empty) database is seeded.

## ToDo

* Use ENV variables instead of hard coded values
* Secure MongoDB with username and password
