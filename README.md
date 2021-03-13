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