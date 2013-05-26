Design
===
* List what domain(s) a rule was taken from. We need to know why a rule is on the list.
* Keep the number of domain-specific rules to a minimum. Rules that are unique to a site are OK, but don't specify the domain unless necessary. This way it can work on other sites, perhaps ones that use the same content scheme.
* Prefer general rules over specific ones. (The natural caution here is to avoid overly general rules that may catch elements used in other contexts.)

Developer Notes
===
Since comments are usually inline on a page, we can't use AdBlock's URL blocking. Instead we have to rely on its [element hiding](http://adblockplus.org/en/filters#elemhide).

A quick summary of the syntax. Element hiding rules are written in the form:

    [domain1,domain2,...]##[CSS Selector]

and the syntax is parsed as:

* The double hash (`##`) is the token that denotes the rule is an element hiding rule.
* The comma-seperated `[domain]`s are the list of domains to apply the rule to. A list of domains only applies the rule to those domains, no domains listed means apply to all, and a prefix of ~ to a domain whitelists the domain from having the rule applied on it.
* The `[CSS Selector]` refers to any normal CSS selector rule.

Example:

    example.com###comment

selects any tag with the ID of `comment` on all domains ending in `example.com`. [More info](http://adblockplus.org/en/faq_internal#elemhide).

Another example:

    ~site.org##div[id*=text]

selects any `div` element with an id containing `text`, but doesn't apply the rule to pages on `site.org`.

Contributing
===
If submitting a pull request, please include URLs that are being fixed to behave properly in the commit message.

Known Issues
===
Text headers *for* the comments (such as a typical comment header: "23 Responses") are not as easy to block as the comments themselves. Rules to hide comments should include as much of the comment area as possible, including the comment headers, but it is not always practicle to include the headers. Leaving comment headers unblocked is acceptable when pragmatically necessary.

Site TODO
===
* imgur
* flickr
* techcrunch
* gizmodo
* the other starred repo
* personal RSS reader
