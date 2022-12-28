
#!/bin/bash

# Establece la URL del sitio web a evaluar
url="http://www.example.com"

# Obtiene el contenido de la página
response=$(curl "$url")

# Utiliza una expresión regular para buscar un patrón que indique la presencia de una vulnerabilidad conocida (CVE)
if [[ "$response" =~ "CVE-" ]]; then
  echo "Se han detectado vulnerabilidades conocidas (CVE) en el sitio web $url"
else
  echo "No se han detectado vulnerabilidades conocidas (CVE) en el sitio web $url"
fi