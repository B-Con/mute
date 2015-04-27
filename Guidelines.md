Design
===
* List what domain(s) a rule was taken from. We need to know why a rule is on the list.
* Prefer general rules over specific ones. (The natural caution here is to avoid overly general rules that may catch elements used in other contexts.) Keep the number of domain-specific rules to a minimum. Rules that are unique to a site are OK, but don't specify the domain unless necessary. This way it can work on other sites, perhaps ones that use the same content scheme.
* Don't block non-inline content. If comments are on a page by themselves, that's OK. Viewing them means the user sought them out. Our only concern are comments that are included alongside other content.
* Avoid blacklisting domains for `#comments`. It's a very powerful rule and works in many places, but avoid using it unless necessary. (This applies so long as `#comments` remains a blacklist-only rule.)
* General audience sites have higher priority than sites with very specialized audiences (eg, a site with very technical discussions).

Developer Notes
===
How it Works
---
Since comments are usually inline on a page, we can't use AdBlock's URL blocking. Instead we have to rely on its [element hiding](http://adblockplus.org/en/filters#elemhide).

A quick summary of the syntax. Element hiding rules are written in the form:

    [domain1,domain2,...]##[CSS Selector]

and the syntax is parsed as:

* The double hash (`##`) is the token that denotes the rule is an element hiding rule.
* The comma-separated `[domain]`s are the list of domains to apply the rule to. A list of domains only applies the rule to those domains, no domains listed means apply to all, and a prefix of ~ to a domain whitelists the domain from having the rule applied on it.
* The `[CSS Selector]` refers to any normal CSS selector rule.

Example:

    example.com###comment

selects any tag with the ID of `comment` on all domains ending in `example.com`. [More info](http://adblockplus.org/en/faq_internal#elemhide).

Another example:

    ~site.org##div[id*=text]

selects any `div` element with an id containing `text`, but doesn't apply the rule to pages on `site.org`.

Structure
---
There are two filters:

* `mute-devel.txt` contains all the filter rules along with comments, explaining why the rules exist
* `mute.txt` is the filter without the unnecessary comments and whitespace and with a valid checksum, it is the file that everyone uses

`mute-devel.txt` is where the work is done, then a script is used to convert it to `mute.txt`.

Contributing
===
If submitting a pull request, please include sample URLs that are being fixed to behave properly in the commit message.

Known Issues / TODO
===
* Text headers *for* the comments (such as a typical comment header: "23 Responses") are not as easy to block as the comments themselves. Rules to hide comments should include as much of the comment area as possible, including the comment headers, but it is not always practical to include the headers. Leaving comment headers unblocked is acceptable when pragmatically necessary.

* Currently the filter is served straight from GitHub. Host it elsewhere if it gets popular.
