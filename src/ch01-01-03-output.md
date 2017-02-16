# Output

The output is quite possibly the second most important part of the user facing code, or tied for
first place. This is the output your application displays to the user, be it an error or the results
of a successfully completed computation. This is why the output is typically divided into two
distinct categories, results and errors.

If one were to guess which is more important of the two types of output, results or errors; some 
would guess, "Results! Because what good is a program that returns no results?!" Which is true to 
an extent, but errors can prove to be a *far* greater stumbling block than results.

Imagine a program, which outputs all the requested information but in a format that you're not fond
of. Maybe the output is comma separated instead of tabs, and in the reverse order that you'd like
to see. This may be a minor annoyance, but it's common (at least in the Linux and Unix based worlds)
to combine the output of one program and shape that output with other commands and utilities. Many
users may simply accept the results as given, and find ways to shift their workflow to accommodate.

Unfortunately, the same cannot be said of errors. An application that gives uninformative,
misleading, or worse yet incorrect error information can cause uses to abandon an application
altogether. **Providing concise, comprehensible, correct errors is tantamount to a successful
application.**