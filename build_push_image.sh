# Build image
docker build -t item-app:v1 .

# Lihat image lokal
docker images

docker tag item-app:v1 goldenbird29/item-app:v1

# Login ke Docker Hub (pakai env variable)
echo $PASSWORD_DOCKER_HUB | docker login -u goldenbird29 --password-stdin

# Push image
docker push goldenbird29/item-app:v1
