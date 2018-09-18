# docker-ubuntu-texlive-basic

[![Docker Automated build](https://img.shields.io/docker/automated/nolze/ubuntu-texlive-basic.svg)](https://hub.docker.com/r/nolze/ubuntu-texlive-basic/)
[![Docker Image Size](https://images.microbadger.com/badges/image/nolze/ubuntu-texlive-basic.svg)](https://microbadger.com/images/nolze/ubuntu-texlive-basic "Get your own image badge on microbadger.com")

Small TeX Live image on Ubuntu base, intended for automated build on CI tool. Forked from [Paperist/docker-alpine-texlive-ja](https://github.com/Paperist/docker-alpine-texlive-ja).

## Forks

* Japanese: [nolze/docker-ubuntu-texlive-ja](https://github.com/nolze/docker-ubuntu-texlive-ja)

## Usage

### Pull & Run

```bash
docker pull nolze/ubuntu-texlive-basic
docker run --rm -it -v $PWD:/workdir nolze/ubuntu-texlive-basic
```

### Setup

```bash
# Set appropriate mirror for speed; check out https://ctan.org/mirrors
tlmgr option repository <URL>
# Install collection for your language:
tlmgr install collection-langjapanese
```

### Compile

```bash
latexmk
```

## Development

### Build

```bash
docker build -t nolze/ubuntu-texlive-basic .
```

## Todo

* Add exmaples for CI

## References

* <https://ctan.org/mirrors>
* <https://packages.ubuntu.com/texlive-base>
* <https://github.com/Paperist/docker-alpine-texlive-ja>
* <http://takec.hatenablog.jp/entry/2017/09/18/091532>
