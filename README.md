# python-project-skeleton


prerequisite:
- docker
- docker-compose

## How to use
```bash
# build service
docker-compose build dev

# lint
docker-compose run dev inv lint

# test
docker-compose run dev inv test

# run command line in container
docker-compose run dev
```

To do:
- CI/CD template