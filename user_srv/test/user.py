import grpc

from user_srv.proto import user_pb2, user_pb2_grpc


class UserTest:
    def __init__(self):
        # 连接grpc服务器
        channel = grpc.insecure_channel("127.0.0.1:50051")
        self.stub = user_pb2_grpc.UserStub(channel)

    def user_list(self):
        rsp: user_pb2.UserListResponse = self.stub.GetUserList(user_pb2.PageInfo(page=2, pageSize=2))
        print(rsp.total)

        for user in rsp.data:
            print(user.mobile, user.birthday)

    def get_user_by_id(self, id):
        rsp: user_pb2.UserInfoResponse = self.stub.GetUserById(user_pb2.IdRequest(id=id))
        print(rsp.mobile)

    def get_user_by_mobile(self, mobile):
        rsp: user_pb2.UserInfoResponse = self.stub.GetUserByMobile(user_pb2.MobileRequest(mobile=mobile))
        print(rsp.mobile)

    def create_user(self, nickname, mobile, password):
        rsp: user_pb2.UserInfoResponse = self.stub.CreateUser(user_pb2.CreateUserInfo(
            nickname=nickname,
            password=password,
            mobile=mobile
        ))
        print(rsp.id)


if __name__ == "__main__":
    user = UserTest()
    user.user_list()
    user.get_user_by_id(5)
    user.get_user_by_mobile("13312345672")
    user.create_user("4343", "14343434343", "123456")
