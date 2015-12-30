# Justified Pictures

## What?
This will help to display a collection of images in a nice way. Each row of images will have the same width, creating a justified look. The images are resized, but none of the images are cropped. Instead, the heights of rows are variable.

## Why?
There are [several](http://miromannino.github.io/Justified-Gallery/) [jQuery solutions](http://www.wackylabs.net/2012/03/flickr-justified-layout-in-jquery/) to this problem, but I wanted to try it without jQuery. Why? The problem came about when working on a React app. Using jQuery in a React app can potentially cause problems. They might confuse each other if they are both manipulating the DOM, for example. Also, loading a bunch of unnecessary libraries makes the app bloated. And writing this myself is a fun challenge.

### Bugs

- The last picture is sometimes huge
- rows that have more pictures are slightly more wide
