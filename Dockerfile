FROM datadog/agent

# Add custom configurations if needed
# COPY conf.d/ /etc/dd-agent/conf.d/

# Set environment variables
# ENV DD_APM_ENABLED=true
# ENV DD_LOGS_ENABLED=true
# ENV DD_PROCESS_AGENT_ENABLED=true

ENV DD_AUTOCONFIG_FROM_ENVIRONMENT=false

# APM activé
ENV DD_APM_ENABLED=true
ENV DD_APM_NON_LOCAL_TRAFFIC=true
ENV DD_BIND_HOST=0.0.0.0

# Désactiver DogStatsD (pas besoin pour APM)
ENV DD_USE_DOGSTATSD=false

# Désactiver le reste
ENV DD_LOGS_ENABLED=false
ENV DD_PROCESS_AGENT_ENABLED=false
ENV DD_SYSTEM_PROBE_ENABLED=false

ENV DD_BIND_HOST=$RENDER_SERVICE_NAME
ENV DD_HOSTNAME=$RENDER_SERVICE_NAME