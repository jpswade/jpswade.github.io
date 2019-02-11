---
id: 205
title: What is a valid email address?
date: 2008-06-03T16:31:12+00:00
author: admin
layout: post
guid: http://wade.be/?p=205
permalink: /what-is-a-valid-email-address/
aktt_notify_twitter:
  - yes
openid_comments:
  - 'a:1:{i:0;s:6:"236917";}'
categories:
  - Development
tags:
  - email address
  - validation
  - verification
---
<p class="lead">
  With the on-going abuse to email based systems, we are in need of ways to validate the email addresses we're handling.
</p>

We all know what an email address looks like, we see them and use them every single day. But how do you know if it's valid or not? The next obvious question should be, what defines a valid email address?

This is what I intend on investigating.

<!--more-->

Before you begin, I would like you make you aware of the difference between validation and verification, which is as follows:

> Validation is a check to ensure it is true to the specification (eg: is the number N digits long?). Not to be confused with verification which is a check to ensure it is correct within the intended system (eg: does the number work when phoned?).

A good starting point for anyone to investigating what anything is, is Wikipedia. So, as to make this easy to follow, that's where we're going to start, by looking at the &#8220;[E-mail address](http://en.wikipedia.org/wiki/E-mail_address)&#8221; article.

As you read the article, you'll soon find out about the limitations and validation (not to be confused with [authentication](http://en.wikipedia.org/wiki/E-mail_authentication)) set by the [RFCs](http://en.wikipedia.org/wiki/Request_for_Comments). The earliest RFC with regards to email was [[RFC822](http://tools.ietf.org/html/rfc822)], which was made obsolete by [[RFC2822](http://tools.ietf.org/html/rfc2822)]. There are other RFCs you should perhaps also pay attention to which are listed in the article, however I intend on going over these later.

To fully understand how to find out what a valid email address is, we need to fully understand what an RFC is and why we need them.

An RFC (request for comments) essentially is a way in which internet developers can set standards and protocols. The RFCs we need to be focusing on are the ones relating to email, as they will tell us exactly what defines an email address as an email address. Thus in order for us to fully understand what defines an email as valid, we MUST read the RFCs.

RFCs however, aren't easy, they are written what appears to be a mystical language, that looks like English, but it isn't. Okay, so maybe it's not that bad, but it isn't exactly a straight forward task to translate it into &#8220;Plain English&#8221;.

