# Elastic_zab
Elasticsearch cluster status and health check  are collected by Zabbix externalscript, then  to visualize by Zabbix Graphs.

## Requirements
* Zabbix3.2
* Elasticsearch5.x (recommended 5.4～)

## Installation
1. Set up "2" following user macros in your Elasticsearch nodes to Zabbix Host menus.
 * **{$ESIP}** = The Elasticsearch node IP or DNS name.
 * **{$ESPORT}** = The Elasticsearch node port number.

2. Import the template to zabbix (elasticsearch_zab.xml) and link it to your Elasticsearch nodes.
Template name is "Elasticsearch Cluster"

3. Copy the shell script (elastic.sh) to the Zabbix server in the externalscript directory. (e.g. /usr/lib/zabbix/externalscripts)

4. Set a executable permission the script by using chown and chmod commands.
```
chown zabbix. elastic.sh
chmod 751 elastic.sh
```
5. Enjoy your Elasticsearch and Zabbix life!

## Notes
### About metrics
93 metrics are collected on Elasticsearch APIs,  ```GET _cluster/health``` and ```GET _cluster/stats```.

Read more about following links.
#### Cluster Health
https://www.elastic.co/guide/en/elasticsearch/reference/current/cluster-health.html

#### Cluster Stats
https://www.elastic.co/guide/en/elasticsearch/reference/current/cluster-stats.html

### Prediction items
Some items are used "forecast" and "timeleft".
Read more about following links.
https://www.zabbix.com/documentation/3.0/manual/config/triggers/prediction
