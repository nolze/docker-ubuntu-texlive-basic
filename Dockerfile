FROM ubuntu

MAINTAINER nolze <nolze@archlinux.us>

ARG CTAN_MIRROR="http://mirror.ctan.org/systems/texlive/tlnet/"
ARG TEXLIVE_VERSION="2018"

ENV PATH /usr/local/texlive/$TEXLIVE_VERSION/bin/x86_64-linux:$PATH

RUN apt-get update
RUN apt-get install --no-install-recommends -y \
      ghostscript \
      libpaper-utils \
      perl \
      wget \
      xzdec
RUN mkdir /tmp/install-tl-unx
RUN wget -qO - http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
    | tar xz -C /tmp/install-tl-unx --strip-components=1
RUN printf "%s\n" \
      "selected_scheme scheme-basic" \
      "option_doc 0" \
      "option_src 0" \
      > /tmp/install-tl-unx/texlive.profile
RUN /tmp/install-tl-unx/install-tl \
      --profile=/tmp/install-tl-unx/texlive.profile
RUN tlmgr option repository $CTAN_MIRROR
RUN tlmgr install \
      collection-basic \
      collection-bibtexextra \
      collection-fontsrecommended \
      collection-latex \
      collection-latexextra \
      collection-latexrecommended \
      latexmk \
      xetex
RUN rm -fr /tmp/install-tl-unx

WORKDIR /workdir

VOLUME ["/workdir"]
