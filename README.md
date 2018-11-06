## React App with CRA

This is a demo app created with create-react-app.

## Objective

Host this react-app on AWS with Docker

## Tech Stack

-   React
-   CI with Travis CI
-   Docker
-   AWS Hosting

## Purpose of Dockerfile

-   Dockerfile.dev
    -   Used for development
    -   maps local development folder to docker volumes. So, changes are reflected immediately in container
    -   Required only if development is done in docker environment
-   Dockerfile.test
    -   Runs test on travis-CI
-   Dockerfile
    -   Used to create Production build
    -   Copies Prod build to nginx docker image which in turn run on AWS
