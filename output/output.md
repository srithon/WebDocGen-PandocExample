> WebDocGen requires YAML frontmatter specifying a `url` parameter

# Intro

This is Google.
Google has a search bar in the middle of the screen.

> You can have things run in the browser using Javascript code blocks.
> Note that the `javascript` tag is required for WebDocGen to run them.
![Search bar](output/screenshot-0.png)


# Clicking on suggestions

When you click on the search bar, Google gives you a list of suggestions that you can click on.

![Hovering over first item](output/screenshot-1.png)


## Let's click on the first one!

> This is the syntax for adding HTML in the document. For technical details on
> why you can't just use angle brackets, see the source code, towards the end of
> the file. If you want to have literal double curly braces in the output, then
> use three instead of two. If you want three then use four, etc. If there is
> only one curly brace, it is untouched.

<div class="html-example">

![Result of clicking on first item](output/screenshot-2.png)


</div>
