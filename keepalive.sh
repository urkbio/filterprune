#!/bin/bash

# 检查一个systemd服务是否运行，如果不是则重启服务
# 要检查的服务名称
SERVICE_NAME="mosdns.service"

# 检查服务是否为active状态
if systemctl is-active --quiet $SERVICE_NAME; then
    echo "$SERVICE_NAME is running."
else
    echo "$SERVICE_NAME is not running. Restarting..."
    systemctl restart $SERVICE_NAME
    
    # 检查服务是否重新启动成功
    if systemctl is-active --quiet $SERVICE_NAME; then
        echo "$SERVICE_NAME has been restarted successfully."
    else
        echo "Failed to restart $SERVICE_NAME."
    fi
fi
