# About

This book is structured into three distinct parts.

### Part I - Building Command Line Utilities with Rust

This section details building command line application in Rust. It speaks specifically about project
structure and design from a high level. It also gives a small example project demonstrating the
internals of a command line application.

There are some notable omissions in this section, and it's by design. This section specifically does
not speak about building the interface, or interface design/UX. Both of those topics are covered
in extreme detail in the following sections.

### Part II - Command Line Interface Design and UX

In the second section we talk specifically about designing a command line interface and the various
considering for a good user experience (UX). As it turns out, small and subtle design choices can
actually have a great impact on a users impression of your application or utility.

This section uses a multitude of examples and builds upon the example project from the first
section.

### Part III - clap-rs

In the final section we dive deep into the [clap] library to give a full and complete reference of
it's potential and capabilities. This section primarily uses stand alone examples to demonstrate
how to use this library when building complex and powerful CLIs.

[clap]: https://github.com/kbknapp/clap-rs