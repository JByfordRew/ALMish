# ALMish
Dockerised Application Lifecycle Management

# Continuous Integration and Delivery

## Maintenance
Starting and Stopping
- start.bat - docker compose up and opens browser tabs for you
- stop.bat - docker compose down

Backup and Restore
- backup.bat - stops CI and exports volumes to tar files to ./docker/ci/backup
- restore.bat - stops CI and import tar files to volumes from ./docker/ci/backup

Git syncing
-  gitsync.bat - pulls and pushes git to origin on the gogs repo

# tldr;

Continuous delivery by creating a clean architecture that can adapt to constant change and improvement.  Continuous Integration using modern technology with an aim to keep build and deployment time to a minimum.

Technologies used include
- Windows 10 - Windows OS
- Docker - https://www.docker.com from the outset including CI tooling
- Git - https://git-scm.com/ version control
- Gogs - Gogs.io a local git repository server
- Mailhog - https://github.com/mailhog/MailHog email interception
- TeamCity - https://www.jetbrains.com/teamcity CI Server

Techniques used include
- Clean Architecture, Uncle Bob Martin
- DDD - Domain Driven Design, Eric Evans and Vaughn Vernon
- CQRS - Command Query Responsibility Segregation, Greg Young
- Actor Model - getakka.net
- Event Sourcing - Single point of truth, Greg Young, Alberto Brandolini
- Event Storming - Gathering domain knowledge, Vaughn Vernon
- Microservices - delivering domain processes
- .NET Core
- .NET Standard
- Angular - because it is common practice (would prefer Aurelia as best practice!)

## Configuration
One prerequisite
- Install Docker - https://store.docker.com/editions/community/docker-ce-desktop-windows
- Keep set to Linux containers, do not switch to Windows containers.

The initial configuration performs the following
- Generate SSH Keys to enable the git repo to be shared with the CI Server and agents
- Docker compose to setup mailhog, gogs, teamcity server and agent
- Add urls to hosts file and opens browser tabs to mailhog, gogs, and teamcity

There are some manual steps that need to be done to configure gogs and teamcity
- Gogs - See ./setup/manualGogs.md
    - Create your repo to contain this git repo going forward
- TeamCity - See ./setup/manualTeamCity.md

Finally continue the automatic configuration steps to push this repo to gogs

### Notes
- Mounting volumes using Windows Docker issues
    - https://forums.docker.com/t/volume-mounts-in-windows-does-not-work/10693
    - https://github.com/docker/compose/issues/4675
    - https://rominirani.com/docker-on-windows-mounting-host-directories-d96f3f056a2c
    - https://loomchild.net/2017/03/26/backup-restore-docker-named-volumes/
    - Beware dont use Kitematic to view volumes or map them as this seems to destroy the data!
