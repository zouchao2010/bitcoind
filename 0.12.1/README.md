# bitcoind

## build
```shell
docker build -t zouchao2010/bitcoind:0.12.1 .

```

## pull
```shell
docker pull zouchao2010/bitcoind:0.12.1

```
  
## run(创建并运行一个容器，退出时删除容器)
```shell
docker run  --name bitcoind-0.12.1 \
            -h bitcoind-0121 \
            -p 18332:18332 \
            -p 18333:18333 \
            -p 18334:18334 \
            -v /data/bitcoind-0.12.1:/var/lib/bitcoind \
            -e TESTNET=1 \
            -it --rm zouchao2010/bitcoind:0.12.1
            
```
  
## run(创建并运行一个容器，以守护进程方式)
```shell
docker run  --name bitcoind-0.12.1 \
            --restart=always \
            -m 2048m \
            -h bitcoind-0121 \
            -p 18332:18332 \
            -p 18333:18333 \
            -p 18334:18334 \
            -v /data/bitcoind-0.12.1:/var/lib/bitcoind \
            -e TESTNET=1 \
            -dt zouchao2010/bitcoind:0.12.1
            
```

## start|stop|restart(已存在的容器)
```shell
docker start|stop|restart bitcoind-0.12.1

```

## exec(使用已运行的容器执行命令)
```shell
docker exec -it bitcoind-0.12.1 /bin/bash

```


## dependency
```shell
docker run  --name redis \
            -h redis \
            -p 6379:6379 \
            -v /data/redis:/data \
            -dt redis
            
```
