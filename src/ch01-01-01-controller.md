# Controller

The controller is the single entry and exit point of your program. It handles the initializaiton and
exit of your program. It may not be a *thing* per se, but may just be a single *place* such as a
particular function. In Rust programs it's common to use `main()` as a controller, perform the
initialization, then delegate out to another function which handles the application logic.


This keeps your entry and exit point neat and tidy, as well as makes it easy to see where in your
code things start and end. An example for a `main()` is:

```rust 
fn main() {
    // Do some initializaiton work...

    if let Err(e) = run() {
        // print errors neatly...

        // do any cleanup...

        ::std::process::exit(1);
    }
}

fn run() -> Result<()> {
    // Start the real applicaiton work...
}
```

`main()` is known as the controller because it handles the program execution in serial, whereas the
`run()` function handles the actual program logic. Note that `run()` returns a `Result<()>` type to
indicate whether or not an error occurred, or execution was successful. This makes error handling
extremely easy, as anywhere in the program if an error occurrs, it can simply be propagated up back
to the `run()` command, and ultimately our controller `main()` for display to the user.

We'll talk more about errors shortly, as this can be a complex topic and possibly the second most
important user-facing portion of an applicaiton.