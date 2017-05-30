# docker-nba-api
Automatic Build of the Netherlands Biodiveristy API

** !! This container is still in development **

To run this conainter run
```
docker run -p 8080:8080 --link <your-es-container-name>:es atzedevries/docker-nba-api:<tag>
```

#### Elasticsearch
Depending which version you are using you should run `elasticsearch 2.3.5/5.1.2`. If your docker tag
is `2.05-11` or lower then run `2.3.5`

Before running elasticsearch make sure you have your `vm.max_map_count` setting correct
To check run

`/sbin/sysctl  vm.max_map_count`

It should be `262144` or higher
To modify run

`/sbin/sysctl -w vm.max_map_count=262144`


Run `2.3.5`:
```
docker run --name my-es2-01 \
  -d -e ES_JAVA_OPTS="-Xms512m -Xmx512m" \
  elasticsearch:2.3.5 elasticsearch \
    -Des.cluster.name="nba-cluster"
    -Des.index.number_of_replicas=0
```


Run `5.1.2`:
```
docker run --name my-es5-01 \
  -d -e ES_JAVA_OPTS="-Xms512m -Xmx512m" \
  elasticsearch:5.1.2 elasticsearch \
    -Ecluster.name="nba-cluster" \
    -Enetwork.host="_site_"
```
