# Usa una imagen oficial de Python
FROM python:3.10-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia todos los archivos del proyecto al contenedor
COPY . /app

# Actualiza pip y luego instala las dependencias
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expone el puerto en el que correrá Django
EXPOSE 8000

# Comando para iniciar el servidor de desarrollo de Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]