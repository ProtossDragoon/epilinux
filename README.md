# Enviroment for EPITA Y2 PROG class

This dockerfile might help you to prepare your environment for the Y2 PROG class.

Open a terminal:

```bash
git clone https://github.com/ProtossDragoon/epilinux.git
cd epilinux
mkdir volume
docker-compose build && docker-compose up
```

This creates a virtual environment with all necessary dependencies and libraries pre-installed.

Wait for a moment. Afterward, move your source code to epilinux/volume/.

If you wish to open the virtual environment, open a new terminal:

```bash
docker exec -it epita /bin/bash
```
