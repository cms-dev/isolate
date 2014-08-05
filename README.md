isolate
=======


Isolate is a sandbox built to safely run untrusted executables,
offering them a limited-access environment and preventing them from
affecting the host system. It takes advantage of features specific to
the Linux kernel, like namespaces and control groups.

It was developed by Martin Mareš and Bernard Blackham for the [Moe
Contest Environment](http://www.ucw.cz/moe/) (in this repository:
<git://git.ucw.cz/moe.git>) and has then been adopted by CMS, where
development continues.

Please refer to the [CMS project](https://github.com/cms-dev/cms) for
further information.
