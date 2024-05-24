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

   ```bash
   # Actualiza la lista de paquetes
   sudo apt update

   # Instala los paquetes necesarios
   sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

   # Añade la clave GPG oficial de Docker
   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

   # Añade el repositorio de Docker a APT
   echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

   # Actualiza la lista de paquetes con el repositorio de Docker
   sudo apt update

   # Instala Docker
   sudo apt install -y docker-ce docker-ce-cli containerd.io

   # Inicia el servicio Docker
   sudo systemctl start docker

   # Añade el usuario actual al grupo Docker
   sudo usermod -aG docker ${USER}

   # Instala Docker Compose
   sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
   sudo chmod +x /usr/local/bin/docker-compose

   # Cierra y abre la terminal o usa:
   su - ${USER}

   # Clona el repositorio 
git clone URL_DEL_REPOSITORIO
cd my_flask_app

# Construir y ejecutar los contenedores con Docker Compose
docker-compose up -d


