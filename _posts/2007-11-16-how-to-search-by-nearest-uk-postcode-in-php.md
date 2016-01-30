---
id: 153
title: How to search by nearest UK postcode in PHP
date: 2007-11-16T10:50:58+00:00
author: admin
layout: post
guid: http://jpswade.github.io/posts/how-to-search-by-nearest-uk-postcode-in-php
permalink: /how-to-search-by-nearest-uk-postcode-in-php/
---
<p class="lead">
  Often clients ask me to create a function where by a visitor can come onto their website, there they can enter in their postcode, the idea is to then display the closest location based on locations in a database.
</p>

_**Aim:** To display details of a predefined location that is closest to the visitor based on the postcode they enter._ 

<!--more-->To achieve this you must cross reference their postcode and your locations with a numerical value (such as coordinates).

This means we require a database of postcodes and such numerical values.

This gives us a few choices:

  * [Royal Mail&#8217;s PAF](http://www.royalmail.com/portal/rm/jump2?mediaId=400085&catId=400084) &#8211; This is very [costly](http://www.guardian.co.uk/technology/2007/apr/26/freeourdata.guardianweeklytechnologysection), I&#8217;d not recommend this.
  * [Jibble.org&#8217;s postcodes.zip](http://www.jibble.org/ukpostcodes/) &#8211; Not been updated since 2004, may no longer be online.
  * [easypeasy.com&#8217;s Postcode database](http://www.easypeasy.com/guides/article.php?article=64) &#8211; Also has lots of information on how to use such a database
  * [freethepostcode.org&#8217;s Database](http://www.freethepostcode.org/) &#8211; Kinda crappy site, with limited info, but has a database.
  * [New Popular Edition Maps](http://www.npemap.org.uk/) &#8211; A very popular postcode database
  * [kubelabs.com &#8216;s database](http://www.kubelabs.com/ukpostcodedata.php) &#8211; Fairly new, notable.
  * [Google Maps UK](http://maps.google.co.uk/) &#8211; If all else fails a bit of [API](http://www.google.com/apis/maps/signup.html) magic and this may just do the [trick](http://www.webdesignerforum.co.uk/index.php?showtopic=2328). (Also see: [Map Maker](http://mapmaker.donkeymagic.co.uk/))

For some of you Google Maps might be the most appropriate option, however for me, my client is particularly fussy and only wants to display the details of the closest location, not the details of all the locations. Using Google Maps would require plotting all the locations on the map before you even enter the postcode.

Having said all this, a quick browse through the &#8220;External Links&#8221; on the [UK Postcodes](http://en.wikipedia.org/wiki/UK_postcodes) Wikipedia entry, and I quickly found an article by Paul Jenkins entitled [UK Post Code Distance Calculation in PHP](http://www.pjenkins.co.uk/blog/index.php/2007/04/04/uk_post_code_distance_calculation/), which is fantastic, you can even download it [here](http://www.pjenkins.co.uk/uk_postcodes/uk_postcode_calc.zip) (uk\_postcode\_calc.zip).

After a short examination it seems this does exactly what it says on the tin, and simply calculates the distance.

However, with a quick google for [php distance calculation](http://www.google.com/search?q=php+distance+calculation), you can quickly find that there are more refined equivalents of the distance calculation. I thought it might be a good idea to use [one](http://www.zipcodeworld.com/samples/distance.php.html) of those instead.

After a bit of tweaking, here&#8217;s what I came up with in the end:

> function distance($lat1, $lon1, $lat2, $lon2, $u=&#8217;1&#8242;) {
> 
> $u=strtolower($u);
  
> if ($u == &#8216;k&#8217;) { $u=1.609344; } // kilometers
  
> elseif ($u == &#8216;n&#8217;) { $u=0.8684; } // nautical miles
  
> elseif ($u == &#8216;m&#8217;) { $u=1; } // statute miles (default)
> 
> $d=sin(deg2rad($lat1))\*sin(deg2rad($lat2))+cos(deg2rad($lat1))\*cos(deg2rad($lat2))*cos(deg2rad($lon1-$lon2));
  
> $d=rad2deg(acos($d));
  
> $d=$d\*60\*1.1515;
> 
> $d=($d*$u); // apply unit
  
> $d=round($d); // optional
  
> return $d;
  
> }

So, that&#8217;s the hard parts done (database and maths), next is simply a case of using this information to &#8220;find the closest&#8221; from the postcode we input to an array of postcodes we supply&#8230;

To find the &#8220;closest&#8221; postcode, effectively what we&#8217;re trying to do is find the &#8220;shortest&#8221; distance between the postcodes, or, simply the smallest number in the results, assuming we put the results into an array with the key as the postcode and the distance as the value.

All we have to do is create a simple script that will find the smallest number in a given array, then return the appropriate key. Simple!

> function closest ($needle,$haystack) {
  
> if (!$needle || !$haystack) { return; }
  
> if (!is_array($haystack)) { return; }
> 
> $smallest=min($haystack); //smallest value
> 
> foreach ($haystack as $key => $val) {
  
> if ($val == $smallest) { return $key; }
  
> }
  
> }

The above script does exactly what we want, using the &#8220;[min](http://www.php.net/min)&#8221; function we can quickly work out what we need to return.

The only task left is to bind all this together, we need to create two functions that will:

  1. Get the distance using the postcode to get the longitude and latitude from the database.
  2. Create an array with the postcodes as the keys, and the distance as the values.

Very simple!

**Function 1, Postcode Distance**

> function postcode_distance ($from,$to) {
  
> // Settings for if you have a different database structure
  
> $table=&#8217;postcodes_uk&#8217;;
  
> $lat=&#8217;lat&#8217;;
  
> $lon=&#8217;lon&#8217;;
  
> $postcode=&#8217;postcode&#8217;;
> 
> // This is a check to ensure we have a database connection
  
> if (!@mysql_query(&#8216;SELECT 0&#8217;)) { return; }
> 
> // Simple regex to grab the first part of the postcode
  
> preg_match(&#8216;/\[A-Z]{1,2}[0-9R\]\[0-9A-Z\]?/&#8217;,strtoupper($from),$match);
  
> $one=$match[0];
  
> preg_match(&#8216;/\[A-Z]{1,2}[0-9R\]\[0-9A-Z\]?/&#8217;,strtoupper($to),$match);
  
> $two=$match[0];
> 
> $sql = &#8220;SELECT \`$lat\`, \`$lon\` FROM \`$table\` WHERE \`$postcode\`=&#8217;$one'&#8221;;
  
> $query = mysql_query($sql);
  
> $one = mysql\_fetch\_row($query);
> 
> $sql = &#8220;SELECT \`$lat\`, \`$lon\` FROM \`$table\` WHERE \`$postcode\`=&#8217;$two'&#8221;;
  
> $query = mysql_query($sql);
  
> $two = mysql\_fetch\_row($query);
> 
> $distance = distance($one[0], $one[1], $two[0], $two[1]);
> 
> // For debug only&#8230;
  
> //echo &#8220;The distance between postcode: $from and postcode: $to is $distance miles\n&#8221;;
> 
> return $distance;
  
> }

**Function 2, Postcode Closest**

> function postcode_closest ($needle,$haystack) {
  
> if (!$needle || !$haystack) { return; }
  
> if (!is_array($haystack)) { return; }
> 
> foreach ($haystack as $postcode) {
  
> $results[$postcode]=postcode_distance($needle,$postcode);
  
> }
  
> return closest($needle,$results);
  
> }

So, with that done, place the 4 above functions into a file such as &#8220;postcode.php&#8221;, ready for use in the real world&#8230;

**Test case:**

> <?php
> 
> include_once(&#8216;postcode.php&#8217;);
> 
> if ($_POST) {
  
> include_once(&#8216;db.php&#8217;);
  
> $postcodes=array(&#8216;TF9 9BA&#8217;,&#8217;ST4 3NP&#8217;);
  
> $input=strtoupper($_POST[&#8216;postcode&#8217;]);
  
> $closest=postcode_closest($input,$postcodes);
  
> }
> 
> if (isset($closest)) {
  
> echo &#8220;The closest postcode is: $closest&#8221;;
  
> }
  
> ?>
> 
> <form action=&#8221;&#8221; method=&#8221;post&#8221;>
  
> Postcode: <input name=&#8221;postcode&#8221; maxlength=&#8221;9&#8243; /><br />
  
> <input type=&#8221;submit&#8221; />
  
> </form>

You can download this script here: [postcode_search.phps](?dl=postcode_search.phps)

_Note: In the above test case, I have a &#8220;db.php&#8221; file which contains my database details and starts a database connection._ I suggest you do the same.

Ensure you have your database populated, you should be able to use [Paul Jenkins&#8217;s UK Postcode csv](http://www.pjenkins.co.uk/uk_postcodes/UK_PostCodes.csv), allowing you to use your own table structure.

Well, that&#8217;s all folks, I can now use this script to provide any locations that match the &#8220;closest&#8221; postcode.

Enjoy!