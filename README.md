# docker-go-work
docker-go-work
这是一个私人使用的go语言测试环境
```
docker pull ghostry/go-work
docker container stop ggo && docker container rm ggo
docker run -d -v /data/workdir:/go/src -p 8080:8080 --name ggo ghostry/go-work
docker exec -it ggo sh
```
