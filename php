# php — real-world examples

## Version and modules

```sh
php -v      # PHP version
php -m      # installed modules
php -i      # phpinfo() output
```

## Lint PHP files

```sh
php -l file.php

# Lint every php file under the cwd, 8 in parallel
find . -name "*.php" -print0 | xargs -0 -n1 -P8 php -l
```

## Interactive shell and one-liners

```sh
php -a
php -r 'echo 2 + 2, PHP_EOL;'
```

## Locate the php.ini in use

```sh
php -i | grep "php.ini"
```

## Local development webserver (PHP >= 5.4)

```sh
php -S localhost:3000    # serves the cwd on port 3000
```

## Homelab: install the CLI on Tumbleweed

```sh
sudo zypper search php8      # see available php8-* packages
sudo zypper install php8-cli
```

| Flag | Meaning                        |
| ---- | ------------------------------ |
| -v   | version                        |
| -m   | modules                        |
| -i   | phpinfo                        |
| -l   | lint (syntax check)            |
| -a   | interactive shell              |
| -r   | run code from the command line |
| -S   | built-in dev webserver         |
