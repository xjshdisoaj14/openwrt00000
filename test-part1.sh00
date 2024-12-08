#!/bin/bash

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git' ./feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
echo 'src-git opentopd  https://github.com/sirpdboy/sirpdboy-package' >>feeds.conf.default
sed -i '$a src-git openwrtpackages https://github.com/kenzok8/openwrt-packages.git' ./feeds.conf.default

### 插件报错修复
# 翻墙Psswall&SSRP插件防炸上游备份-sbwml / kenzo-small的备用
# 移除 openwrt feeds 自带的核心包
# rm -rf feeds/packages/net/{xray-core,v2ray-core,v2ray-geodata,sing-box}
# git clone https://github.com/sbwml/openwrt_helloworld package/helloworld
# 更新 golang 1.22 版本
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang
#kenzo 库冲突大佬处理1_https://github.com/kenzok8/small/issues/148
# ./scripts/feeds update -a && rm -rf feeds/luci/applications/luci-app-mosdns && rm -rf feeds/packages/net/{alist,adguardhome,mosdns,smartdns}
# rm -rf feeds/packages/lang/golang
# git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
#kenzo 库冲突大佬处理2_https://github.com/kenzok8/small-package
rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb}
rm -rf package/feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb}
#kenzo 库syncthing报错 20241107换源
#rm -rf feeds/smpackage/luci-app-syncthing
#git clone https://github.com/Turing-China/luci-app-syncthing feeds/smpackage/luci-app-syncthing
# 20241120 miniupnpd报错
# rm -rf package/feeds/packages/{miniupnpd,miniupnpd-iptables}
#package/feeds/smpackage/luci-app-godproxy failed to build.
rm -rf feeds/smpackage/luci-app-godproxy
rm -rf package/feeds/smpackage/luci-app-godproxy

##############################################################################################
