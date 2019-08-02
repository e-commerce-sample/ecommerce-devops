# 项目简介
该项目包含Ecommerce项目的基础设施。


Ecommerce项目包括：

|代码库|用途|地址|
| --- | --- | --- |
|order-backend|Order服务|[https://github.com/e-commerce-sample/order-backend](https://github.com/e-commerce-sample/order-backend)|
|product-backend|Product服务|[https://github.com/e-commerce-sample/product-backend](https://github.com/e-commerce-sample/product-backend)|
|inventory-backend|Inventory服务|[https://github.com/e-commerce-sample/inventory-backend](https://github.com/e-commerce-sample/inventory-backend)|
|common|共享依赖包|[https://github.com/e-commerce-sample/common](https://github.com/e-commerce-sample/common)|
|devops|基础设施|[https://github.com/e-commerce-sample/devops](https://github.com/e-commerce-sample/devops)|


# 本地构建
|功能|命令|备注|
| --- | --- | --- |
|启动RabbitMQ|`./start-rabbitmq.sh`|RabbitMQ访问：[http://localhost:15672/](http://localhost:15672/)|
|停止RabbitMQ|`./stop-rabbitmq.sh`|将清空所有network和volume|

