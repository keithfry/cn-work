docker build --pull --rm -f "Dockerfile-embedded" -t web-app-embedded:latest "."
docker run -p 8080:8080 -it web-app-embedded:latest