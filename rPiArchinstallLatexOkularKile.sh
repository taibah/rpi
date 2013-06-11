#!/bin/bash
sudo pacman -Syy texlive-most
sudo pacman -Syy texlive-lang
echo 'export PATH=$PATH:/opt/texlive/bin' >> ~/.bashrc
sudo pacman -Syy kdegraphics-okular
sudo pacman -Syy kile
