---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Starting My (New) Academic Page"
subtitle: ""
summary: ""
authors: []
tags: []
categories: []
date: 2020-04-26T23:48:41+02:00
lastmod: 2020-04-26T23:48:41+02:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

So here is my first blog post switching from an old static website generator to a new one called [Hugo](https://gohugo.io/) and a theme called [academic](https://sourcethemes.com/academic/). I stated creating static sites in 2015 with a generator integrated to Github called [Jekyll](https://jekyllrb.com/) and hosted (for free) using [github pages](https://pages.github.com/). For the techies, you can see the move happened with [this very commit](https://github.com/remisharrock/remisharrock.github.io/commit/97acdd0eebb72325baca5ad5123df35d6170097c).

I think my old website will still be accessible in the future using the [wayback machine](http://web.archive.org/) to get some details on how it was previously built, maybe you can check (beware: as soon as you click the link, you will be travelling back in time!) by [clicking here](https://web.archive.org/web/20160409092644/http://www.remisharrock.fr/about/website/). For those who are afraid to click, what I can understand, you will notice a slight difference in the URL of the website. Indeed, I used HTTP and not HTTPS (S stands for Secured), what a crazy idea! As google wrote in a [post](https://security.googleblog.com/2018/02/a-secure-web-is-here-to-stay.html) back in 2018:
> For the past several years, we’ve moved toward a more secure web by strongly advocating that sites adopt HTTPS encryption. And within the last year, we’ve also helped users understand that HTTP sites are not secure by gradually marking a larger subset of HTTP pages as “not secure”. Beginning in July 2018 with the release of Chrome 68, Chrome will mark all HTTP sites as “not secure”.

Of course Google was right and I was surprised to discover that sites load slower using HTTP rather than HTTPS, even if you think the added encryption mechanism would slower things down: isn't that counterintuitive ? Take a look [here](https://scotthelme.co.uk/still-think-you-dont-need-https/) to understand.

Looking back at my "behind the scenes of this website" I also mentioned [ATOM](atom.io) to be my source code editor, which is not the case anymore. I switched to [Visual Studio Code](https://code.visualstudio.com/) and I'm very happy with it. Anyway the funny ATOM launching [video](https://www.youtube.com/watch?v=Y7aEiVwBAdk) is still on Youtube and I still like it a lot, especially when grandma switches the colors to black and green :older_woman: :computer:! No comparable video for Visual Studio Code :smirk:.

For the rest, I still use Github pages and I'll explore more differences in a new post one day!