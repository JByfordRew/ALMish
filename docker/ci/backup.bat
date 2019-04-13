
@echo off
docker-compose down
call ./volumes/backup.bat gogsdata
call ./volumes/backup.bat teamcitydata
call ./volumes/backup.bat teamcitylogs
call ./volumes/backup.bat sqldata
call ./volumes/backup.bat mediawikiimages
call ./volumes/backup.bat mediawikidata
