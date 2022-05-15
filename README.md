Transpose a befunge program to flip north with east and flip south with west,
like so:

If the input is:

```befunge
>12v
8  3
7  4
^65<
```

Then `runghc Main.hs` turns this into:

```befunge
v87<
1  6
2  5
>34^
```
