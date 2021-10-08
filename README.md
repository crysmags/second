
# Intro
This is a Python Sandbox with Logs and APM enabled and connected. The Python App uses Django, Nginx, uWSGI and is set up in Docker.

## Requirements



## Build & Deploy You App!
The app is built and run using docker compose

1. Make sure you have `.sandbox.conf.sh` in your `~/` directory following [these instructions](https://github.com/DataDog/sandbox#start-any-vm-in-2-min)
2. Add your API key to the docker-compose.yml
3. run `docker-compose build --no-cache`
4. run `docker compose up`
5. open up http://localhost:8080/home/ (http://localhost:8080/home/).

![Your Django App Page](https://p-qkfgo2.t2.n0.cdn.getcloudapp.com/items/mXupO4v1/3416c18a-2534-44a2-8b34-efa9056a94f8.gif?source=viewer&v=e17ddf6859d40d33eab74b588082cdaa)

Head over to `localhost:8080/home`