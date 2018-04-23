# Leftpad implementation and proof in SPARK

This small example shows the implementation and proof of Leftpad in SPARK, to
answer this [challenge](https://twitter.com/Hillelogram/status/988155322358534144).

You can verify the proof using [SPARK](https://www.adacore.com/sparkpro) as
follows:

```bash

$ gnatprove -P test --report=all

```

and compile and run the simple test case as follows using [GNAT
Pro](https://www.adacore.com/gnatpro):


```bash

$ gprbuild -p -P test
$ ./obj/test_padding

```
