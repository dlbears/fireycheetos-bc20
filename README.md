# Run with Docker

- ## Dependencies:
    - `docker` 
    - `docker-compose`
    - non-Linux hosts, X11 server

- ## Run:
    - `cd` to the project folder then `docker-compose up` (should launch the GUI)

- ## Troubleshooting:
    ### GUI
    1. make sure X11 allows incoming connections: `xhost +` (for Mac*, `xhost + ${HOSTNAME}`)
    2. check `docker-compose.yaml`
    References: 
        - * [Forwarding X11 gist, with XQuartz](https://gist.github.com/cschiewek/246a244ba23da8b9f0e7b11a68bf3285)
        - * [How to run GUI docker apps on MacOS Host](https://iamhow.com/How_To/Docker_How_To.html)
    

# Battlecode 2020 Scaffold

This is the Battlecode 2020 scaffold, containing an `examplefuncsplayer`. Read https://2020.battlecode.org/getting-started!

### Project Structure

- `README.md`
    This file.
- `build.gradle`
    The Gradle build file used to build and run players.
- `src/`
    Player source code.
- `test/`
    Player test code.
- `client/`
    Contains the client.
- `build/`
    Contains compiled player code and other artifacts of the build process. Can be safely ignored.
- `matches/`
    The output folder for match files.
- `maps/`
    The default folder for custom maps.
- `gradlew`, `gradlew.bat`
    The Unix (OS X/Linux) and Windows versions, respectively, of the Gradle wrapper. These are nifty scripts that you can execute in a terminal to run the Gradle build tasks of this project. If you aren't planning to do command line development, these can be safely ignored.
- `gradle/`
    Contains files used by the Gradle wrapper scripts. Can be safely ignored.

