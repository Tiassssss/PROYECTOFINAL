# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos de requerimientos y los instala
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copia el código de la aplicación al contenedor
COPY . .

# Expone el puerto 8085 para acceder a la aplicación
EXPOSE 8085

# Define el comando para ejecutar la aplicación
CMD ["python", "app.py"]
