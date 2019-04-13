
@echo off
call ./docker/ci/createVolumes.bat
cd ./docker/ci
docker-compose up -d
cd ../../
