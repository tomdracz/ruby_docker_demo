# Ruby docker test
Barebones Rack app to demo Docker

## Usage
Build the Docker image
```bash
  docker image build -t ruby_docker_demo .
```
Run the container
```bash
    docker run -i -t -p 5959:5959 ruby_docker_demo
```
Access the container at 0.0.0.0:5959
