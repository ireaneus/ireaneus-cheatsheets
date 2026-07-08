# gdb — real-world examples

## Start the debugger on an executable

```sh
gdb your-executable
```

## Debug a program that takes arguments

```sh
gdb --args ./sensor-poll -v --interval 5
```

## Attach to an already-running process on the homelab

```sh
gdb -p $(pidof my-daemon)
```

## Post-mortem: load a core dump

```sh
gdb ./app core     # on systemd distros, retrieve cores with: coredumpctl gdb
```

## Inside gdb — the essential commands

```text
b some-method        # set a breakpoint (break)
r                    # run the program (run)

# when a breakpoint is reached:
n                    # next: run current line, step OVER calls
s                    # step: run current line, step INTO calls
bt                   # backtrace: print a stack trace
p length=strlen(string)   # evaluate an expression, print the result
l                    # list surrounding source code
c                    # continue execution
q                    # quit gdb (after program terminates)
```

| Command | What it does |
| --- | --- |
| b, break | set breakpoint |
| r, run | start program |
| n, next | step over |
| s, step | step into |
| bt, backtrace | stack trace |
| p, print | evaluate/print expression |
| l, list | show source context |
| c, continue | resume execution |
| q, quit | exit gdb |

Tip: compile with `gcc -ggdb3` first so gdb has full symbols.
