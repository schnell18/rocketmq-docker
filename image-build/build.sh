ROCKETMQ_VERSION=4.9.2

ARCH=""
dockerArch=$(docker info | grep Architecture | cut -d' ' -f3 | sed -e 's/\s+//g')
case "${dockerArch}" in
    amd64)   ARCH='amd64';;
    x86_64)  ARCH='amd64';;
    arm64)   ARCH='arm64';;
    aarch64) ARCH='arm64';;
    *) echo "unsupported architecture: $dockerArch"; exit 1 ;;
esac

REV=2
./build-image.sh $ROCKETMQ_VERSION alpine $ARCH $REV
docker push schnell18/rocketmq:$ROCKETMQ_VERSION-$REV-alpine-${ARCH}
