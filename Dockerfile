FROM fedora:32

RUN dnf -y update && dnf -y install \
    texlive-collection-latexrecommended \
    texlive-collection-fontsrecommended \
    texlive-collection-pictures \
    texlive-collection-science \
    texlive-collection-langcyrillic \
    texlive-collection-latexextra \
    texlive-latex \
    texlive-pdftex \
    texlive-fontawesome5 \
    texlive-tcolorbox \
    texlive-l3packages \
    texlive-carlito \
    dvipng \
    google-crosextra-carlito-fonts \
    && dnf clean all

WORKDIR /resume

COPY . .

RUN sed -i 's/\r$//' build.sh

CMD ["bash", "build.sh"]