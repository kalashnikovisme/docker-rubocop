# Rubocop Runner

Run Rubocop in CI without all the build. This container will take a folder of
Ruby code and test it with Rubocop. It was built so that we could build our
applications and run Rubocop against them in CI without having to install the
rest of our bundle.

## Usage

Mount your project at `/app` in the image and let Rubocop run wild:

`docker run --rm --volume "$PWD:/app" kalashnikovisme/rubocop`

You can also pass any arguments into the container just like running the regular
Rubocop binary:

```
# Only runs lint cops on only the Gemfile
docker run --rm --volume "$PWD:/app" --lint Gemfile
```

If a `.rubocop.yml` config file is found in the root of your project, the
image will pick it up for the tests.

## Build and push your own image

You can build and push your own image.

Just run:

```shell
USERNAME=your_name_on_docker_hub_or_another_registry VERSION=3.0.0 make build_and_push
```

## Update all ruby-versions

If you want to upgrade Dockerfile and update all ruby version images.

Just run

```shell
USERNAME=your_name_on_docker_hub_or_another_registry ./all_versions.sh
```
