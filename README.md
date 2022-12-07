# [Roots/Bedrock](https://github.com/roots/bedrock) Development Template (Apache + MySQL)

## About Bedrock

See [Bedrock README.md](bedrock.README.md).

## Requirements

- [Composer](https://getcomposer.org/)
- Docker

## Installation

### Pull the repository

**Note:** Change `my-bedrock-project` to your project name.

```zsh
git clone git@github.com:mimosafa/roots-bedrock-apache-mysql-template.git my-bedrock-project
```

Go to the project directory with `cd my-bedrock-project`.

### Install dependencies

```zsh
composer install
```

### Prepare env files

```zsh
cp .env.example .env
cp .env.local.example .env.local
```
Edit these files.

### Install WordPress

```zsh
make install
```

**Note:** Inside the above command, `make up` command described below is executed. Therefore, the Docker Container is already up after execution.

## Basic Usage

See [Makefile](Makefile) for details.

### Docker container lifecycle

Create and start containers:

```zsh
make up
```

Stop services:

```zsh
make stop
```

Stop and remove containers, networks:
```zsh
make down
```

Stop and remove containers, networks, images, volumes:
```zsh
make destroy
```

### Development

Open WordPress in your browser:

```zsh
make open
```

Open WordPress dashboard in your browser:
```zsh
make dashboard
```
