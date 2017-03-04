---
id: 102
title: Belkin 802.11g Wireless G+ USB Adapter Driver Problems
date: 2009-06-11T21:28:16+00:00
author: admin
layout: post
guid: http://www.devotedit.com/2009/06/11/belkin-80211g-wireless-g-usb-adapter-driver-problems/
permalink: /2009/06/11/belkin-80211g-wireless-g-usb-adapter-driver-problems/
aktt_notify_twitter:
  - 'no'
categories:
  - Hardware
tags:
  - belkin
  - drivers
  - F5D7051
  - wireless
---
I was fixing a machine with the Belkin 802.11g &#8211; 125 HSM Wireless G+ USB Adapter.

They were experiencing some kind of connection issue.

<!--more-->

I eventually discovered that the issue was with the USB ports not the software, however in testing this I had removed the original drivers and downloaded the latest from the Belkin website.

When you plug in the device its detected as &#8220;802.11b/g LP/SC USBeless Adapter&#8221;.

On the back of the device it says &#8220;model no. F5D7051 P10650-C&#8221;, so I downloaded f5d7051.exe from the Belkin website.

I noticed that this installed to the path:
  
&#8220;C:\Program Files\Belkin\F5D7051\&#8221;

Where as the original driver was installed to:
  
&#8220;C:\Program Files\Belkin\F5D7051v3\&#8221;

After speaking to someone at Belkin, I discovered that they were going to be no help with this at all.

I had to find the original driver disc as they couldn't be found online and the latest drivers were useless.

Anyway, I got it and for those that want it, I kindly uploaded the drivers here:

[Belkin_F5D7051v3.zip](http://www.megaupload.com/?d=CNY29KG1)

Enjoy!