# Host Specification

## Description
Hosts should be specified in a certain way in this directory. Please read this and look over the spec in this markdown to get a idea of how it should be formatted

### Example
``` yaml
test: maybe2 # not necessary
deployments: # deployment have a one and two index that are used to help set template variable in the smart cities directory
    one: 
        id: 13 # the sensor id of the lidar
        ip: 172.20.133.190 # the ip of the lidar
        siteId: 6 # the id of site or intersection
        deploymentId: 1 # the deployment id or what could be considered a mounting id
        corner: SW # the corner for where the sensor is located
        model: VLP-32C # what model is being used
        state: Nevada # the state
        city: Reno # the city
        street: Virginia # the main street the lidar is on
        crossStreet: 4th # the cross street
        lidarConfig: /velodyne/build/VLP-32c.xml # which lidar config to use -- this could be your own
        mqtttopic: /IM/4th/SW # the mqtt topic to stream to
        rostopic: /IM/4th/SW # the ros topic to stream to
        dataPort: 2500 # the data port for lidar is streaming to
        nmeaPort: 8448 # the nmea port or where gps data is being sent to
        interface: enp7s0 # the interface where lidar is flowing to
        frontdirection: -27 # the forward vector of the velodyne sensor
        latitude: 39.52974740900038 # the closest latitude of the lidar sensor
        longitude: -119.81430056812974 # the closest longitude of the lidar sensor
        appid: 1 # the app id used to differentiate different services in the docker file
        restPort: 40002 # the rest port for where point cloud data will be made available for download
    two: # same as one just another lidar sensor
        id: 14
        ip: 172.20.133.191
        siteId: 6
        deploymentId: 0
        corner: NE
        model: VLP-32C
        state: Nevada
        city: Reno
        street: Virginia
        crossStreet: 4th
        lidarConfig: /velodyne/build/VLP-32c.xml
        mqtttopic: /IM/4th/NE
        rostopic: /IM/4th/NE
        dataPort: 2510
        nmeaPort: 8458
        interface: enp8s0
        frontdirection: -199
        latitude: 39.53004531157348
        longitude: -119.81419260922377
        appid: 2
        restPort: 40003
ip: 172.20.133.182 # ip of the edge computer
HOSTNAME: ncar-edge-182 # host name of the edge computer
latitude: 39.529907174364574 # latitude of the edge computer 
longitude: -119.81427399435529 # longitude of the edge computer
```