
# NestJS Prometheus Grafana Integration

This project demonstrates how to integrate Prometheus monitoring into a NestJS API server and visualize the metrics using Grafana. Prometheus is a popular open-source monitoring and alerting system, while Grafana provides powerful visualization and analytics features.

## Description

The project consists of a NestJS API server that exposes various metrics related to its performance and health. Prometheus is used to collect and store these metrics, and Grafana is employed to visualize and analyze the data.

## Usage

To use this project, follow the steps below:

### Installation

1. Make sure you have Docker installed on your system.

2. Clone the project repository:

   ```shell
   git clone https://github.com/saz419/nestjs-prometheus-grafana.git
   ```

3. Navigate to the project directory:

   ```shell
   cd nestjs-prometheus-grafana
   ```

4. Build the Docker image for the NestJS server:

   ```shell
   docker build -t nestjs-server .
   ```

5. Start the Docker containers using Docker Compose:

   ```shell
   docker-compose up --build -d
   ```

   This command will start the following containers:

   - `prometheus`: Prometheus server for collecting and storing metrics.
   - `grafana`: Grafana server for visualizing the metrics.
   - `nestjs`: NestJS API server with Prometheus integration.

6. Access Prometheus at `http://localhost:9090` and Grafana at `http://localhost:3001` in your web browser.

### Prometheus Configuration

The Prometheus server is pre-configured with a `prometheus.yml` file, which defines the targets to scrape for metrics. You can customize this file based on your specific needs.

The default configuration assumes that the NestJS server is exposing metrics at `http://nestjs:3002/metrics`. If you change the NestJS server's port or endpoint for metrics, make sure to update the Prometheus configuration accordingly.

### Grafana Configuration

Grafana comes with a default admin user (username: `admin`, password: `admin`) that you can use to log in. After logging in, you can configure Prometheus as a data source in Grafana.

1. Open Grafana at `http://localhost:3001` in your web browser.

2. Log in using the default credentials (username: `admin`, password: `admin`).

3. Navigate to "Configuration" -> "Data Sources".

4. Click on "Add data source".

5. Select "Prometheus" as the data source type.

6. Configure the Prometheus data source with the following settings:
   - Name: `Prometheus`
   - URL: `http://prometheus:9090`
   - Access: `Server (Default)`

7. Click on "Save & Test" to verify the connection to Prometheus.

### Viewing Metrics in Grafana

Once the data source is configured, you can create dashboards and panels in Grafana to visualize the metrics collected by Prometheus. Grafana provides a rich set of options to create and customize visualizations.

You can start by exploring the default metrics provided by the NestJS server and create custom dashboards based on your application's specific metrics and monitoring requirements.

## Additional Notes

- The NestJS server is running on port 3002 within the Docker container, which is mapped to port 3002 on the host machine. You can access the API server directly at `http://localhost:3002` if needed.

- The Prometheus server is running on port 9090 within the Docker container, which is mapped to port 9090 on the host machine. You can access the Prometheus UI at `http://localhost:9090` to explore and query the collected metrics.

- The Grafana server is running on port 3001 within the Docker container, which is mapped to port 3001 on the host machine. You can access the Grafana UI at `http://localhost:3001` to create dashboards and visualize the metrics.

- The Docker Compose configuration ensures that the NestJS server depends on Prometheus and Grafana, so they are started before the NestJS server container.

- Make sure to configure appropriate security measures (e.g., authentication, access controls) for Prometheus and Grafana in production environments.

## Conclusion

By integrating Prometheus monitoring and Grafana visualization into your NestJS API server, you can gain insights into the server's performance and health metrics. This enables you to make informed decisions and take proactive actions to ensure a reliable and efficient application.

Feel free to explore the project, customize the metrics, and enhance the monitoring and visualization capabilities based on your specific requirements. Happy monitoring and visualization!