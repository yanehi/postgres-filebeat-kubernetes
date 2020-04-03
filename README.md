# PostgreSQL Log shipping with Filebeat
PostgreSQL container with Filebeat sidecar for log shipping to Elasticsearch. The PostgreSQL logs from `var/log/postgresql` will be saved in in a `persistent volume` called `pg-log`. The Filebeat sidecar container mount the `pg-log` `persistent volume` into his filesystem on `var/log/postgresql`.

In the `filebeat.yml` (configuration file of filebeat) an `input.type = log` is defined, which points to the `var/log/postgresql` directory on the filebeat container. This log files from the directory will be shipped to an `elasticsearch` container on `port 9200`.

## Requirements

* `kubectl` installed
* access to the K8s cluster
* running `elasticsearch` on port `9200` and for data visualization running `kibana` with access to `elasticsearch`

## Start setup

* execute the `create-deployment.sh` file

```bash
./create-deployment.sh
```

## Reset setup

* execute the `remove-deployment.sh` file

```bash
./remove-deployment.sh
```

## Authors
* **Yannic Nevado** - *Initial work* - [Github](https://github.com/yanehi)