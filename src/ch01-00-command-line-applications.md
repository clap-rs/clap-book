# Building Command Line Applications in Rust

This section will discuss building command line applications with Rust in general. That is to say
that we will be discussing how to structure the code, and some best practices or common idioms when
dealing with the various parts of a command line application.

The one topic that we won't discuss in this section is the interface itself. This is because there
are two whole sections dedicated to that subject.

We'll start by breaking down the application into common core components and discuss each in turn.
After discussing the components at a high level we will build an example program to demonstrate the
various techniques.

All of the examples in this section can be found [on Github] under the `examples/` directory.

The example program we'll be building is a replacement for the `wc` command line tool. If you're not
familiar with `wc` it's a very simple program which counts the lines, bytes, and/or words of a given
file or input and then outputs that information to `stdout`.

[on Github]: https://github.com/kbknapp/clap-book