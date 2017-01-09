# Interface

This is user facing portion of the application. It is the part of the program that user interacts
the most with. It can be thought of as the *language* in which the user communicates with the
program. Unless your program is is a mindless top-to-bottom script, chances are good that your
program needs to make decisions on what functionality to enable or disable, as well as how to
accomplish certain tasks, or even what data to accomplish said tasks with.

When it comes to actually adding an interface to our `rwc` program, our program will need to know
what file or input to actually count. We will also add some additional functionality to `rwc` which
allows the user to control the output or results. The user may only want to know how many bytes were
in a particular file, and not how many lines for instance. We may also need to tell our `rwc`
program how to interpret the input.

All of these things must be communicated to the program in some manner. The next section focuses on
interfaces in extreme detail, so I won't elaborate just yet. For now, simply remember that there are
a multitudeof ways in which the user *could* comminicate with our program, and the difference 
between a well designed and powerful interface and one that is unintuitive or even laboreous to use
could mean the difference between your program being used, or passed over for something else.
