# markdown — real-world examples

## Headers

```markdown
h1 header
=========
h2 header
---------

# h1 (ATX style)
## h2
### h3
```

## Blockquotes

```markdown
> first level and paragraph
>> second level and first paragraph
>
> first level and second paragraph
```

## Lists

```markdown
Unordered — use *, +, or -
* Red
* Green
* Blue

Ordered
1. First
2. Second
3. Third
```

## Code

```markdown
Indent 4 spaces / 1 tab for a code block:

    code code code

Inline: use the `printf()` function

Fenced block with syntax highlighting (best for glow):

    ```sh
    sudo zypper dup
    ```
```

## Horizontal rules — three or more of the following

```markdown
***
---
___
```

## Links and images

```markdown
This is [an example](http://example.com "Title") inline link.
![Alt Text](/path/to/file.png)
```

## Emphasis

```markdown
*em* _em_
**strong** __strong__
```

## Tables (GitHub-flavored, renders nicely in glow)

```markdown
| Host        | Role         |
| ----------- | ------------ |
| homelab     | workstation  |
| mediaserver | Plex + files |
```
