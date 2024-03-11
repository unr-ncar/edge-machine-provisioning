# Edge Provision Repository

## Description


The following repository is a ansible playbook reposistory for the intelligent mobility project that will install all dependencies while configuring edge machine based on the host_vars files. This repository has three main roles being: smartcity, base, and network. The smart city role will install all things related to the Intelligent Mobility project for running the software. The base role will install the base dependencies for the project. The network installs firewall rules and the ports needed to be opened for the project. 

## Templates in Smart City Role
In the smart city role there are a number of different templates used to configure docker files that need to be installed for the intelligent mobility infrastructure. These templates can be found [here](roles/smartcity/templates/) 

* config.yaml.j2 - config file for the pcap and ros record services 
* consul.yaml.j2 - config file for consul 
* dailypcaprecord.sh - cronjob that starts a pcap record daily
* docker-compose-bag.j2 - old docker-compose that records bag files based off of lidar sensor
* docker-compose-sensor.j2 - old docker-compose
* docker-compose.j2 - docker-compose currently in production
* lidars.launch.j2 - ros2 launch containing the specification for connecting to the lidar sensors
* mqtt.launch.j2 - ros2 launch connecting information for connecting the ros 2 to the mqtt borker
* params.ros2.yaml.j2 - ros 2 params for mqtt ros package
* smb-credentials.j2 - a file containing the smb credentials for connecting the samba end point to the storage chassis
* test.j2 - a test template
* velodyne.json.j2 - a consul configuration for checking the velodyne sensors
## To Run the provisioning of this repo do the following
``` bash
   # ensure you have access to the kubernetes cluster and the kube-system namespace
   cd utils/

   # this will grab certificates that are relevant for fetching implemented containers related to the improject
   ./getsecret.sh 

   # now to provision machines
   cd ..
   ansible-playbook playbook.yml -kK --ask-vault-pass

```

``` bash

   # ansible galaxy packages to install
   ansible-galaxy collection install ansible.posix
```