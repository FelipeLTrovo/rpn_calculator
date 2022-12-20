# Rpn Calculator

👋 Hello and welcome!

This algorithm evaluates expressions provided in Reverse Polish (Postfix) Notation.

![image](https://user-images.githubusercontent.com/15835917/208560091-b5b806cc-c1ed-45f6-bfd3-b29d07e39d2c.png)


**:warning: Hint:** This project is configured to run under Docker, it is completely optional though.

- **🛠 Docker Development Environment**
    - :computer: [Linux Ubuntu LTS](https://ubuntu.com/download/desktop)
    - 🐳 [Docker](https://docs.docker.com/engine/installation/)
    - 🐳 [Docker Compose](https://docs.docker.com/compose/)
    - **💡 Hint:** [Docker Documentation](https://docs.docker.com/)

# Setup

## 🐳 With Docker Development Environment

After installing both docker and docker-compose, in the project root directory, execute:

```sh
docker-compose run web
```

In order to run the test suite, execute the command below:

```sh
docker-compose run web rspec
```

## 🐳 Without Docker Development Environment

In the project root directory, execute:

```sh
ruby main.rb
```

In order to run the test suite, execute the command below in the root directory:

```sh
rspec
```
