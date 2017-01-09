# Meet rwc

The example program we'll be building is a replacement for the `wc` command line tool. If you're not
familiar with `wc` it's a very simple program which counts the lines, bytes, and/or words of a given
file or input and then outputs that information to `stdout`.

This program was picked because it's simple enough to actually build while focusing on the compents
instead of being overwhelmed by the complexities of what it's trying to do, but also deals with
enough of the common components that it'll be a great example.

Since we won't be dealing with any sort of interface (yet), we'll use a static file `lorem.txt` as
our input. In the next section, we'll add an interface to this tool.

The contents of the `lorem.txt` file are:

```
 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse at elit at sem accumsan
 lobortis at iaculis nibh. Sed vel arcu vitae ante porta laoreet ac nec nisl. Praesent sodales
 turpis lorem, ultricies ullamcorper ante accumsan et.

 Fusce faucibus, elit ut feugiat fermentum, risus metus accumsan nulla, sed placerat nunc velit et
 dui. Fusce id sapien id neque aliquet egestas non quis velit. Ut euismod, lacus ac fermentum
 pharetra, nunc tortor bibendum mauris, sit amet dictum diam ipsum a enim. Class aptent taciti
 sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.

 Praesent porta, est nec placerat consectetur, velit tellus fringilla erat, ut pulvinar leo leo quis
 urna. Vivamus mollis massa eget vehicula sollicitudin. Nulla dapibus lectus non purus euismod, eu
 dapibus ipsum dapibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames
 ac turpis egestas.

 Cras eu ex pharetra, semper felis non, fringilla purus. Suspendisse a pellentesque sapien, vitae
 tincidunt lectus. Nam suscipit posuere nunc. Etiam vitae erat mi.

 Donec faucibus libero quis sollicitudin viverra. Nulla eget molestie felis, eu porta nulla.
 Phasellus at placerat augue. Nullam quis velit at diam semper vulputate et tincidunt nibh.
 Curabitur ornare arcu varius feugiat gravida. Mauris a mi mauris.
```

This file can also be found in the `examples/lorem.txt` or [on Github]

[on Github]: https://github.com/kbknapp/clap-book/blob/master/examples/lorem.txt