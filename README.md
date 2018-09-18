# docker-ubuntu-texlive-basic

Small TeX Live image on Ubuntu base, intended for automated build on CI tool.

Forked from [Paperist/docker-alpine-texlive-ja](https://github.com/Paperist/docker-alpine-texlive-ja).

## Usage

### Pull & Run

```bash
docker pull nolze/ubuntu-texlive-basic
docker run --rm -it -v $PWD:/workdir nolze/ubuntu-texlive-basic
```

### Setup

```bash
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
