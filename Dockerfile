FROM datadog/docker-dd-agent:latest-alpine

# Add custom configurations if needed
COPY conf.d/ /etc/dd-agent/conf.d/

# Set environment variables
ENV DD_APM_ENABLED=true
ENV DD_LOGS_ENABLED=true
ENV DD_PROCESS_AGENT_ENABLED=true
