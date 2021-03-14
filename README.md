# cat-srvs

## 依赖包

#### peewee

```shell script
pip3 install peewee -i https://pypi.douban.com/simple
pip3 install pymysql -i https://pypi.douban.com/simple
```

#### encryption

```shell script
pip3 install passlib -i https://pypi.douban.com/simple
```

#### grpc

```shell script
pip3 install grpcio -i https://pypi.douban.com/simple
pip3 install grpcio-tools -i https://pypi.douban.com/simple
```

#### 生成 protobuf 文件
```
python3 -m grpc_tools.protoc --python_out=. --grpc_python_out=. -I . user.proto
```

#### loguru

```shell script
pip3 install loguru -i https://pypi.douban.com/simple
```

#### python-consul2

```shell script
pip3 install python-consul2 -i https://pypi.douban.com/simple
```