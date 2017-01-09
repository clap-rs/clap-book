# Building Command Line Applications in Rust

This section will discuss building command line applications with Rust in general. That is to say
that we will be discussing how to structure the code, and some best practices or common idioms when
dealing with the various parts of a command line application.

The one section we won't discuss in this section is the interface itself. This is because there is
two whole sections dedicated to that already.

We'll start by breaking down the application into common components and discuss each in turn while
building an example program to demonstrate the various techniques. 

All of the examples in this section can be found [on Github] under the `examples/` directory.

[on Github]: https://github.com/kbknapp/clap-book