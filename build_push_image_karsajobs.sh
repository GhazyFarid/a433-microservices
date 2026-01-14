# Hentikan script jika terjadi error
set -e

# Nama image Docker
IMAGE_NAME=goldenbird29/karsajobs:latest

# Build Docker image
docker build -t $IMAGE_NAME .

# Login ke Docker Hub menggunakan env variable
echo $DOCKER_TOKEN | docker login -u goldenbird29 --password-stdin

# Push image ke Docker Hub
docker push $IMAGE_NAME
