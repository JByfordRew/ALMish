f7
@echo off
docker-compose down
docker volume rm gogsdata
docker volume rm teamcitydata
docker volume rm teamcitylogs
