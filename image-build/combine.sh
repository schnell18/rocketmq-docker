ROCKETMQ_VERSION=4.9.2
REV=2
docker manifest create schnell18/rocketmq:${ROCKETMQ_VERSION}-${REV}-alpine \
    --amend schnell18/rocketmq:${ROCKETMQ_VERSION}-${REV}-alpine-arm64 \
    --amend schnell18/rocketmq:${ROCKETMQ_VERSION}-${REV}-alpine-amd64

docker manifest push schnell18/rocketmq:${ROCKETMQ_VERSION}-${REV}-alpine
