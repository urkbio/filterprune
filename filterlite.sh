#!/bin/bash

# 定义输入文件和关键字文件
input_file="adgh.txt"
keywords_file="keywords.txt"
output_file="/opt/1panel/apps/adguardhome/adguardhome/data/conf/adghlite.txt"

# 检查输入文件和关键字文件是否存在
if [[ ! -f "$input_file" || ! -f "$keywords_file" ]]; then
    echo "Input file or keywords file not found!"
    exit 1
fi

# 读取关键字到数组
mapfile -t keywords < "$keywords_file"

# 构建grep正则表达式
pattern=$(IFS='|'; echo "${keywords[*]}")

# 使用grep过滤掉包含关键字的行并输出到新文件
grep -Ev "$pattern" "$input_file" > "$output_file"

echo "Filtered content saved to '$output_file'."

