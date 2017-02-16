# Results

The results are exactly what they sound like, results of a particular application run. Most often
it's simply text output to `stdout`. There are two common notes that should be mentioned when
speaking about results:

 * Prefer `write!` or `writeln!` to the `std::io::Stdout` object, over `print!` and `println!`
 * Consider supporting multiple types of output early in the design (thinking changes to human
   readable output, as well as incorporating machine readable output like JSON if applicable)

The second bullet is self explanatory; consider whether or not your particular output should be
tweakable early in the design of the application. Tweakable means things such as substituting
separators, or converting number formats. Considering the design early will allow grouping write
statements, or a trait based approach instead of branches and case statements.

The first bullet is more surprising to most people. The reason for preferring the `write!` macros is
that it's possible for the `println!` macros to `panic!` and runtime (albeit in rare circumstances)
whereas writing directly to `std::io::stdout()` (or any other `io::Write` object) allows you check
for the failure and return a pretty error message. But it also has another added benefit of allowing
one to write to other `io::Write` objects without changing any code.