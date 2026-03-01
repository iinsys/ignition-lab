# Docker Notes

## What is Docker?
Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. With Docker, you can manage your infrastructure in the same ways you manage your applications. By taking advantage of Docker’s methodologies for shipping, testing, and deploying code quickly, you can significantly reduce the delay between writing code and running it in production.

## Docker Architecture
Docker uses a client-server architecture. The Docker client talks to the Docker daemon, which does the heavy lifting of building, running, and distributing your Docker containers. The Docker client and daemon can run on the same system, or you can connect a Docker client to a remote Docker daemon. The Docker client and daemon communicate using a REST API, over UNIX sockets or a network interface.

```mermaid
graph TD
    subgraph Docker Host
        D[Docker Daemon]
        subgraph Containers
            C1[Container 1]
            C2[Container 2]
        end
        subgraph Images
            I1[Image 1]
            I2[Image 2]
        end
    end

    subgraph Registry
        R[Docker Registry]
    end

    Client -- docker build --> D
    Client -- docker pull --> D
    Client -- docker run --> D
    D -- Pulls image --> R
    D -- Pushes image --> R
    D -- Creates/Runs --> C1
    D -- Creates/Runs --> C2
    I1 -- Used to create --> C1
    I2 -- Used to create --> C2

```
