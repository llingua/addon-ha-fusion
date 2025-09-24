#!/usr/bin/with-contenv bashio

# Get user configuration
LOG_LEVEL=$(bashio::config 'log_level' 'info')

# Set environment variables
export HASS_PORT=$(bashio::core.port)
export EXPOSED_PORT=$(bashio::addon.port "8090/tcp")
export LOG_LEVEL="${LOG_LEVEL}"

# Display configuration info
bashio::log.info "🏠 HA Fusion Custom (Stable) starting..."
bashio::log.info "Branch: main (stable)"
bashio::log.info "Port: 8090 (unique to avoid conflicts)"
bashio::log.info "Data prefix: ha-fusion-custom"
bashio::log.info "Log Level: ${LOG_LEVEL}"
bashio::log.info "Home Assistant Port: ${HASS_PORT}"
bashio::log.info "📦 Stable Build - Main branch"
bashio::log.info "✅ Safe to run alongside other ha-fusion installations"

node server.js
