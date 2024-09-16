#
# Publishes a Docker image.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   REGISTRY_UN - User name for your container registry.
#   REGISTRY_PW - Password for your container registry.
#   VERSION - The version number to tag the images with.
#
# Usage:
#
#       ./scripts/push-image.sh
#

set -u # or set -o nounset
: "$ACR_NAME"
: "$VERSION"
# : "$REGISTRY_UN"
# : "$REGISTRY_PW"

# echo $CONTAINER_REGISTRY

# echo $VERSION

# echo $REGISTRY_UN

# echo $REGISTRY_PW

# echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin

docker tag book-catalog:latest $ACR_NAME.azurecr.io/book-catalog:$VERSION

docker tag inventory-management:latest $ACR_NAME.azurecr.io/inventory-management:$VERSION

docker push $ACR_NAME.azurecr.io/book-catalog:$VERSION

docker push $ACR_NAME.azurecr.io/inventory-management:$VERSION
