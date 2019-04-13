
@echo off
docker run -v %1%:/volume --rm loomchild/volume-backup backup - > ./backup/%1%.tar.bz2

