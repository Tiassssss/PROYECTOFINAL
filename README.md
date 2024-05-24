# PROYECTOFINAL
# Despliegue de la Aplicación Web sobre Egipto

## Descripción

Esta es una aplicación web simple desarrollada con Flask que muestra información sobre Egipto. La aplicación está contenida en un contenedor Docker y puede ser desplegada usando Docker Compose.

## Estructura de Archivos
my_flask_app/
├── app.py
├── requirements.txt
├── templates/
│ ├── index.html
│ └── styles.css
├── Dockerfile
├── docker-compose.yml
└── README.md

## Pasos para Desplegar en Ubuntu/Debian

1. **Instalar Docker y Docker Compose**

   Si Docker y Docker Compose no están instalados en tu instancia, sigue estos pasos:

  Install using the apt repository

Before you install Docker Engine for the first time on a new host machine, you need to set up the Docker repository. Afterward, you can install and update Docker from the repository.

    Set up Docker's apt repository.

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

    Note

    If you use an Ubuntu derivative distro, such as Linux Mint, you may need to use UBUNTU_CODENAME instead of VERSION_CODENAME.

Install the Docker packages.

To install the latest version, run:

 sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

Verify that the Docker Engine installation is successful by running the hello-world image.

 sudo docker run hello-world

   # Clona el repositorio 
git clone URL_DEL_REPOSITORIO
cd my_flask_app

# Construir y ejecutar los contenedores con Docker Compose
docker-compose up -d


