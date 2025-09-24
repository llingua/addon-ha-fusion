#!/usr/bin/with-contenv bashio

# Get user configuration
BRANCH=$(bashio::config 'branch' 'main')
LOG_LEVEL=$(bashio::config 'log_level' 'info')

# Set environment variables
export HASS_PORT=$(bashio::core.port)
export EXPOSED_PORT=$(bashio::addon.port "8099/tcp")
export LOG_LEVEL="${LOG_LEVEL}"

# Display configuration info
bashio::log.info "HA Fusion Custom starting..."
bashio::log.info "Branch: ${BRANCH}"
bashio::log.info "Log Level: ${LOG_LEVEL}"
bashio::log.info "Home Assistant Port: ${HASS_PORT}"

# Note: Branch selection happens at build time through Dockerfile ARG
# This script shows which branch was built, but cannot rebuild at runtime
if [[ "${BRANCH}" == "develop" ]]; then
    bashio::log.notice "🔧 Development Build - Includes Universal Bar Component"
    bashio::log.notice "🚀 Latest features from develop branch"
else
    bashio::log.info "📦 Stable Build - Main branch"
fi

node server.js
