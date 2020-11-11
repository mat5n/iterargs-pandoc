
# Pandoc template for iterative arguments

This [Pandoc][pd-org] template facilitates an argument where two
competing theories are developed in parallel in an iterative manner so
that both sides of the argument have to address the opposition from
the very beginning.

The document is written in [Pandoc's markdown variant][pd-md] and
compiles into HTML.  See [here][res] for the result.

[pd-org]: http://pandoc.org 
[pd-md]: https://pandoc.org/MANUAL.html#pandocs-markdown
[res]: http://mat5n.github.io/iterargs-pandoc/

## Getting Pandoc

Follow the [installation instructions][pd-inst].

[pd-inst]: https://pandoc.org/installing.html

## Getting the template

Download the latest release either as a zip or tar.gz file.

Alternatively, you can clone the repository by issuing the command

```
git clone https://github.com/mat5n/iterargs-pandoc.git
```

## Compiling the document

If you have [Make][make] installed, run `make`.  Alternatively, you
can run the `compile.sh` script.  Finally, you could simply run
`pandoc` by hand with the right parameters (take a look at
`compile.sh` for instruction).  However you do run `pandoc`, you
should end up with an updated `index.html` which you can now open in
your browser.  (See below for [hot loading](#hot-loading) which should
be quite useful.)

[make]: https://www.gnu.org/software/make/

## Terminology 

The side of the argument making the first move, and then updating
their argument on odd-numbered iterations, is called *the Odd side*
or, simply, *Odd*.  The other side of the argument is called *the Even
side* or, simply, *Even*.

## Document structure

The document should have four first-level headings corresponding to
the following sections:

1. Introduction
2. Odd's argument
3. Even's argument
4. Back matter (citations and footnotes will go here automatically)

The text of the headings can of course be anything.

## Author blocks

Authors can be added to the arguments by adding the class `.authors`
to a div, like so:

```
::: authors
Zak Johnson and Harvey Dean
::: 
```

which is equivalent to the more [explicit syntax][pd-divs]

```
::: {.authors}
Zak Johnson and Harvey Dean
::: 
```

[pd-divs]: https://pandoc.org/MANUAL.html#divs-and-spans

## Highlights

Highlights can be used to create a bidirectional link between the two
sides of the argument.  As many elements as you like can be part of a
highlight.  To create a highlight, add the attribute `hl-odd=xyz` or
`hl-even=xyz` to any element, depending whether your Odd or Even.  The
`xyz` part is a unique label that's up to you.

[Pandoc's native syntax for spans][pd-divs] is useful here.  Below is
a demo of the Odd side's having added a highlight to Even's argument
consisting of two separate snippets of text.  The label they've chosen
is `foo`:

```
A bit of text.  [This bit is highlighted.]{hl-odd=foo}  This isn't.
[This again is.]{hl-odd=foo}  And this again isn't.
```

They should add a corresponding highlight on their own side.  Lets say
they want to highlight one of their headings.  Here's how:

```
...some text preceding the heading.

### A highlighted third-level heading {hl-odd=foo}

Some text following the heading...
```

## Hot loading

By pressing `r`, you can hot load the document into the browser
without a full page reload.  This way you don't lose your position
while working on the document.  Undo and redo also work across hot
loads in that undoing after a hot load will restore the previous
document.  (Although obviously not in your editor!)

For the above to work, unfortunately, the document needs to be served
by a web server.  If you have [Python][py-inst] installed, getting one
up and running is very easy.  With Python 3, go to your document
directory and issue the command

```
python3 -m http.server 8000
```

With [Python 2][py-2or3], use the following command instead

```
python -m SimpleHTTPServer 8000
```

Now you'll have a web server running on port 8000.  Point your browser
to http://localhost:8000 and you should see your document.

[py-inst]: https://www.python.org/downloads/
[py-2or3]: https://wiki.python.org/moin/Python2orPython3

## Language files

All snippets of text in the app can be changed by modifying the
language file.  This is located in `js/i18n/texts.js`.

## Publishing the document

When you decide to publish your document in one way or another
([GitHub pages][gh-pgs] are a fine option!), you'll need to include
the following files

```
index.html
css/iterargs.css
js/hammer.min.js
js/iterargs.js
js/i18n/texts.js
```

No harm is done if you include all the files in the template.  This is
especially convenient if you decide to use GitHub pages because then
you'll only need to push all your changes to your repository and your
done.

[gh-pgs]: https://pages.github.com

## Source code for `iterargs.js`

The source code for `iterargs.js`, the library doing most of the work
here, will be released as a separate project.

## Licence

Eclipse Public License v 1.0
