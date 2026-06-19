#!/bin/bash
set -e

cd /resume/CV

pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex

cp main.pdf /resume/resume.pdf