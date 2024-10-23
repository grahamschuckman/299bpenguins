# Commands

`cd penguin-web`

`docker build .`

`docker images`

`docker tag fdfec33be973 graham-schuckman-penguins`

`docker images`

`docker run -p 8080:80 graham-schuckman-penguins`

# To build on a Mac but run on a regular amd64 x86 architecture:

`docker buildx build --platform linux/amd64 -t graham-schuckman-penguins-amd64 .`

`docker tag graham-schuckman-penguins-amd64 341320276178.dkr.ecr.us-east-1.amazonaws.com/wiz-repository:graham-schuckman-penguins-amd64`

`docker push 341320276178.dkr.ecr.us-east-1.amazonaws.com/wiz-repository:graham-schuckman-penguins-amd64`

`docker inspect --format='{{index .RepoDigests 0}}' graham-schuckman-penguins-amd64`

# Wiz CLI Parameters

```
export WIZ_CI_COLLECT_PARAMS="true"
export WIZ_CI_USERNAME="grahamschuckman"
export WIZ_CI_REPO="https://github.com/grahamschuckman/299bpenguins"
export WIZ_CI_COMMIT_HASH="41ada8ff7b9ca59642355c80164281f89b0a9203"
export WIZ_CI_BRANCH_NAME="main"
~/wizcli docker scan --image 341320276178.dkr.ecr.us-east-1.amazonaws.com/wiz-repository:graham-schuckman-penguins-amd64 --dockerfile Dockerfile
~/wizcli docker tag --image 341320276178.dkr.ecr.us-east-1.amazonaws.com/wiz-repository:graham-schuckman-penguins-amd64
```