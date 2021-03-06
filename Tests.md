Testing
===
To keep an eye on the accuracy of the filter, we keep two sets of tests, one positive and one negative.

The positive tests are pages that should have user comments blocked. Failure to block them is considered a defect of the filter. The negative test is a list of pages with desirable user comments that should remain untouched.

Tests
---

###PositiveTests
These pages have comments that should be blocked. This list should include pages from popular, representative web sites. (Most of these are just randomly chosen pages that are representative of a block rule, no one/thing is being singled out.)


* http://www.youtube.com/watch?v=dQw4w9WgXcQ
* http://googleblog.blogspot.com/2013/05/capturing-beauty-and-wonder-of.html
* http://en.blog.wordpress.com/2013/05/14/nonprofits-on-wordpress/
* http://www.socialmediaexaminer.com/8-creative-ways-to-use-embeddable-tweets/
* http://www.anandtech.com/show/6964/gigabyte-z77hd4-review
* http://scientopia.org/blogs/goodmath/2013/05/05/speed-crankery/
* http://imgur.com/gallery/Cxagv
* http://techcrunch.com/2013/05/27/apples-problem-isnt-skeuomorphism-its-its-services/
* http://techdirt.com/articles/20131106/18325525157
* http://boingboing.net/2013/06/27/cross-sectional-photos-of-ammu.html
* http://valleywag.gawker.com/techcrunch-says-i-cant-come-to-their-party-anymore-484392688
* http://gizmodo.com/the-ipad-cleverly-detects-this-connected-picture-books-510005976
* http://www.theverge.com/2013/5/24/4362560/gmail-for-android-redesign-with-new-navigation-bar-revealed-in-google
* http://www.nytimes.com/2013/05/19/magazine/say-hello-to-the-100-trillion-bacteria-that-make-up-your-microbiome.html
* http://www.washingtonpost.com/blogs/innovations/wp/2013/05/23/the-terrifying-rise-of-the-political-entrepreneur/
* http://www.nydailynews.com/life-style/real-estate/bloomberg-buying-real-estate-exit-report-article-1.1353286
* http://www.latimes.com/news/local/la-me-0525-condor-permit-20130525,0,5676309.story
* http://www.suntimes.com/news/metro/20337645-418/electric-daisy-carnival-in-joliet-promises-fixes-after-noise-complaints.html
* http://www.philly.com/philly/news/20130525_Judge_holds_Schaibles__fearing_sects_will_shelter_them.html
* http://www.dallasnews.com/news/crime/headlines/20130524-five-men-face-capital-murder-charges-in-recent-dallas-slayings.ece
* http://blog.chron.com/ultimateastros/2013/05/25/as-jump-on-astros-early-in-primetime-rout/
* http://www.kansascity.com/2013/05/22/4250817/anti-cancer-drug-political-fire.html
* http://www.denverpost.com/airlines/ci_23257075/american-will-favor-passengers-without-roller-bags
* http://online.wsj.com/article/SB10001424127887324162304578305163574597722.html
* http://www.nola.com/education/index.ssf/2013/05/bicycling_faux_pas_snags_new_o.html#incart_most-read
* http://www.huffingtonpost.co.uk/2012/12/04/youth-threw-homeless-mans-rabbit-dublin-sentenced_n_2236642.html
* http://www.ft.com/intl/cms/s/2/b8803352-c281-11e2-ab66-00144feab7de.html#axzz2UNo8RuBX
* http://www.france24.com/en/20130528-china-recognises-bubbly-champagne-france-wine
* http://www.news24.com/Multimedia/Africa/African-Union-celebrates-50-years-20130527
* http://www.scientificamerican.com/video.cfm?id=flying-car-for-the-masses-set-for-t2013-05-23
* http://shine.yahoo.com/parenting/kate-middleton-due-date-mystery-210100247.html
* http://now.msn.com/barry-rountree-incoming-winston-salem-nc-police-chief-shoots-at-a-dog-hits-owner-and-is-placed-on-administrative-duty
* http://www.tmz.com/2013/07/03/alex-rodriguez-whistleblower-steroids-records-mlb-baseball/
* http://www.eonline.com/news/436441/david-and-victoria-beckham-run-on-sports-day-at-son-s-school-see-the-pics
* http://www.fool.com/investing/general/2013/07/04/apples-iwatch-conundrum.aspx
* http://the-toast.net/2013/07/05/a-day-in-the-life-of-dr-oz/
* http://www.cbsnews.com/8301-207_162-57595288/royal-baby-name-revealed-george-alexander-louis/
* usnews.nbcnews.com/_news/2013/07/22/19618495-zimmerman-emerges-to-help-family-escape-overturned-car-in-sanford-fla
* http://bleacherreport.com/articles/1715833-aaron-hernandezs-honorary-all-american-brick-removed-by-florida-gators
* http://www.dailyfinance.com/2013/07/28/wall-street-week-ahead-Caesars-NVIDIA-LeapFrog-Viacom/
* http://tv.msnbc.com/2013/07/12/ktvu-reports-fake-racist-names-of-asiana-airlines-214-pilots/

###Negative Tests
These pages have comments that should **not** be blocked.

* http://forums.xkcd.com/viewtopic.php?f=7&t=18676&p=3314253
* http://www.reddit.com/r/blog/comments/g5i83/so_long_and_thanks_for_all_the_postcards/
* https://news.ycombinator.com/item?id=5326511
* https://www.facebook.com/facebook
* http://stackoverflow.com/questions/11227809/why-is-processing-a-sorted-array-faster-than-an-unsorted-array
* http://www.amazon.com/Ray-Ban-RB2132-New-Wayfarer-Sunglasses/dp/B003CIP4TE/
* https://aur.archlinux.org/packages/yaourt/
* http://thesandtrap.com/products/orange-whip-training-aid/reviews/4590
* http://www.flickr.com/photos/14279081@N08/8442407428/
* https://bugs.kde.org/show_bug.cgi?id=135505 (uses "id=comments").
* http://kotaku.com/hideo-kojima-reviews-pacific-rim-in-eight-tweets-680304164
* http://warhammer40k.wikia.com/wiki/Thread:44932
* https://bugs.archlinux.org/task/36958

Performing Tests
---
To perform the tests:

1. Add the mute filter to AdBlock.
2. Optionally, disable any other AdBlock filters. (A good idea to do from time to time.)
3. Visit each page with blockable comments and confirm there are no visible user comments. To be thorough, compare the page with and without AdBlock enabled.
4. Visit each page without blockable comments and verify that the comments are still visible; also check the hit count in AdBlock for that filter to ensure there are no hits for the page.
