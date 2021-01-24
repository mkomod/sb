# Simple Blog

A simple and extensible blog written with minimalism in mind.

There's support for formatting LaTeX and code - [example article](./posts/210123.html). Everything is done using a small `Makefile` and simple commands to preview, update and upload your website. A minimum amount of styling is used for readability and functionality - styling can be extended as needed. 

As an example I use `sb` to maintain my [university personal webpage](http://wwwf.imperial.ac.uk/~mk1019/).

## Installation

```
$ git clone https://github.com/mkomod/sb
```

## Configuration

There's only one variable to configure for `sb` and that's the address of your webserver. This is found in the `Makefile`.

```
server="user@server.com:/path/to/webpage/directory"
```

### Passwordless uploads

`sb` uses rsync and SSH to upload content, for convinience you can run `ssh-copy-id` and follow the steps to store your login credentials and allow for passwordless uploads.

### Styling 

You can change how pages look by altering `assets/style.css`, `templates/index.html` and `templates/blog.html`. 

## Functions

#### `$ make preview`

Starts a python html server and launches index.html. Useful for previewing changes before uploading them.

#### `$ make update`

Updates `index.html` and `blog.html`. The latest article in `./posts` is appended onto `index.html` and all the articles in `./posts` are concatentated in reverse cronological order (newest -> oldest). 

#### `$ make upload` or `$ make`

Updates `index.html` and `blog.html` and uploads the content to your webserver.

## Adding articles

Article names should be formatted as `YYMMDD.html` ex: `210123.html`. A template is provided in `./posts`

```
<article>
    <h4> Title </h4>
    <p> Content including some equations either inline $x=2$ or as a block $$y=x^2$$. You can also include inline <code>print("-")</code> or code blocks
    
<pre><code># hello_world.py
...
</pre></code>

</article>
```
