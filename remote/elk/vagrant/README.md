### Introduction
- 5 nodes ubuntu1604 cluster with DHCP private network and DNS enabled
- network: private(host and vm can access each other)
- memory: 2048
- cpu: 2
- First step: install `landrush` vagrant plugin

``` bash
 vagrant plugin install landrush 
```
- Remember to run `vagrant landrush stop` when you switch wifi
- start: `./start.sh`
- destroy: `./destroy.sh`
- Login: `vagrant ssh nodeName`
- your own public key uploaded to the vm to enable generic SSH
- DNS name:`[xxx].vagrant.local`

## Node usage

|Domain Name|Usage|
| --- | --- |
|es1.vagrant.local|ES node 1|
|es2.vagrant.local|ES node 2|
|es3.vagrant.local|ES node 3|
|kibana.vagrant.local|Kibana|
|logstash.vagrant.local|Logstash with Redis as input|