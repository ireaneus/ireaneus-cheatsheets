# emacs — real-world examples

## Basic usage

| Action              | Keys                    |
| ------------------- | ----------------------- |
| Indent              | select text, then TAB   |
| Cut                 | CTRL-w                  |
| Copy                | ALT-w                   |
| Paste               | CTRL-y                  |
| Search/Find         | CTRL-s                  |
| Replace             | ALT-% (ALT-SHIFT-5)     |
| Save                | CTRL-x CTRL-s           |
| Load/Open           | CTRL-x CTRL-f           |
| Undo                | CTRL-x u                |
| Highlight all text  | CTRL-x h                |
| Directory listing   | CTRL-x d                |
| Cancel a command    | ESC ESC ESC             |
| Font size bigger    | CTRL-x CTRL-+           |
| Font size smaller   | CTRL-x CTRL--           |

## Buffers and windows

| Action                                   | Keys                 |
| ---------------------------------------- | -------------------- |
| Split screen vertically                  | CTRL-x 2             |
| Split vertically, 5-row height           | CTRL-u 5 CTRL-x 2    |
| Split screen horizontally                | CTRL-x 3             |
| Split horizontally, 24-column width      | CTRL-u 24 CTRL-x 3   |
| Revert to single screen                  | CTRL-x 1             |
| Hide the current screen                  | CTRL-x 0             |
| Kill the current buffer                  | CTRL-x k             |
| Move to the next window                  | CTRL-x O             |
| Select a buffer                          | CTRL-x b             |
| Eval expression in scratch buffer        | CTRL-x CTRL-e        |

## Other stuff (ALT-x commands)

| Action              | Command                       |
| ------------------- | ----------------------------- |
| Open a shell        | ALT-x eshell                  |
| Goto a line number  | ALT-x goto-line               |
| Word wrap           | ALT-x toggle-word-wrap        |
| Spell checking      | ALT-x flyspell-mode           |
| Line numbers        | ALT-x linum-mode              |
| Toggle line wrap    | ALT-x visual-line-mode        |
| Compile some code   | ALT-x compile                 |
| List packages       | ALT-x package-list-packages   |

## Sudoing within eshell

By default, sudo inside eshell just gives "permission denied". Fix:

```sh
alias sudo '*sudo $*'
```

## Line numbers + jump with CTRL-l (~/.emacs)

```elisp
(global-set-key "\C-l" 'goto-line)
(add-hook 'find-file-hook (lambda () (linum-mode 1)))
```

## Org-mode

| Action                                | Keys / syntax          |
| ------------------------------------- | ---------------------- |
| Begin org-mode                        | ALT-x org-mode         |
| Table column separator                | pipe character         |
| Reorganize table                      | TAB                    |
| Section heading                       | *                      |
| Open/collapse section                 | TAB                    |
| Open/collapse all                     | CTRL-TAB               |
| Export (HTML, PDF, ...)               | CTRL-c CTRL-e          |

Auto-wrap lines in org-mode:

```elisp
(add-hook 'org-mode-hook
          '(lambda ()
             (visual-line-mode 1)))
```

## Homelab: quick edits over SSH without leaving emacs

```sh
# TRAMP — edit a remote file on the media server
emacs /ssh:david@mediaserver:/srv/stacks/media/docker-compose.yml

# Terminal-only emacs on a headless box
emacs -nw /etc/fstab
```

## Install on OpenSUSE Tumbleweed

```sh
sudo zypper install emacs
```
