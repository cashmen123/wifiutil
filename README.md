# wifiutil

<!-- BADGES -->
<!--span class="badge-paypal"><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=X3KS6KJP63MG4" title="Donate to this project using Paypal"><img src="https://img.shields.io/badge/paypal-donate-yellow.svg" alt="PayPal donate button" /></a></span-->

<!-- DESCRIPTION -->
iOS command-line tool for WiFi-related operation.

# Installation
<ul>
<li>Search <code>wifiutil</code> in the Cydia on your jailbroken iOS device.</li>
<li>Install and access it using MobileTerminal or remote SSH.</li>
</ul>

# Usage
<ul>
<li>To enable wifi on iphone: <code>wifiutil enable-wifi</code></li>
<li>To disable wifi on iphone: <code>wifiutil disable-wifi</code></li>
<li>To scan available wifi hotspot: <code>wifiutil scan</code></li>
<li>To associate with wifi hotspot named {ssid}: <code>wifiutil associate {ssid}</code></li>
<li>To associate with wifi hotspot named {ssid} and with password {passwd}: <code>wifiutil associate {ssid} -p {passwd}</code></li>
<li>To disassociate with current wifi network: <code>wifiutil disassociate</code></li>
<li>To ping an ip address: <code>wifiutil ping {ip}</code></li>
</ul>

# License
Licensed under:
<ul><li><a href="http://spdx.org/licenses/MIT.html">MIT License</a></li></ul>

# see also
>*  [采用MobileWiFi.framework实现 的背景](https://zhangkn.github.io/2018/04/SBWiFiManager/)

```
 实现Associate to wifi的，在iOS 版本10 之后，就比较困难，因为苹果将SBWiFiManager 的joinNetwork：password： 移除掉； 且在iOS10 中SBWiFiManager 的t_manager、t_device、t_currentNetwork 均采用 struct存储，提高了安全性。

 因此要实现自动 Associate to wifi 的话，我从hopper 中看到sb 中使用WiFiManagerClientCreate() 实现连接Wi-Fi,因此就才想到使用MobileWiFi.framework 实现是最佳的捷径
```

