#!/bin/sh

KOC_SERVER_FILE_ROOT_PATH=/data
KOC_SERVER_FILE_PATH=$KOC_SERVER_FILE_ROOT_PATH/KnockoutCityServer

echo ""
echo "--------------------------------------------------------"
echo "KnockoutCity Server Max Player Connections: $KOC_BACKEND_MAX_PLAYER_CONNECTIONS"
echo "KnockoutCity Server Backend Port: $KOC_BACKEND_PORT"
echo "KnockoutCity Server Port Range: $KOC_SERVER_MIN_PORT - $KOC_SERVER_MAX_PORT"
echo ""
echo "KnockoutCity Server Backend DB: $KOC_BACKEND_DB"
echo "KnockoutCity Server Backend Redis Host: $KOC_BACKEND_REDIS_DB_HOST"
echo "KnockoutCity Server Backend Redis Port: $KOC_BACKEND_REDIS_DB_PORT"
echo "--------------------------------------------------------"
echo ""

cd $KOC_SERVER_FILE_PATH || exit 1

echo "Starting Server..."
wine64 KnockoutCityServer.exe \
  -backend_port="${KOC_BACKEND_PORT:-23600}" \
  -server_min_port="${KOC_SERVER_MIN_PORT:-23600}" \
  -server_max_port="${KOC_SERVER_MAX_PORT:-23699}" \
  -secret="${KOC_SECRET}" \
  -backend_db="${KOC_BACKEND_DB}" \
  -backend_redis_db_host="${KOC_BACKEND_REDIS_DB_HOST}" \
  -backend_redis_db_port="${KOC_BACKEND_REDIS_DB_PORT:-6379}" \
  -backend_tunable_user_connections_max_per_backend="${KOC_BACKEND_MAX_PLAYER_CONNECTIONS:-10}"
