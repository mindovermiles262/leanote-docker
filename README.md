# Dockerized Leanote

## Getting Started

1. Copy the `env.sample` file and name it `.env`. Change the secret and any other fields you may want to change. Then run:

```
docker-compose up -d
```

Once up and running, seed the DB:

```
docker exec leanote-docker_db_1 mongorestore --dir /seed
```

After about a minute log on to http://localhost:8080 to view your blog, or http://localhost:8080/note to get started

```
Username: admin

Password: abc123
```

## How it works

This repo contains all the scripts necessary for building and deploying Leanote inside of docker containers. The leanote source code is downloaded from github and installed inside a container. A minimal (empty) database is seeded by following the instructions above.

