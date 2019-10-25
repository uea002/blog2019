# Использование Docker

1. Установите `Docker`
2. Выолните из корня приложения:

````
docker build -t dev .
docker run -itP -p 3000:3000 -v $(pwd):/app dev
````

Для запуска консоли:

````
docker run -itP -v $(pwd):/app dev /bin/bash
````
