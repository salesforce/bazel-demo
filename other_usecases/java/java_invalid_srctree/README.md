## Java Invalid Source Tree Demo Workspace

Bazel tolerates non-standard Java file structures.
Specifically, a Java file does need to be in a file structure that reflects the Java package.
For example, this class:

```java
package com.acme.test;

public class Foo { }
```

can be placed in _src/java/stuff/Foo.java_ and Bazel will correctly compile it as _com.acme.test.Foo_.
Some IDEs will not tolerate this non-standard location however.

This workspace provides an example of this case.
The _PieCrust_ class is located in _apple-api/source/flat_ but has a package declaration
 of _demo.apple.api_.
Bazel will honor the package declaration and ignore the file system location.
This is proven because the _ApplePie_ class is able to use the _PieCrust_ class.
