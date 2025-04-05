# Utilise une image de base Python officielle
FROM python:3.11-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers nécessaires dans l'image
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste de l'application
COPY . .

# Exposer un port (à adapter selon ton app)
EXPOSE 8000

# Commande pour lancer l'application (ex : Flask, FastAPI, etc.)
CMD ["python", "main.py"]
