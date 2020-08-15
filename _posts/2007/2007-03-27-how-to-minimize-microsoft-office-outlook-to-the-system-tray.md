---
id: 108
title: How to Minimize Microsoft Office Outlook to the System Tray
date: 2007-03-27T01:07:35+00:00
author: admin

guid: /how-to-minimize-microsoft-office-outlook-to-the-system-tray
permalink: /how-to-minimize-microsoft-office-outlook-to-the-system-tray/
categories:
  - Sysadmin
---
<p class="lead">
  Open your registry and find or create the key below.
</p>

Create a new DWORD value, or modify the existing value, called &#8220;MinToTray&#8221; and set it according to the value data below.

Exit your registry, you may need to restart or log out of Windows for the change to take effect.

Registry Settings
  
User Key: [HKEY\_CURRENT\_USER\Software\Microsoft\Office\10.0\Outlook\Preferences]
  
Value Name: MinToTray
  
Data Type: REG_DWORD (DWORD Value)
  
Value Data: (1 = System Tray, 0 = Taskbar)

<strike>outlook.txt</strike>