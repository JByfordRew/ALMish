
@echo off
docker-compose down

rem TODO try to call sub batch file
cat ./backup/gogsdata.tar.bz2 | docker run -i -v gogsdata:/volume --rm loomchild/volume-backup restore -
cat ./backup/teamcitydata.tar.bz2 | docker run -i -v teamcitydata:/volume --rm loomchild/volume-backup restore -
cat ./backup/teamcitylogs.tar.bz2 | docker run -i -v teamcitylogs:/volume --rm loomchild/volume-backup restore -
cat ./backup/sqldata.tar.bz2 | docker run -i -v sqldata:/volume --rm loomchild/volume-backup restore -
cat ./backup/mediawikiimages.tar.bz2 | docker run -i -v mediawikiimages:/volume --rm loomchild/volume-backup restore -
cat ./backup/mediawikidata.tar.bz2 | docker run -i -v mediawikidata:/volume --rm loomchild/volume-backup restore -
