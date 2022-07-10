# Init my dev machine :sparkles: 

On a new freshly installed ubuntu machine clone this repo and run the install script:
```bash
./init-my-dev-machine
```

There is a Dockerfile to work on the script in a clean environment
```bash
docker build -t new-computer .
docker run --rm -it new-computer
```