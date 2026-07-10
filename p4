# p4 — real-world examples

## Client and server configuration details

```sh
p4 info
```

## Get files from the depot

```sh
p4 sync                    # sync workspace to latest
p4 sync //depot/main/...   # sync a specific path
```

## Add, edit, and submit files

```sh
p4 add <filename>          # open a new file for add
p4 edit <filename>         # open an existing file for edit
p4 submit -d "Fix config typo"
```

## Review what you have open

```sh
p4 opened                  # files opened in your workspace
p4 diff                    # diff opened files against the depot
p4 revert <filename>       # discard changes, close the file
```

| Command   | What it does                        |
| --------- | ----------------------------------- |
| p4 info   | client/server configuration         |
| p4 sync   | update workspace from depot         |
| p4 add    | open new file for add               |
| p4 edit   | open file for edit                  |
| p4 submit | commit opened files                 |
| p4 opened | list opened files                   |
| p4 revert | discard local changes               |
