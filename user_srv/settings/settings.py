# 使用数据库连接池
from playhouse.pool import PooledMySQLDatabase
from playhouse.shortcuts import ReconnectMixin


class ReconnectMySQLDatabase(ReconnectMixin, PooledMySQLDatabase):
    pass


MYSQL_DB = "cat_user"
MYSQL_HOST = "192.168.20.20"
MYSQL_PORT = 3306
MYSQL_USER = "root"
MYSQL_PASSWORD = "123"

DB = ReconnectMySQLDatabase(MYSQL_DB, host=MYSQL_HOST, port=MYSQL_PORT, user=MYSQL_USER, password=MYSQL_PASSWORD)
