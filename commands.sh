
// 0.0.5 **************************************************
docker login -u mayakov
docker build -t mayakov/hatest1:0.0.5 -f Dockerfile .
docker push mayakov/hatest1:0.0.5
docker manifest create --insecure mayakov/hatest1:0.0.5 --amend mayakov/hatest1:0.0.5
docker manifest push mayakov/hatest1:0.0.5
docker manifest inspect --verbose mayakov/hatest1:0.0.4

docker login -u mayakov
docker build -t hatest1 -f Dockerfile .
docker push mayakov/hatest1:0.0.5
docker manifest create --insecure hatest1 --amend hatest1
docker manifest push mayakov/hatest1:0.0.5