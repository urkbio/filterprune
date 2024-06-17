#!/bin/bash

# 定义输入和输出文件
input_file="hosts"
output_file="/opt/1panel/apps/adguardhome/adguardhome/data/conf/hosts.txt"

# 检查输入文件是否存在
if [[ ! -f "$input_file" ]]; then
    echo "Input file '$input_file' not found!"
    exit 1
fi

# 清空输出文件
> "$output_file"

# 读取hosts文件并转换格式
while read -r line; do
    # 跳过注释和空行
    if [[ "$line" =~ ^# ]] || [[ -z "$line" ]]; then
        continue
    fi

    # 提取IP地址和域名
    ip_address=$(echo "$line" | awk '{print $1}')
    domain_name=$(echo "$line" | awk '{print $2}')

    # 输出到文件
    echo "||$domain_name^\$dnsrewrite=$ip_address" >> "$output_file"
done < "$input_file"

echo "Conversion complete. Output saved to '$output_file'."

