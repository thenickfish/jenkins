# Jenkins - thenickfish style

This repository contains the configuration for a Jenkins instance, configured the way I like, including plugin installation and configuration. The idea is that there should be no manual setup required after running this code.

## Installation

1. Install docker
   - if you're on a windows machine, ensure you're running linux containers
2. Ensure you've initialized a docker swarm (even if it's only a single node)
   ```bash
   docker swarm init
   ```
3. Create the appropriate secrets needed by docker-stack.yml
   ```bash
   docker secret create {secret_name} {./secret-file.txt}
   # alternatively without a file (for powershell)
   "{something_secret}" | docker secret create {secret_name} -
   ```
4. Run the following in bash (or powershell)
   ```bash
   docker build -t thenickfish-jenkins .
   docker stack deploy -c docker-stack.yml jenkins
   ```

## Usage

Point your browser to http://localhost:8080

## Contributing

1. Fork this repository and make your changes
2. Submit a pull request for review
