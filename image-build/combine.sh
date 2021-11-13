ROCKETMQ_VERSION=4.9.2
docker manifest create schnell18/rocketmq:${ROCKETMQ_VERSION}-alpine \
    --amend schnell18/rocketmq:${ROCKETMQ_VERSION}-alpine-arm64 \
    --amend schnell18/rocketmq:${ROCKETMQ_VERSION}-alpine-amd64

docker manifest push schnell18/rocketmq:${ROCKETMQ_VERSION}-alpine
