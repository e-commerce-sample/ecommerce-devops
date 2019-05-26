# devops
Infrastructure as Code for e-commerce.

# 本地构建
|功能|命令|备注|
| --- | --- | --- |
|启动RabbitMQ|`./start-rabbitmq.sh`|RabbitMQ访问：[http://localhost:15672/](http://localhost:15672/)|
|停止RabbitMQ|`./stop-rabbitmq.sh`|将清空所有network和volume|
|启动Nexus|`./stop-neuxs.sh`|Nexus访问：[http://localhost:9091](http://localhost:9091),将保留原有volume|
|停止Nexus|`./stop-nexus.sh`|将清除volume|

