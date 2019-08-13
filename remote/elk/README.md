## Installation step
- First create 5 VMs using Vagrant,`cd` to `vagrant` folder and run: `./start.sh`, every VM will get a DNS name
- Make sure the 5 VMs is listed in `inventory.ini`
- Provision all nodes: `cd` to project root, `./provision.sh elk-all`
- Deploy the whole ELK stack: `cd` to `elk`, run `./deploy.sh all`

## redis日志测试
- 保证[http://kibana.vagrant.local:5601](http://kibana.vagrant.local:5601)可以正常访问
- 登录Redis： `redis-cli -h logstash.vagrant.local -p 6379 -a changeme`
- 在Redis中随便打点内容(需要json格式)：`lpush redis-log '{"msg":"hello world"}'`
- 在Kibana上创建名为`logstash-*`的Index
- 在Kibana上切换到`discovery`页面便可以看到`hello world`了。


## Deploy commands:

|Command|Usage|
| --- | --- |
|`deploy.sh all`|Deploy the whole ELK stack|
|`deploy.sh es`|Deploy all ES nodes|
|`deploy.sh es1`|Deploy es1|
|`deploy.sh es2`|Deploy es2|
|`deploy.sh es3`|Deploy es3|
|`deploy.sh kibana`|Deploy Kibana|
|`deploy.sh logstash`|Deploy Logstash|
