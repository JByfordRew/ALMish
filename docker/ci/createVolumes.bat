
@echo off
call ./docker/ci/volumes/create.bat gogsdata
call ./docker/ci/volumes/create.bat teamcitydata
call ./docker/ci/volumes/create.bat teamcitylogs
call ./docker/ci/volumes/create.bat sqldata
call ./docker/ci/volumes/create.bat mediawikiimages
call ./docker/ci/volumes/create.bat mediawikidata
