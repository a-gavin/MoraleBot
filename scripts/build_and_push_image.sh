docker build \
    --build-arg DISCORD_BOT_ID="$DISCORD_BOT_ID" \
    --build-arg OWNER_ID="$OWNER_ID" \
    --build-arg MONGO_URI="$MONGO_URI" \
    --build-arg CLIENT_ID="$CLIENT_ID" \
    -t $ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG .

docker push $ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG
