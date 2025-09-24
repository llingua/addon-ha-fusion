#!/usr/bin/with-contenv bashio

# Get user configuration
LOG_LEVEL=$(bashio::config 'log_level' 'info')

# Set environment variables
export HASS_PORT=$(bashio::core.port)
export EXPOSED_PORT=$(bashio::addon.port "8099/tcp")
export LOG_LEVEL="${LOG_LEVEL}"

# Display configuration info
bashio::log.info "HA Fusion Custom (Stable) starting..."
bashio::log.info "Branch: main (stable)"
bashio::log.info "Log Level: ${LOG_LEVEL}"
bashio::log.info "Home Assistant Port: ${HASS_PORT}"
bashio::log.info "📦 Stable Build - Main branch"

node server.js
