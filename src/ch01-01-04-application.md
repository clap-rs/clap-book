# Application

The application does the real work, and is the meat and potatoes of the program. Because the
application will vary from program to program, we won't spend a great deal of time discussing it.

Rather, keep in mind that it's best to keep the applicaiton isolated yet compatible with the rest of
the command line program. That is to say that it's designed with the error handling, output, and 
`Config` in mind. This means it will properly propagate errors up, etc.

It's the opinion of the author that the application should be aware of only the `Config`, and
errors. Output should work around the application's needs, not the other way around. This will keep
the programs nice and modular, making them easy to reason about and control bugs that will 
invariably show up.

In `rwc` our application will do the actual counting, managing state, etc. For example, the
application will *not* be concerned with formatting output, displaying errors, parsing input,
normalizing input into a `Config` or another other than counting files.