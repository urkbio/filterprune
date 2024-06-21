# filterprune

- 用于从adgh过滤规则中剔除特定关键字 filterlite.sh
- 将host文件格式转为adgh的rewrite格式 host2adgh.sh

默认配置为拉取我合并的一个adgh规则，执行剔除。拉取hellogithub的github加速host规则，转成adgh支持的格式。默认使用[SteamHostSync](https://github.com/Clov614/SteamHostSync)这个host规则。
注意拉取的文件名和脚本的input_file文件名需一致。

使用方法：拉取本仓库，按需改shell脚本中的文件名或链接，定时cd到这个文件夹执行exec.sh。因为我是用1panel，所以很容易添加定时任务，默认的输出目录也是1panel商店安装的AdGuard Home的conf文件夹，这个也按需修改即可。

---
### 还有一些实用小脚本

keepalive.sh 检查一个systemd服务是否为active，如果不是就restart，适合定期运行。

domain.sh 将一行一个域名的列表转换为[/domain1.com/domain2.com/domain3.com/]这种形式，适用于adgh。

---
脚本用chatGPT协助编写

---
<div align='center'><a href='https://www.websitecounterfree.com'><img src='https://www.websitecounterfree.com/c.php?d=9&id=55468&s=40' border='0' alt='Free Website Counter'></a><br / ><small><a href='https://www.websitecounterfree.com' title="Free Website Counter">Free Website Counter</a></small></div>



