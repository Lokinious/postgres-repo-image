# PostgreSQL Repository Image

This repository contains a Dockerfile for building a PostgreSQL Docker image with a specified username, password, and default schema. It's designed to be a starting point for setting up a PostgreSQL container for development or testing purposes.

## Prerequisites

Before you begin, ensure that you have Docker or Podman installed on your system. If you don't have them installed, you can download them from the official websites:

- [Docker](https://www.docker.com/get-started)
- [Podman](https://podman.io/getting-started/installation)

## Cloning the Repository

To clone this repository, use the following command:

```bash
git clone https://github.com/Lokinious/postgres-repo-image.git
```

## Usage
Navigate to the cloned repository directory:
```bash
cd postgres-repo-image
```

## Building the Docker Image
Build the Docker image using the provided Dockerfile:

```bash
docker build -t my-postgres-image .
```

## Running the PostgreSQL Container
Once the image is built, run a PostgreSQL container with the following command:

```bash
docker run --name my-postgres-container -p 5432:5432 -d my-postgres-image
```

This command starts a container named my-postgres-container, maps port 5432 from the container to the host, and runs the container in the background.

## Environment Variables
The following environment variables are available to customize the PostgreSQL setup:

POSTGRES_USER: PostgreSQL username (default: admin)
POSTGRES_PASSWORD: PostgreSQL password (default: admin)
POSTGRES_DB: Default PostgreSQL database (default: myfirstschema)
Adjust these variables in the Dockerfile to suit your requirements.


