# Simple Blog

A simple and extensible blog written with minimalism in mind. There's support for formatting LaTeX using MathJax and code blocks using html tags - [example article](./posts/210123.html). A small `Makefile` is used to update, upload and preview the website.

I use this to maintain my [university personal webpage](http://wwwf.imperial.ac.uk/~mk1019/).

## Installation

```
$ git clone https://github.com/mkomod/sb
```

## Configuration

There's only one variable to configure for `sb` and that's the address of your webserver. This is found in the `Makefile`. `sb` uses rsync and SSH to upload content, so for convince you can run `ssh-copy-id` to store your login credentials and allow for passwordless uploads.

```
server="user@server.com:/path/to/webpage/directory"
```

### Styling 

You can change how pages look by altering `assets/style.css`, `templates/index.html` and `templates/blog.html`. 

## Functions

#### `$ make preview`

Starts a python html server and launches index.html. Useful for previewing changes before uploading them.

#### `$ make update`

Uodates `index.html` and `blog.html`.

#### `$ make upload` or `$ make`

Updates `index.html` and `blog.html` and uploads the content to your webserver.


## Adding articles

Article names should be formatted as `YYMMDD.html` ex: `210123.html`. A template is provided in `./posts`

```
<article>
    <h4> Title </h4>
    <p> Content
</article>
```

