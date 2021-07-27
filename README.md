# Simple Blog

Nothing fancy.

---

## Installation

Clone the repository onto your local computer

```
git clone https://github.com/mkomod/sb
```

---

## Configuration

Edit `Makefile` and provide the address of your webserver

```
server="user@server.com:/path/to/webpage/directory"
```

Tip: for passwordless uploads run `ssh-copy-id user@server` and follow the instructions.

---

## Functions

#### `$ make preview`

Starts a python html server and launches index.html. Useful for previewing changes before uploading them.

#### `$ make update`

Updates `index.html` and `blog.html`. The latest article in `./posts` is appended onto `index.html` and all the articles in `./posts` are concatentated in reverse cronological order (newest -> oldest). 

#### `$ make upload` or `$ make`

Updates `index.html` and `blog.html` and uploads the content to your webserver.

---

## Appearance

Edit `templates/index.html` and `templates/blog.html` to change how these pages look. To change the styling edit `assets/style.css`.

---

## Adding articles

Article names should be named by date, e.g. `210123.html`. A template is provided in `./posts`

```
<article>
    <h4> Title </h4>
    <p> Content including some equations either inline $x=2$ or as a block $$y=x^2$$. You can also include inline <code>print("-")</code> or code blocks
    
<pre><code># hello_world.py
...
</pre></code>

</article>
```
