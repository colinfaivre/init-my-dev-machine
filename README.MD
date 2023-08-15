# Init my dev machine :sparkles: 

On a new freshly installed ubuntu machine clone this repo and run the install script:
```bash
./init-my-dev-machine
```

Use the Dockerfile to work on the script in a clean environment:
```bash
docker build -t new-computer .
docker run --rm -it new-computer
```

### @TODO
- build neovim from source
- install tmux
- dotfiles : try with zsh
- use tags

usefull link to open apps on dedicated workspaces : https://medium.com/@mukherjeekalpan/auto-start-apps-and-fix-them-to-workspaces-on-startup-ubuntu-a1124f1af7f3
