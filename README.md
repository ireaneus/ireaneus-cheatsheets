# CheatSheets

### Dockerhub public repo
```sh

docker pull ireaneus/cheatsheet

docker run --rm -it ireaneus/cheatsheet 
docker run --rm -it -e "CHEAT_COLORSCHEME=light" ireaneus/cheatsheet  # docker colorscheme set to dark now.
[Usage]:
-s <keyword>
-l # Lists all existing cheats
-v # version
-d # working directories
<cheatsheet name> # ie. git, docker, bash, ssh

```

#### setting up .bashrc with exports

```sh

export EDITOR='/usr/bin/vim'

export DEFAULT_CHEAT_DIR='/home/dhaines@taos.local/linux_cheat'

export CHEATPATH='/usr/lib/python2.7/site-packages/cheat/cheatsheets'

export CHEAT_COLORS='true'

export CHEAT_COLORSCHEME='light' # must be 'light' (default) or 'dark'

```

### Linux CommandLine Cheatsheets
command line usage

```sh

cheat <cheatsheet>      # Displays specified cheatsheet

cheat -e <cheatsheet>   # Edits specified cheatsheet

cheat -s <keyword>      # Searches all cheatsheets by keyword

cheat -l                # Lists all existing cheatsheets

cheat -d                # Displays the working directories

cheat -v                # cheat version

```

### Setting up Syntax highlighting
 So far it has worked with
 
  "```bash and ```" <br>
  "```sh and ```" in between command blocks<br>
  "```sql and ```" at the top of the page and bottom