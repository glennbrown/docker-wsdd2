# glennbrown/docker-wsdd2

This container will allow you to build a wsdd2 `.deb` file without installing any build dependencies on your system.

[wsdd2][wsdd2] is only available for Debian in Testing (Bookworm) or Ubuntu Jammy and higher.

### Pre-requisites
You will need a working copy of [docker][docker] to build the container.

### Usage

```
./build.sh
sudo dpkg -i ./build/wsdd2*.deb
sudo systemctl enable --now wsdd2
```
It will build the most recent version.

The build script spins up a container, executes the `Dockerfile` which performs the actual build from source. The script then copies the built `.deb` artifact out onto your local system ready for installation using `dpkg`.

[docker]:https://docs.docker.com/engine/install/
[wsdd2]:https://github.com/Netgear/wsdd2