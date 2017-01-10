# Config/Context

A configuration, sometimes referred to as a context or simply by the struct `Args` is a normalized
form of a combination of the user requested functionality and default functionality. The
configuration contains *all* of the information that the application needs to function.

The `Config` is often just a struct where each field either holds information required for the
application to function, or features/functionality in which to enable/disable. Sometimes it's called
`Args` because it represents a normalized version of the command line arguments passed in the by the
user. By *normalized* we mean converted or deserialized in Rust types, and after resolving any sort
of conflicts, overrides, requirements, or defaults.

For our `rwc` program a `Config` may contain a list of files in which count, and what sorts of
output the user has requested (such as all, bytes only, lines only, etc.)

A `Config` may also contain fields that determine whether or not to enable other meta functionality
such as whether or not to print verbose information, or what level of verbosity to use in the
output.

## To Own or Borrow

Something we'll need to decide about our particular `Config` struct is whether we will own or borrow 
the data. Unfortunately there is no *correct* answer. Typically, it's easiest to own the data. I 
often recommend starting with owned data, and move to borrowed data as appropriate.

There are a few factors that impact our decision to use owned or borrowed data such as:

 * Will our program need to, or be able to run in parrellel?
 * How long will our application need access to the information inside `Config`?
 * Will our application need access to *all* of the information inside `Config` at all times, or
   only a subset?
 * Will the `Config` need to be mutable throughout the applicaitons execution, or is it only mutable
   during creation while all information is being normalized?

For `rwc` we *could* count multiple files in parrellel, or perhaps divide files into chunks and
count those in parallel, but we'll start out processing files in serial for simplicity and add in
parallelized portions as we advance.
