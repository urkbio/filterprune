#!/bin/bash

# 输入文件
input_file="domains.txt"
# 输出文件
output_file="output.txt"

# 读取文件内容，并用空格替换换行符
domains=$(tr '\n' ' ' < "$input_file")

# 去掉最后的空格，并将空格替换为/
domains=$(echo $domains | sed 's/ $//' | tr ' ' '/')

# 输出结果到文件
echo "[/$domains/]" > "$output_file"
