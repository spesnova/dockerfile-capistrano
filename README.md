# Capistrano [![Docker Repository on Quay.io](https://quay.io/repository/spesnova/capistrano/status "Docker Repository on Quay.io")](https://quay.io/repository/spesnova/capistrano)
Use capistrano as one-off container.

## SUPPORTED TAGS

* `latest`
 * Capistrano 3.3.5
 * Ruby 2.1.5
 * Ubuntu 14.04 LTS

## HOW TO USE

```bash
$ docker run \
    --rm \
    -it \
    --name capistrano \
    -v /path/to/.ssh:/capistrano/.ssh \
    quay.io/spesnova/capistrano \
    cap -T
```

Typing this command every time will be annoying.
So I recommend to create a small wrap script.
For example, create `/opt/bin/cap` and add execute permission to it.

```bash
$ touch /opt/bin/cap && cdmod +x /opt/bin/cap
```

```bash
#!/bin/bash

set -e

docker kill capistrano > /dev/null 2>&1 || true
docker rm   capistrano > /dev/null 2>&1 || true
docker run \
  --rm \
  -it \
  --name capistrano \
  -v /path/to/.ssh:/capistrano/.ssh \
  quay.io/spesnova/capistrano \
  cap $@
```

Then you can use `cap` command on host machine.

```bash
$ cap --version
Capistrano Version: 3.3.5 (Rake Version: 10.4.2)
```

### Environment Variables
`LOG_LEVEL`

This sets Capistranos log level.
`trace`, `warn`, `info`, `warn`, `error`, `fatal` are available. (default to `info`)

## LISENCE
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)
