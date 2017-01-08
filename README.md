# The Rust Programming Language

[![Build Status](https://travis-ci.org/kbknapp/clap-book.svg?branch=master)](https://travis-ci.org/kbknapp/clap-book)

This is the book “Building Command Line Utilities in Rust”, which is currently rendered 
[online][prod].

[prod]: https://book.clap.rs/

## Requirements

Building the book requires [mdBook] >= v0.0.13. To get it:

[mdBook]: https://github.com/azerupi/mdBook

```
$ cargo install mdbook
```

## Building

To build the book, type:

```
$ mdbook build
```

The output will be in the `book` subdirectory. To check it out, open it in
your web browser.

_Firefox:_
```
$ firefox book/index.html           # Linux
$ open -a "Firefox" book/index.html # OS X
```

_Chrome:_
```
$ google-chrome book/index.html           # Linux
$ open -a "Google Chrome" book/index.html # OS X
```

To run the tests:

```
$ mdbook test
```

## Contributing

We'd love your help! Please see [CONTRIBUTING.md][contrib].

[contrib]: https://github.com/kbknapp/clap-book/blob/master/CONTRIBUTING.md

## Spellchecking

To scan source files for spelling errors, you can use the `spellcheck.sh`
script. It needs a dictionary of valid words, which is provided in
`dictionary.txt`. If the script produces a false positive (say, you used word
`BTreeMap` which the script considers invalid), you need to add this word to
`dictionary.txt` (keep the sorted order for consistency).

## Converting Windows newlines to Unix

This is mostly for Carol's reference because she keeps having to look it up.

```
$ tr -d '\015' < DOS-file > UNIX-file
```
