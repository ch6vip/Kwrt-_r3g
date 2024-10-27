#### 一分钟在线编译定制专属固件: [openwrt.ai](https://openwrt.ai)

#### 环境变量:
1. **REPO_TOKEN**: 用于访问代码仓库的令牌，可能涉及Git操作或API访问权限。
2. **PPPOE_USERNAME** & **PPPOE_PASSWD**: 用于拨号上网（PPPoE）的用户名和密码，可能用于与ISP建立网络连接。
3. **SCKEY**: 这可能是一个用于某种服务的密钥，例如推送通知或Webhook。
4. **TELEGRAM_TOKEN** & **TELEGRAM_CHAT_ID**: 用于与Telegram Bot通信的令牌和目标聊天ID，可能用于发送消息通知。
5. **SSH_PRIVATE_KEY**: 用于SSH连接的私钥，允许安全远程访问服务器或其他设备。
6. **DOCKER_ID** & **DOCKER_PASSWD**: 用于Docker Hub的用户名和密码，可能用于拉取或推送Docker镜像。
7. **TZ**: 设置时区为"Asia/Shanghai"，确保应用程序在正确的时区运行。

[1]: https://img.shields.io/badge/license-GPLV2-brightgreen.svg
[2]: /LICENSE
[3]: https://img.shields.io/badge/PRs-welcome-brightgreen.svg
[4]: https://github.com/kiddin9/OpenWrt_x86-r2s-r4s/pulls
[5]: https://img.shields.io/badge/Issues-welcome-brightgreen.svg
[6]: https://github.com/kiddin9/OpenWrt_x86-r2s-r4s/issues/new
[7]: https://img.shields.io/github/v/release/hyird/Action-Openwrt
[8]: https://github.com/kiddin9/OpenWrt_x86-r2s-r4s/releases
[10]: https://img.shields.io/badge/Contact-telegram-blue
[11]: https://t.me/opwrt
[12]: https://github.com/kiddin9/OpenWrt_x86-r2s-r4s/actions/workflows/Openwrt-AutoBuild.yml/badge.svg
[13]: https://github.com/kiddin9/OpenWrt_x86-r2s-r4s/actions

[![license][1]][2]
[![GitHub Stars](https://img.shields.io/github/stars/kiddin9/OpenWrt_x86-r2s-r4s.svg?style=flat-square&label=Stars)](https://github.com/kiddin9/OpenWrt_x86-r2s-r4s/stargazers)
[![GitHub Forks](https://img.shields.io/github/forks/kiddin9/OpenWrt_x86-r2s-r4s.svg?style=flat-square&label=Forks)](https://github.com/kiddin9/OpenWrt_x86-r2s-r4s/fork)
[![PRs Welcome][3]][4]
[![Issue Welcome][5]][6]
[![AutoBuild][12]][13]

### **在线生成**

通过浏览器访问[https://openwrt.ai](https://openwrt.ai)进行固件定制，等待固件生成结束之后直接下载使用即可。

### **后台**

+ 登录地址 op/ 或 10.0.0.1 (若后台无法打开，请尝试插拔交换wan、lan网线顺序。)

+ 默认用户 root

+ 默认密码 root

##  **注意事项**

+ 第一次使用请采用全新安装,避免出现升级失败以及其他一些可能的Bug.

+ 云编译需要 [在此](https://github.com/settings/tokens) 创建个token,然后在此仓库Settings->Secrets中添加个名字为REPO_TOKEN的Secret,填入token值,否者无法触发编译。

+ 在仓库Settings->Secrets中分别添加 PPPOE_USERNAME, PPPOE_PASSWD 可设置默认拨号账号密码.有 [安全隐患](https://github.com/kiddin9/OpenWrt_x86-r2s-r4s/issues/23)。

+ 在仓库Settings->Secrets中添加 SCKEY 可通过[Server酱](http://sc.ftqq.com) 推送编译结果到微信。

+ 在仓库Settings->Secrets中添加 TELEGRAM_CHAT_ID, TELEGRAM_TOKEN 可推送编译结果到Telegram Bot. [教程](https://longnight.github.io/2018/12/12/Telegram-Bot-notifications)

+ DIY云编译教程参考: [Read the details in my blog (in Chinese) | 中文教程](https://p3terx.com/archives/build-openwrt-with-github-actions.html)


+ 默认插件包含: Opkg 软件包管理、Bypass 智能过墙、Samba4 文件共享(x86)、UPNP 自动端口转发、Turbo ACC 网络加速。
其他插件请自行在 后台->软件包 中安装,系统升级不会丢失插件.每次系统升级完成连接网络后,会自动安装所有已自选安装的插件。

## 5. **系统截图展示**
![](https://github.com/kiddin9/luci-theme-edge/raw/master/Screenshots/1.png)
![](https://github.com/kiddin9/luci-theme-edge/raw/master/Screenshots/3.png)
![](https://github.com/kiddin9/luci-theme-edge/raw/master/Screenshots/8.png)


------
For English

Build OpenWrt using GitHub Actions

## Usage

- Sign up for [GitHub Actions](https://github.com/features/actions/signup)
- Fork [this GitHub repository](https://github.com/kiddin9/OpenWrt)
- click the `Star` button, and the build will starts automatically.Progress can be viewed on the Actions page.
- When the build is complete, click the `Artifacts` button in the upper right corner of the Actions page to download the binaries.


## Acknowledgments

#### Rockchip的Kernel等部分源码来源 https://github.com/coolsnowwolf/lede
#### ipq807x的Kernel等部分源码来源 https://github.com/Boos4721/openwrt
#### ipq60xx的Kernel等部分源码来源 https://github.com/coolsnowwolf/openwrt-gl-ax1800

- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [ImmortalWrt](https://github.com/immortalwrt/immortalwrt)
- [unifreq](https://github.com/unifreq/openwrt_packit)
- [ophub](https://github.com/ophub/amlogic-s9xxx-openwrt)
- [P3TERX](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
- [aparcar](https://github.com/openwrt/asu)
- [GitHub](https://github.com)
- [GitHub Actions](https://github.com/features/actions)


