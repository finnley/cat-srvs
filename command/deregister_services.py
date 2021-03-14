import consul

headers = {
    "contentType": "application/json"
}

c = consul.Consul(host="192.168.20.20")

'''
command: 注销服务
'''
rsp = c.agent.services()
for key, value in rsp.items():
    rsp = c.agent.service.deregister(key)
