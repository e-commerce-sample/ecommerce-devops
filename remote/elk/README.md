## Installation step
- First create 5 VMs using Vagrant,`cd` to `vagrant` folder and run: `./start.sh`, every VM will get a DNS name
- Make sure the 5 VMs is listed in `inventory.ini`
- Provision all nodes: `cd` to project root, `./provision.sh elk-all`
- Deploy the whole ELK stack: `cd` to `elk`, run `./deploy.sh all`


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
