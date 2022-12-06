# [Roots/Bedrock](https://github.com/roots/bedrock) Development Template (Apache + MySQL)

## About Bedrock

See [Bedrock README.md](bedrock.README.md).

## Basic Usage

Prepare env files:

```zsh
% cp .env.example .env
% cp .env.local.example .env.local
```

Container lifecycle:
```
# Create and start containers
% make up

# Stop services
% make stop

# Stop and remove containers, networks
% make down

# Stop and remove containers, networks, images, volumes
% make destroy
```

Development:
```
# Open WordPress in your browser
% make open
```
