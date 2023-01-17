docker build --pull --rm -f "Dockerfile-standalone" -t web-app-standalone:latest "."
docker run -p 8080:8080 -it web-app-standalone:latest