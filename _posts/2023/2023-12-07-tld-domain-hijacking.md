---
title: "The Wild World of NXDOMAIN Hijacking in 2023: Wildcard DNS in Action"
published: true
date: 2023-12-07
tags: [ dns, domains, internet, security ]
---

When you type a web address into your browser, you expect to land on the website you intended—or get an error if the
site doesn't exist. This error, an NXDOMAIN (non-existent domain) response, is a standard part of the internet’s
infrastructure. But what if, instead of an error, you ended up on a page filled with ads or a generic placeholder?

Welcome to the world of **wildcard DNS** and **NXDOMAIN hijacking**, a practice where certain top-level domains (TLDs)
override the usual "domain not found" response and redirect you to a predetermined IP address. This article dives into
the current state of this practice in 2023, using examples from TLDs like `.ws`, `.vg`, and `.ph`.

#### **What is Wildcard DNS?**

Wildcard DNS allows non-existent domain names to resolve to a specific IP address, typically for serving ads or
placeholders. Instead of the expected NXDOMAIN error, you get redirected, and sometimes, this leads to monetized pages.

For example:

```shell
% host notregistered.ws
notregistered.ws has address 64.70.19.203
notregistered.ws mail is handled by 1 mail.hope-mail.com.
```

This behavior is present in various TLDs, and in 2023, we’ve found it still happening in `.ws`, `.vg`, and `.ph`.

#### **NXDOMAIN Hijacking and Wildcard DNS Today**

In earlier years, some prominent registries, like VeriSign, experimented with NXDOMAIN hijacking for `.com` and `.net`
using a service called [Site Finder](https://en.wikipedia.org/wiki/Site_Finder). Users and developers were not thrilled.
ICANN eventually stepped in, and the practice was halted, at least for these major domains. However, it continues under
smaller or more niche TLDs.

Here are some real-world examples from 2023:

- **`.ws` (Samoa)**:  
  Non-existent domains in the `.ws` TLD (like `doesnotexist.ws`) resolve to `64.70.19.203`, a generic IP. This is a
  clear case of wildcard DNS in action.

- **`.vg` (British Virgin Islands)**:  
  Similarly, domains that don’t exist under `.vg` resolve to `88.198.29.97`.

- **`.ph` (Philippines)**:  
  The `.ph` TLD uses wildcard DNS, redirecting to `45.79.222.138` for unregistered domains.

You can test this behavior yourself by trying to query non-existent domains using tools like `host` or `ping`. Here’s an
example query for `.ph`:

```shell
% host notregistered.ph
notregistered.ph has address 45.79.222.138
```

#### **Internationalized TLDs and Wildcards**

The use of wildcard DNS isn’t limited to the Latin script TLDs. Internationalized domain names (IDNs) also engage in
this practice:

- **`.中国`** (China, in Pinyin: `.xn--fiqs8s`)  
  Wildcard domains here resolve to `218.241.105.10`, a host linked to `ibaidu.com`—a site that Google Chrome flags as
  unsafe.

- **`.გე`** (Georgia, `.xn--node`)  
  The wildcard domain for this TLD resolves to `188.93.95.11`, directing users to a generic page under the `.ge` country
  code.

#### **Why Does This Matter?**

While this behavior may seem like a clever way for registries to monetize unregistered domains, it comes with
significant downsides:

1. **Breaking the Internet’s Error Handling**: Many apps and services rely on NXDOMAIN errors to trigger specific
   behaviors. Wildcard DNS disrupts this, sometimes leading to broken applications.
2. **Email Issues**: Spam filtering and email validation depend on accurate DNS responses. Wildcard DNS can cause
   misrouted emails or fail to block unwanted spam.
3. **Security Concerns**: Redirecting users to unfamiliar or potentially malicious content raises significant trust and
   security issues. When a user expects a 404 error and lands on a page filled with ads, their browsing experience is
   compromised.

#### **The Future of Wildcard DNS**

As of 2023, while many major TLDs have abandoned wildcard DNS after pressure from ICANN and the internet community,
smaller TLDs like `.ws`, `.vg`, and `.ph` continue to use this practice. It remains to be seen whether this behavior
will be further regulated or if these domains will keep exploiting the wildcard DNS loophole.

In a world where the reliability of DNS is crucial, the persistence of wildcard DNS and NXDOMAIN hijacking is a
fascinating—if sometimes frustrating—phenomenon.

To append your findings as an edit to the existing 2023 article, here’s a markdown snippet to use at the bottom of the
article on your Jekyll site:

## 2024 Edit

As of 2024, further investigation into wildcard DNS behavior reveals that several TLDs continue to utilise wildcard
records. My latest findings return the following wildcard resolutions for unregistered domains:

 tld          | ip            
--------------|---------------
 `.arab`      | 127.0.53.53   
 `.ph`        | 45.79.222.138 
 `.vg`        | 88.198.29.97  
 `.ws`        | 64.70.19.203  
 `.xn--ngbrx` | 127.0.53.53   
 `.xn--node`  | 188.93.95.11  

It’s worth noting that the IP address `127.0.53.53` is a special address designated by the ICANN **Name Collision
Occurrence Management Framework**, approved on 1 August 2014, to alert system administrators of potential issues related
to name collisions. This mechanism is intended to help mitigate risks associated with unintended DNS resolutions and
guide administrators towards corrective actions.

## Also see

* [ICANN Approves Name Collision Occurrence Management Framework | Special IP Address (127.0.53.53) Alerts System Administrators of Potential Issue](https://www.icann.org/en/announcements/details/icann-approves-name-collision-occurrence-management-framework--special-ip-address-12705353-alerts-system-administrators-of-potential-issue-1-8-2014-en)
* [Wildcard DNS](https://en.wikipedia.org/wiki/Wildcard_DNS)
* [NXDOMAIN](https://en.wikipedia.org/wiki/NXDOMAIN)
* [Site Finder](https://en.wikipedia.org/wiki/Site_Finder)
 