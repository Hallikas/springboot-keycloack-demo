#ARGS=-i -t
ARGS=-d
docker run $ARGS -p 8080:8090 --rm demo $*
