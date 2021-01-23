# Simple Blog

A simple and extensible blog written with minimalism in mind. There's support for formatting LaTeX using MathJax and code blocks using html tags - [example article](./posts/210123.html). A small `Makefile` is used to update, upload and preview the website.

I use this to maintain my [university personal webpage](http://wwwf.imperial.ac.uk/~mk1019/).

## Installation

```
$ git clone https://github.com/mkomod/sb
```

## Configuration

Open the `Makefile` and add the location to the server you intend to upload content to

```
server="user@server.com:/path/to/webpage/directory"

....
```

You can change how the pages look by changing `style.css`.

## Functions

### Preview

```
$ make preview
```

Starts a python html server and launches index.html

### Update

```
$ make update
```

Creates `index.html` and `blog.html`.


### Upload

```
$ make upload
```

or just

```
$ make
```

Updates `index.html` and `blog.html` and uploads the content to your webserver.


## Adding articles

Article should be named as `YYMMDD.html` ex: `210123.html`. A template is provided in `./posts`

```
<article>
    <h4> Title </h4>
    <p> Content
</article>
```

