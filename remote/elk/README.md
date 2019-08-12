## Installation step
- Create 5 VMs using Vagrant,`cd` to `vagrant` folder and run: `./start.sh`, every VM will get a DNS name
- Make sure the 5 VMs is listed in `inventory.ini`
- Provision all nodes: `cd` to project root, `./provision.sh elk-all`
- Deploy commands:

|Command|Usage|
| --- | --- |
|`deploy-all.sh`|Deploy the whole ELK stack|
|`deploy-es-all.sh`|Deploy all ES nodes|
|`deploy-es1.sh`|Deploy es1|
|`deploy-es2.sh`|Deploy es2|
|`deploy-es3.sh`|Deploy es3|
|`deploy-kibana.sh`|Deploy Kibana|
|`deploy-logstash.sh`|Deploy Logstash|