After reading [I Knew How To Validate An Email Address Until I Read The RFC](http://haacked.com/archive/2007/08/21/i-knew-how-to-validate-an-email-address-until-i.aspx) and [Paul Gregg's Demonstrating why email regexs are poor](http://www.pgregg.com/projects/php/code/showvalidemail.php), I knew this wasn't going to be easy.

To utilise the specification written in the RFC, we need to convert it into a usable language. In this case we will be using regular expressions within PHP. This article assumes you understand PHP and regular expressions, or will at least try&#8230;

And so I decided to start translating [[RFC2822](http://tools.ietf.org/html/rfc2822)] into PHP based regular expressions.

The RFC often provides binary encoded US-ASCII characters and standard characters, in most cases I will translate them to hexadecimal encoding using [chr()](http://www.php.net/chr), [orc()](http://www.php.net/ord) and [dechex()](http://www.php.net/dechex) (eg: %d109 -> chr(109) -> m -> orc(m) -> 109 -> dechex(109) -> \\x6D).

_Note: The PHP code here is for display purposes only, it may not actually work due to the changes wordpress makes to the formatting (in particular to the double quotes), if you require the proper code, it is available on request._

> FROM: General Description [[RFC2822 Section 2.1](http://tools.ietf.org/html/rfc2822#section-2.1)]
  
> Messages are divided into lines of characters. A line is a series of
  
> characters that is delimited with the two characters carriage-return
  
> and line-feed; that is, the carriage return (CR) character (ASCII
  
> value 13) followed immediately by the line feed (LF) character (ASCII
  
> value 10). (The carriage-return/line-feed pair is usually written in
  
> this document as &#8220;CRLF&#8221;.)

$CR = &#8220;\\x0d&#8221;;
  
$LF = &#8220;\\x0a&#8221;;
  
$CRLF = &#8220;(?:$CR$LF)&#8221;;

> FROM: Primative Tokens [[RFC2822 Section 3.2.1](http://tools.ietf.org/html/rfc2822#section-3.2.1)]
> 
> The following are primitive tokens referred to elsewhere in this
  
> standard, but not otherwise defined in [http://tools.ietf.org/html/rfc2234 RFC2234]. Some of them will
  
> not appear anywhere else in the syntax, but they are convenient to
  
> refer to in other parts of this document.
> 
> NO-WS-CTL = %d1-8 / ; US-ASCII control characters
  
> %d11 / ; that do not include the
  
> %d12 / ; carriage return, line feed,
  
> %d14-31 / ; and white space characters
  
> %d127
  
> text = %d1-9 / ; Characters excluding CR and LF
  
> %d11 /
  
> %d12 /
  
> %d14-127 /
  
> obs-text
  
> specials = &#8220;(&#8221; / &#8220;)&#8221; / ; Special characters used in
  
> &#8220;<&#8221; / &#8220;>&#8221; / ; other parts of the syntax
  
> &#8220;[&#8221; / &#8220;]&#8221; /
  
> &#8220;:&#8221; / &#8220;;&#8221; /
  
> &#8220;@&#8221; / &#8220;\&#8221; /
  
> &#8220;,&#8221; / &#8220;.&#8221; /
  
> DQUOTE
> 
> No special semantics are attached to these tokens. They are simply
  
> single characters.

$NO\_WS\_CTL = &#8220;[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x7f]&#8221;;
  
$text = &#8220;[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f]&#8221;;
  
$DQUOTE = &#8220;\\x22&#8221;;
  
$specials = &#8220;[\\x28\\x29\\x3c\\x3e\\x5b\\x5d\\x3a\\x3b\\x40\\x5c\\x2c\\x2e$DQUOTE]&#8221;;

> FROM: Miscellaneous obsolete tokens [[RFC2822 Section 4.1](http://tools.ietf.org/html/rfc2822#section-4.1)]
  
> obs-qp = &#8220;\&#8221; (%d0-127)
  
> obs-text = \*LF \*CR \*(obs-char \*LF *CR)
  
> obs-char = %d0-9 / %d11 / ; %d0-127 except CR and
  
> %d12 / %d14-127 ; LF

$obs_qp = &#8220;(?:\\x5c[\\x00-\\x7f])&#8221;;
  
$obs_char = &#8220;[\\x00-\\x09\\x0b\\x0c\\x0e-\\x7f]&#8221;;
  
$obs\_text = &#8220;(?:$LF\*$CR\*(?:$obs\_char$LF\*$CR\*)*)&#8221;;

> FROM: Structured Header Field Bodies [[RFC2822 Section 2.2.2](http://tools.ietf.org/html/rfc2822#section-2.2.2)]
  
> the space (SP, ASCII value 32) and horizontal tab (HTAB, ASCII value 9) characters
  
> (together known as the white space characters, WSP)

$WSP = &#8220;[\\x20\\x09]&#8221;;

> FROM: Obsolete folding white space [[RFC2822 Section 4.2](http://tools.ietf.org/html/rfc2822#section-4.2)]
  
> obs-FWS = 1\*WSP \*(CRLF 1*WSP)

$obs_FWS = &#8220;(?:$WSP+(?:$CRLF$WSP+)*)&#8221;;

> FROM: Quoted characters [[RFC2822 Section 3.2.2](http://tools.ietf.org/html/rfc2822#section-3.2.2)]
  
> quoted-pair = (&#8220;\&#8221; text) / obs-qp

$quoted\_pair = &#8220;(?:\\x5c$text|$obs\_qp)&#8221;;

> FROM: Folding white space and comments [[RFC2822 Section 3.2.3](http://tools.ietf.org/html/rfc2822#section-3.2.3)]
  
> FWS = ([\*WSP CRLF] 1\*WSP) / ; Folding white space
  
> obs-FWS
  
> ctext = NO-WS-CTL / ; Non white space controls
> 
> %d33-39 / ; The rest of the US-ASCII
  
> %d42-91 / ; characters not including &#8220;(&#8220;,
  
> %d93-126 ; &#8220;)&#8221;, or &#8220;\&#8221;
  
> ccontent = ctext / quoted-pair / comment
  
> comment = &#8220;(&#8221; *([FWS] ccontent) [FWS] &#8220;)&#8221;
  
> CFWS = *([FWS] comment) (([FWS] comment) / FWS)

$FWS = &#8220;(?:(?:(?:$WSP\*$CRLF)?$WSP\*)|$obs_FWS)&#8221;;
  
$ctext = &#8220;(?:$NO\_WS\_CTL|[\\x21-\\x27\\x2A-\\x5b\\x5d-\\x7e])&#8221;;
  
$ccontent = &#8220;(?:$ctext|$quoted_pair)&#8221;;
  
/\* NOTICE: &#8216;ccontent' translated only partially to avoid an infinite loop. \*/
  
$comment = &#8220;(?:\\x28((?:$FWS?(?:$ccontent|(?1)))*$FWS?\\x29))&#8221;;
  
$CFWS = &#8220;((?:$FWS?$comment)*(?:(?:$FWS?$comment)|$FWS))&#8221;;

> FROM: Atom [[RFC2822 Section 3.2.4](http://tools.ietf.org/html/rfc2822#section-3.2.4)]
  
> atext = ALPHA / DIGIT / ; Any character except controls,
  
> &#8220;!&#8221; / &#8220;#&#8221; / ; SP, and specials.
  
> &#8220;$&#8221; / &#8220;%&#8221; / ; Used for atoms
  
> &#8220;&&#8221; / &#8220;&#8216;&#8221; /
  
> &#8220;*&#8221; / &#8220;+&#8221; /
  
> &#8220;-&#8221; / &#8220;/&#8221; /
  
> &#8220;=&#8221; / &#8220;?&#8221; /
  
> &#8220;^&#8221; / &#8220;_&#8221; /
  
> &#8220;\`&#8221; / &#8220;{&#8221; /
  
> &#8220;|&#8221; / &#8220;}&#8221; /
  
> &#8220;~&#8221;
  
> atom = [CFWS] 1*atext [CFWS]
  
> dot-atom = [CFWS] dot-atom-text [CFWS]
  
> dot-atom-text = 1\*atext \*(&#8220;.&#8221; 1*atext)

$ALPHA = &#8216;[\\x41-\\x5a\\x61-\\x7a]';
  
$DIGIT = &#8216;[\\x30-\\x39]';
  
$atext = &#8220;(?:$ALPHA|$DIGIT|[\\x21\\x23-\\x27\\x2a\\x2b\\x2d\\x2f\\x3d\\x3f\\x5e\\x5f\\x60\\x7b-\\x7e])&#8221;;
  
$atom = &#8220;(?:$CFWS?$atext+$CFWS?)&#8221;;
  
$dot\_atom\_text = &#8220;(?:$atext+(?:\\x2e$atext+)*)&#8221;;
  
$dot\_atom = &#8220;(?:$CFWS?$dot\_atom_text$CFWS?)&#8221;;

> FROM: Quoted strings [[RFC2822 Section 3.2.5](http://tools.ietf.org/html/rfc2822#section-3.2.5)]
  
> qtext = NO-WS-CTL / ; Non white space controls
> 
> %d33 / ; The rest of the US-ASCII
  
> %d35-91 / ; characters not including &#8220;\&#8221;
  
> %d93-126 ; or the quote character
  
> qcontent = qtext / quoted-pair
  
> quoted-string = [CFWS]
  
> DQUOTE *([FWS] qcontent) [FWS] DQUOTE
  
> [CFWS]

$qtext = &#8220;(?:$NO\_WS\_CTL|[\\x21\\x23-\\x5b\\x5d-\\x7e])&#8221;;
  
$qcontent = &#8220;(?:$qtext|$quoted_pair)&#8221;;
  
$quoted_string = &#8220;(?:$CFWS?\\x22(?:$FWS?$qcontent)*$FWS?\\x22$CFWS?)&#8221;;

> FROM: Miscellaneous tokens [[RFC2822 Section 3.2.6](http://tools.ietf.org/html/rfc2822#section-3.2.6)]
  
> word = atom / quoted-string

$word = &#8220;(?:$atom|$quoted_string)&#8221;;

> Obsolete Addressing [http://tools.ietf.org/html/rfc2822#section-4.4 RFC2822 Section 4.4]
  
> obs-local-part = word *(&#8220;.&#8221; word)
  
> obs-domain = atom *(&#8220;.&#8221; atom)

$obs\_local\_part = &#8220;(?:$word(?:\\x2e$word)*)&#8221;;
  
$obs_domain = &#8220;(?:$atom(?:\\x2e$atom)*)&#8221;;

> FROM: Addr-spec specification [[RFC2822 Section 3.4.1](http://tools.ietf.org/html/rfc2822#section-3.4.1)]
> 
> addr-spec = local-part &#8220;@&#8221; domain
  
> local-part = dot-atom / quoted-string / obs-local-part
  
> domain = dot-atom / domain-literal / obs-domain
  
> domain-literal = [CFWS] &#8220;[&#8221; *([FWS] dcontent) [FWS] &#8220;]&#8221; [CFWS]
  
> dcontent = dtext / quoted-pair
  
> dtext = NO-WS-CTL / ; Non white space controls
> 
> %d33-90 / ; The rest of the US-ASCII
  
> %d94-126 ; characters not including &#8220;[&#8220;,
  
> ; &#8220;]&#8221;, or &#8220;\&#8221;

$dtext = &#8220;(?:$NO\_WS\_CTL|[\\x21-\\x5a\\x5e-\\x7e])&#8221;;
  
$dcontent = &#8220;(?:$dtext|$quoted_pair)&#8221;;
  
$domain_literal = &#8220;(?:$CFWS?\\x5b(?:$FWS?$dcontent)*$FWS?\\x5d$CFWS?)&#8221;;
  
$local\_part = &#8220;(?:$dot\_atom|$quoted\_string|$obs\_local_part)&#8221;;
  
$domain = &#8220;(?:$dot\_atom|$domain\_literal|$obs_domain)&#8221;;
  
$addr\_spec = &#8220;($local\_part\\x40$domain)&#8221;;

There we have it, how to validate an email address according to [[RFC2822](http://tools.ietf.org/html/rfc2822)].

However, let's stop right there and reflect on what we have here. What we have is regular expression based on [[RFC2822](http://tools.ietf.org/html/rfc2822)] that must be correct, but does it work? are there any problems? Well yes, there are some problems&#8230;

  * The comments, and content of comments have an infinite loop due to possible nested comments.
  * It does not appear to validate folding white space where it should.
  * It does not correctly validate domain literals (IP addresses), they are simply not validated by [[RFC2822](http://tools.ietf.org/html/rfc2822)], which means that IP addresses that (under current protocol) are invalid (eg: 300.300.300.300) .
  * Domain names are not validated correctly either, IP addresses are allowed, when they shouldn't be, and certain characters are allowed in places they shouldn't, like dash (-) at the start or end of a domain name (eg: test@-example.com).
  * Length is no concern, email addresses can be as long as you like, much like the regex.
  * There are many more RFC's to investigate and translate before we can fully validate all parts of an email address.
  * The email address validation regular expression according to [[RFC2822](http://tools.ietf.org/html/rfc2822)] ALONE is almost 20,000 characters long, that's BEFORE we look into solving these other issues.

This is simply **unacceptable**.

Although there are fixes and workarounds, in the form of stripping, and further validation based on other RFCs I began to feel that this wasn't really suitable for validating real world email addresses.

Ultimately I feel that unless you're building an mail client or an mail server sticking so strictly to the RFC (especially [[RFC2822](http://tools.ietf.org/html/rfc2822)]) isn't always going to give you the best results, in real world situations.

Look around, email addresses in the real world aren't so strict and are far more loosely defined.

  * No folding white space (FWS) &#8211; I've never seen a multi-line email address field for a single address.
  * No comments (CFWS) &#8211; Comments simply do not belong in an email address, they can go else where.
  * No quotes &#8211; When was the last time you saw quoted text in an email address?
  * No IP addresses, domains only &#8211; They are only used in temporary circumstances, not live.
  * No new lines &#8211; they could result in &#8220;email header injection&#8221;.
  * Reasonable lengths &#8211; both parts, and the whole thing needs to be kept to a reasonable maximum length.
  * The domain part doesn't need to be so strict &#8211; We can easily verify it later using DNS.
  * TLDs need to be future proof &#8211; Don't restrict yourself to a set list. Don't forget about [IDN](http://idn.icann.org/).
  * Most RFCs are outdated, and unreliable &#8211; Remember they are technical documents for servers and clients, but not for real world situations.
  * Only need to validate real world email addresses &#8211; Don't be concerned with edge case test samples.

Hence forth, the rest of this article will concentrate on this &#8220;less strict&#8221; or &#8220;LOOSE&#8221; specification, defined by real world situations, rather than technical.

Upon going back to the drawing board I discovered [[RFC3696](http://www.apps.ietf.org/rfc/rfc3696.html)], written by the guy who wrote [[RFC2881](http://www.apps.ietf.org/rfc/rfc2881.html)] (SMTP). This will give us the basics of what is required for a valid email address.

[[RFC3696 Section 3](http://www.apps.ietf.org/rfc/rfc3696.html#sec-3)] entitled &#8220;Restrictions on email addresses&#8221; states:

> Contemporary email addresses consist of a &#8220;local part&#8221; separated from a &#8220;domain part&#8221; (a fully-qualified domain name) by an at-sign (&#8220;@&#8221;).

We'll look at the &#8220;local part&#8221; first.

First off, as above, we will be overlooking quoted forms.

> [[RFC3696 Section 3](http://www.apps.ietf.org/rfc/rfc3696.html#sec-3)]
> 
> &#8220;These quoted forms are rarely recommended, and are uncommon in practice&#8221;

We'll ignore anything about using quotes, &#8220;real world&#8221; email addresses don't contain quotes.

> [[RFC3696 Section 3](http://www.apps.ietf.org/rfc/rfc3696.html#sec-3)]
> 
> Without quotes, local-parts may consist of any combination of alphabetic characters, digits, or any of the special characters
> 
> <pre>! # $ % & ' * + - / = ?  ^ _ ` . { | } ~</pre>
> 
> period (&#8220;.&#8221;) may also appear, but may not be used to start or end the local part, nor may two or more consecutive periods appear.

&#8220;alphabetic characters&#8221; are &#8220;a-zA-Z&#8221;, digits are &#8220;0-9&#8221;, and special characters appear as above, in PHP based regex, the combination or &#8220;comb&#8221; for short, looks like this:

> $comb = &#8216;[a-zA-Z0-9!#$%&\'*+\/=?^\`{|}~.-]';

You'll notice that some of the special characters have backslashes (\) next to them, this is to &#8220;escape&#8221; them when being used as a regular expression, as they normally hold special meaning. Also the dash (-) symbol was moved to the end so that it did not act as &#8220;between&#8221;.

Putting this information together, including the bit about periods appearing in the middle, but never two together, that appears like this:

> $local_part = &#8220;($comb(?:\.$comb)?)+&#8221;;

That's the local part done. Now onto the domain part, which we'll base on [[RFC3696 Section 2](http://www.apps.ietf.org/rfc/rfc3696.html#sec-2)].

> the labels (words or strings separated by periods) that make up a domain name must consist of only the ASCII [ASCII] alphabetic and numeric characters, plus the hyphen. No other symbols or punctuation characters are permitted, nor is blank space. If the hyphen is used, it is not permitted to appear at either the beginning or end of a label. There is an additional rule that essentially requires that top-level domain names not be all- numeric.

> Most internet applications that reference other hosts or systems assume they will be supplied with &#8220;fully-qualified&#8221; domain names, i.e., ones that include all of the labels leading to the root, including the TLD name. Those fully-qualified domain names are then passed to either the domain name resolution protocol itself or to the remote systems. Consequently, purported DNS names to be used in applications and to locate resources generally must contain at least one period (&#8220;.&#8221;) character.
> 
> A DNS label may be no more than 63 octets long.

Although it doesn't say it as such in [RFC3696], we are on the understanding that periods cannot appear at the start or end of a domain name, but that is of course because periods are only used to &#8220;separate labels&#8221;.

When building this I had some issues to overcome&#8230;

  * DNS labels cannot start or end with a dash (-), however two or more are allowed together in a label.
  * TLDs cannot be &#8220;all numerics&#8221;, TLDs are generally all alphabetical, APART from IDN TLDs, which start with &#8220;xn--&#8220;, followed by a string of ASCII characters. This does throw a spanner in the works, however, there's one consistency which is seen throughout, which is that all valid TLDs always start with at least 1 alphabetical character, this is what we will check for.
  * TLDs are generally between 2 and 6 characters, IDN TLDs changes all this, as I have seen IDN TLDs as long as 18 characters in length, the RFC, however says 63.
  * A label can be 1 character long.

Finally, we need to ensure that the length is correct. For this we need to read the [[RFC3696 errata](http://www.rfc-editor.org/errata_search.php?rfc=3696)].

> <pre class="rfctext">In addition to restrictions on syntax, there is a length limit on
   email addresses.  That limit is a maximum of 64 characters (octets)
   in the "local part" (before the "@") and a maximum of 255 characters
   (octets) in the domain part (after the "@") for a total length of 320
   characters. However, there is a restriction in RFC 2821 on the length of an
   address in MAIL and RCPT commands of 256 characters.  Since addresses
   that do not fit in those fields are not normally useful, the upper
   limit on address lengths should normally be considered to be 256.</pre>

When it comes to dealing with lengths in regular expressions, it can often become very confusing, so I wrote this little peice of advice to refer to&#8230;

> (it){X,Y} means &#8220;see it between X and Y more times&#8221;

What we need to do in terms of length is as follows:

  * The &#8220;local-part&#8221; total length must be no longer than 64 characters.
  * The &#8220;domain-part&#8221; total length must be no longer than 255 characters.
  * Each &#8220;dns-label&#8221; total length must be no longer than 63 characters.
  * The entire &#8220;email address&#8221; total length must be no longer than 256 characters.

Put this together with the fact that certain elements cannot start or end with certain characters, it makes it difficult to correctly place the end check. Here's a run down of that:

  * The &#8220;local-part&#8221; cannot start or end with a period (.)
  * The &#8220;local-part&#8221; must not have two periods together
  * A &#8220;dns-label&#8221; cannot start or end with a dash (-)

I found that I was unable to satisfy both the lengths and the character placements in a single regular expression. This forced me to make a decision, I could have one or the other, or neither.

I figured that lengths actually hold very little value in validation. Providing the email looks right specific lengths won't matter. Besides, we don't need regular expressions in order to check lengths, it's a very simple principle. It's also worth noting that I discovered the local part [CAN be over 64 characters](mailto:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx@mailinator.com), [check it out](http://www.mailinator.com/maildir.jsp?email=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx&x=0&y=0).

After playing around with dots and dashes in various places in email addresses on various servers and clients I soon discovered that it wasn't as strict as I had first perceived. I found many examples of dots and dashes where they shouldn't be, mainly at on the end of dns-labels (such as &#8220;x-.x.com&#8221;). Ultimately, at least for the &#8220;local-part&#8221;, it's down to the user. For both parts verification should be used instead.

So now the local-part now looks like this:

> $local\_part = &#8220;[a-zA-Z0-9!#\$%&\'\*\+\/=\?\^\_\`\{\|\}~\.-]+&#8221;;

And FINALLY, the domain part looks like this:

> $consists = &#8216;\[a-zA-Z0-9\]\[a-zA-Z0-9-\]*';
  
> $label = &#8220;(?:$consists(?:\.$consists)?)&#8221;;
  
> $tldlabel = &#8220;(?:\[a-zA-Z\]\[a-zA-Z0-9-\]+)&#8221;;
  
> $domain = &#8220;$label\.$tldlabel&#8221;;

We now need to bring the two parts back together, separated by an at-sign (@)&#8230;

> $addr\_spec=&#8221;$local\_part@$domain&#8221;;

Once you've added the syntax to match the start and end position, the resulting regular expression, looks something like this:

> /^\[a-zA-Z0-9!#$%&\'\*+\/=?^_\`{|}~.-]+@(?:[a-zA-Z0-9\]\[a-zA-Z0-9-\]\*(?:\.\[a-zA-Z0-9\]\[a-zA-Z0-9-\]*)?)+\.(?:\[a-zA-Z\]\[a-zA-Z0-9-\]+)$/i

I'm sure some of you have probably been shouting all the way through this saying that you can shorten the regex, I purposely didn't do this to make it easier to follow. However you can shorten [a-zA-Z] by using the &#8220;case insensitive&#8221; modifier allowing you to remove &#8220;A-Z&#8221;, it also might be worth noting that you can use &#8220;\d&#8221; instead of &#8220;0-9&#8221;.

Here's what I did:

> $addr\_spec=str\_replace(&#8216;a-zA-Z','a-z',$addr_spec);
  
> $addr\_spec=str\_replace(&#8216;0-9&#8242;,'\d',$addr_spec);

You may also wish to take it further and consider replacing &#8220;a-z\d&#8221; with &#8220;\w&#8221;, and also removing the extra &#8220;\_&#8221;, since &#8220;\w&#8221; means word, which includes &#8220;a-zA-Z0-9\_&#8221;.

Here's how it looks:

> /^\[\w!#$%&\'\*+\/=?^\`{|}~.-]+@(?:[a-z\d\]\[a-z\d-\]\*(?:\.\[a-z\d\]\[a-z\d-\]*)?)+\.(?:\[a-z\]\[a-z\d-\]+)$/i

**Update:** Due to [recent vulnerabilities](http://www.php-security.org/MOPB/PMOPB-45-2007.html) in PHP's very own email address validation regex (FILTER\_VALIDATE\_EMAIL) used in the [filter_var function](http://php.net/manual/en/function.filter-var.php), it's recommended that you use the /D modifier, that will prevent newlines from matching. ie:

> /^\[\w!#$%&\'\*+\/=?^\`{|}~.-]+@(?:[a-z\d\]\[a-z\d-\]\*(?:\.\[a-z\d\]\[a-z\d-\]*)?)+\.(?:\[a-z\]\[a-z\d-\]+)$/iD

**Final thoughts**

Learning how to correctly validate an email address has been one of the most stressful and time consuming things i've had to do in web development.

RFCs aren't easy to understand, they are a complete minefield, and it results in something that is incomprehensible and unmaintainable.

There's a lot that can be said for proper validation, so many people get it wrong, and it can mean the difference between a sale and no sale, but there's a difference between doing it properly based strictly on technical specification and doing it properly for real world situations.

In order to validate correctly, you must be in touch with the real world, and not get caught up too much in the technical documentation, otherwise you will find yourself far from the original objective.

Thus a lot can be said about the outdated RFCs, and the people who write them. The technical specification is so far out of touch with reality it does not actually work in practice.

Having said all this, of course validation has it's limitations and can only do so much. Once you've validated the email address to the best of your ability without compromising too much resources, verification is the next step.

This article for intent and purpose set out to validate an email address. Although basic levels of verification can be done very easily, I feel that it goes beyond the scope of this article.

For more information with regards to email address verification, I suggest you look into the Simple Mail Transfer Protocol (SMTP), details can be found in [[RFC2821](http://tools.ietf.org/html/rfc2821)], you may also be interested in the [getmxrr()](http://www.php.net/getmxrr) function. Also consider the use of DNS to verify the domain name.

I hope you've enjoyed reading this article, it took me a long time to complete, and was quite stressful, but I feel satisfied that I am now fully qualified to validate email addresses to a satisfactory level. I hope that now, you are too.

I look forward to your comments.

**Resources
  
** 

  * [Perl's Mail::RFC822::Address](http://www.ex-parrot.com/~pdw/Mail-RFC822-Address.html)
  * [Cal's is\_valid\_email_address PHP function](http://code.iamcal.com/php/rfc822/rfc2822.phps)
  * [sinful-music.com's mime\_extract\_rfc2822_address](http://uk.php.net/manual/en/function.preg-match-all.php#62104)
  * [SimonSlick's Validate Email Address Format](http://SimonSlick.com/VEAF/)
  * [Jacob Santos's &#8220;Stop Doing Email Validation the Wrong Way&#8221; rant.](http://www.santosj.name/php/stop-doing-email-validation-the-wrong-way/)
  * [Validate email addresses using regular expressions](http://www.markussipila.info/pub/emailvalidator.php)
  * [ilovejackdaniels.com on email address validation](http://www.ilovejackdaniels.com/php/email-address-validation/)

**Update 17/12/09**

I have put my regex into a function called [validate_email](http://hm2k.googlecode.com/svn/trunk/code/php/functions/validate_email.php) and have created [validemail.org](http://validemail.org/) to demonstrate the difficulty of email address validation.

Also, I am advice people not to use PHP's filter\_var() and FILTER\_VALIDATE_EMAIL as according to the [source code](http://svn.php.net/viewvc/php/php-src/trunk/ext/filter/logical_filters.c?view=co&content-type=text%2Fplain), the regex it uses is from a unmaintained PEAR package called [HTML_QuickForm](http://cvs.php.net/viewvc.cgi/pear/HTML_QuickForm/QuickForm/Rule/Email.php?view=co&content-type=text%2Fplain), which has been superseded by HTML_QuickForm2, which does not validate email addresses. This means nobody is assigned to maintaining the PHP's own email validation.

Instead, I recommend using my [validate_email](http://hm2k.googlecode.com/svn/trunk/code/php/functions/validate_email.php) function which is not only maintained but also adheres to RFC 760 which states:  _&#8220;In general, an implementation should be conservative in its sending behavior, and liberal in its receiving behavior&#8221;_. Also known as the [Robustness principle](http://en.wikipedia.org/wiki/Robustness_principle).

<div id="_mcePaste" style="overflow: hidden; position: absolute; left: -10000px; top: 7634px; width: 1px; height: 1px;">
  <pre>validate_emailvalidate_email</pre>
</div>