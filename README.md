# Grafana Monitoring Stack

Configuration and automation scripts for deploying a monitoring stack with Grafana, Prometheus, Alertmanager, Node Exporter, and cAdvisor.

## Features

- Grafana dashboard and datasource provisioning
- Prometheus metrics collection
- Alertmanager configuration
- Node Exporter for host metrics
- cAdvisor for container metrics
- Docker Compose / Docker Swarm deployment
- Jenkins pipeline support

## Stack

- Grafana `10.1.5-ubuntu`
- Prometheus `v2.47.2`
- Alertmanager `v0.25.0`
- Node Exporter `v1.6.1`
- cAdvisor `v0.47.0`

## Repository Structure

```text
.
├── configs/
│   ├── grafana/
│   ├── prometheus/
│   └── alertmanager.yml
├── docker-compose.yml
├── Jenkinsfile
├── run.sh
├── grafana.sh
├── alertmanager.sh
├── install_prometheus_server.sh
├── prometheus_node_exporter.sh
└── static--dinamic
````

## Requirements

* Linux server
* Docker
* Docker Swarm
* Bash
* Jenkins, optional

## Installation

Clone the repository:

```bash
git clone https://github.com/sevii-ia/Grafana.git
cd Grafana
```

Run the deployment script:

```bash
sudo bash run.sh
```

The script installs Docker, initializes Docker Swarm, and deploys the stack as `monitoring`.

## Docker Deployment

You can also deploy manually:

```bash
docker swarm init
docker stack deploy -c docker-compose.yml monitoring
```

## Services

| Service       | URL                                            |
| ------------- | ---------------------------------------------- |
| Grafana       | [http://localhost:3000](http://localhost:3000) |
| Prometheus    | [http://localhost:9090](http://localhost:9090) |
| Alertmanager  | [http://localhost:9093](http://localhost:9093) |
| Node Exporter | [http://localhost:9100](http://localhost:9100) |
| cAdvisor      | [http://localhost:8081](http://localhost:8081) |

## Default Grafana Login

```text
Username: admin
Password: admin
```

Change the default password after the first login.

## Jenkins Usage

The included `Jenkinsfile` runs:

```bash
bash run.sh
```

This allows the monitoring stack to be deployed from a Jenkins pipeline.

## Standalone Installation Scripts

The repository also includes standalone installers:

```bash
sudo bash grafana.sh
sudo bash install_prometheus_server.sh
sudo bash prometheus_node_exporter.sh
sudo bash alertmanager.sh
```

Use these scripts when installing services directly on a host instead of Docker.

## Configuration

Prometheus configuration is stored in:

```text
configs/prometheus/prometheus.yml
```

Grafana provisioning files are mounted from:

```text
configs/grafana/datasources
configs/grafana/dashboards
```

Alertmanager configuration is mounted from:

```text
configs/alertmanager.yml
```

## Monitoring Targets

The `static--dinamic` example includes scrape configurations for:

* Local Prometheus
* Ubuntu servers
* Windows servers
* Production EC2 instances
* Development EC2 instances
* Docker nodes
* Docker Swarm services

## Troubleshooting

Check running Docker services:

```bash
docker service ls
```

View service logs:

```bash
docker service logs monitoring_grafana
docker service logs monitoring_prometheus
docker service logs monitoring_alertmanager
```

Check Prometheus targets:

```text
http://localhost:9090/targets
```

Check Grafana datasource provisioning inside the container:

```bash
docker exec -it $(docker ps -qf name=grafana) ls /etc/grafana/provisioning/datasources
```

## License

This project is licensed under the MIT License.

See the [LICENSE](LICENSE) file for more information.
