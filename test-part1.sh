
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
