#!/bin/bash

# Script para automatizar add, commit y push

if [ -z "$1" ]; then
  echo "Uso: ./git_automate.sh \"Mensaje del commit\""
  exit 1
fi

# Añadir todos los cambios
git add .

# Hacer commit con mensaje pasado por parámetro
git commit -m "$1"

# Obtener rama actual
current_branch=$(git branch --show-current)

if [ "$current_branch" != "main" ]; then
  echo "Actualmente estás en la rama '$current_branch'."
  read -p "¿Quieres cambiar a 'main' para hacer push? (y/n): " choice
  if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
    git checkout main
  else
    echo "Abortando push. Haz push manualmente desde tu rama actual."
    exit 0
  fi
fi

# Hacer push a main
git push origin main

echo "¡Listo! Cambios subidos a GitHub en la rama main."
