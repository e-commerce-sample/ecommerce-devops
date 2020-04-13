## 用法
- 本地启动整个ELK：`./start.sh`
- 启动之后检查ES集群状态：`curl http://localhost:9201/_cluster/health?pretty`
- 查看节点情况：`curl http://localhost:9201/_cat/nodes?v`
- 启动之后可以访问Kibana：[http://localhost:5602](http://localhost:5602)
- 首次启动Kibana需要创建Index(需要ES中有Index数据之后才行)，Logstash默认的Index为`logstash-*`格式。
- 关闭ELK： `./stop.sh`，将清空所有数据
- 用2种方式打日志：通过gelf和通过redis
- Redis默认密码：`changeme`


## redis日志测试
- 保证[http://localhost:5602](http://localhost:5602)可以正常访问
- 登录Redis： `redis-cli -h localhost -p 6380 -a changeme`
- 在Redis中随便打点内容(需要json格式)：`lpush redis-log '{"msg":"hello world"}'`
- 在Kibana上创建名为`logstash-*`的Index
- 在Kibana上切换到`discovery`页面便可以看到`hello world`了。

## 端口映射

|宿主机端口|Docker容器|Docker容器端口|
| --- | --- | --- |
|9201|elasticsearch|9200|
|9301|elasticsearch|9300|
|12202|logstash|12201(udp)|
|5602|kibana|5601|
|6380|redis|6379|

## 启用Elasticsearch认证
- 在`elasticsearch.yml`中配置：

```
xpack.security.enabled: true
```

- 启动ELK：`./start.sh`
- 登录到elasticsearch容器中:`docker exec -it single-node-elk-es bash`
- `cd`到 `/usr/share/elasticsearch/bin`目录
- 设置密码：`./elasticsearch-setup-passwords auto`(自动生成)或者./elasticsearch-setup-passwords interactive`（手动生成）
- 通过Basic Authentication访问API：

```
curl http://elastic:password-for-es@localhost:9201/_cluster/health?pretty
```
- 在`kibana.yml`中配置Kibana的访问用户：

```
elasticsearch.username: "kibana"
elasticsearch.password: "password-for `kibana` user"
```

- 访问Kibana：[http://localhost:5602](http://localhost:5602)
- 用设置的账户登录