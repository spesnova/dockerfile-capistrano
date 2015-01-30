# Capistrano [![Docker Repository on Quay.io](https://quay.io/repository/spesnova/capistrano/status "Docker Repository on Quay.io")](https://quay.io/repository/spesnova/capistrano)
Use capistrano as one-off container.

## SUPPORTED TAGS

* `latest`
 * Capistrano 3.0.1
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

### `cap` command on CoreOS
Create `/opt/bin/cap`

```bash
#!/bin/bash

set -e

docker run \
  --rm \
  -it \
  --name capistrano \
  -v /path/to/.ssh:/capistrano/.ssh \
  quay.io/spesnova/capistrano \
  cap $@
```

then you can `cap` command on CoreOS machine.

```bash
core@core-01 ~ $ cap --version
Capistrano Version: 3.0.1 (Rake Version: 10.4.2)
```

## LISENCE
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)
