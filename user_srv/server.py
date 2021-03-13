import sys
import os
import logging
import signal
from concurrent import futures

import grpc
from loguru import logger

# 将当前系统目录放到python可以import的目录之下
# 获取当前项目相对路径 /Users/finnley/Code/cat-srvs 需要引入 os
# os.path.dirname(__file__) 表示当前 server.py 运行的目录位置
# BASE_DIR = os.path.dirname(__file__)
# print(BASE_DIR)
# /Users/finnley/Code/cat/cat-srvs
BASE_DIR = os.path.dirname(os.path.abspath(os.path.dirname(__file__)))
print(BASE_DIR)
sys.path.insert(0, BASE_DIR)

from user_srv.proto import user_pb2, user_pb2_grpc
from user_srv.handler.user import UserServicer


def on_exit(signo, frame):
    logger.info("进程中断")
    # 直接退出
    sys.exit(0)


def serve():
    logger.add("logs/user-srv-{time}.log")
    # 1.实例化server，并设置10个线程池
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))

    # 2.注册逻辑到 server
    user_pb2_grpc.add_UserServicer_to_server(UserServicer(), server)

    # 3.启动 server
    server.add_insecure_port("[::]:50051")
    # print(f"启动服务: 127.0.0.1:50051")
    logger.info(f"启动服务: 127.0.0.1:50051")

    # 主进程退出监听，需要引入 signal
    """
        windows 下支持的信号是有限的：
            SIGINT: 这个信号是由 Ctrl + c 发起的
            SIGTERM: 这个信号是由 kill 发起的软件终止
    """
    signal.signal(signal.SIGINT, on_exit)
    signal.signal(signal.SIGTERM, on_exit)

    server.start()
    # 加上这一句，否则一旦start,主程序就结束了，其他的相关线程就关闭了
    server.wait_for_termination()


if __name__ == "__main__":
    # logger.debug("调试信息")
    # logger.info("普通信息")
    # logger.warning("警告信息")
    # logger.error("错误信息")
    # logger.critical("严重错误信息")
    logging.basicConfig()
    serve()
