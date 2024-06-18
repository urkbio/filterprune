rm ./adgh.txt
wget https://ghproxy.net/https://raw.githubusercontent.com/urkbio/AdGuard-Rule/main/rule/adgh.txt

# 拉取加速规则，以下两个任选，更多请看源项目首页
# Github520 https://github.com/521xueweihan/GitHub520
#wget https://raw.hellogithub.com/hosts
# SteamHostSync https://github.com/Clov614/SteamHostSync
wget https://raw.sevencdn.com/Clov614/SteamHostSync/main/Hosts

# 从合并的黑名单中剔除关键字匹配的内容
bash filterlite.sh
# 将host格式转为adgh支持的rewrite格式
bash host2adgh.sh
