# Docker container for running Gophish

[Gophish](https://github.com/gophish/gophish) - Gophish is an open-source phishing toolkit designed for businesses and penetration testers. It provides the ability to quickly and easily setup and execute phishing engagements and security awareness training.

***This container runs a custom version of GoPhish without any IOCs and signature + custom 404 page using a mod version of "phish.go" file (Original from [edermi-gophish_mods](https://github.com/edermi/gophish_mods/blob/master/controllers/phish.go))***


## Usage

***The "gophish.env" file contains the environment variables that override the Gophish settings on the "config.json" file + in bonus the custom recipient parameter to track user clicks***

### Start/Stop Gophish container

```shell
startGoPhish.sh
stopGoPhish.sh
```

### Get a bash shell in the container

```shell
docker exec -it gophish /bin/bash
```

### Gophish db(data) + Logs(log)

***Make sure to change permissions to "777" (I know it's dirty :scream:) on the "app" folder to allow Gophish user within the container to write data and logs properly***

```shell
./docker-gophish/app/
```

### Display Gophish container logs

```shell
docker logs gophish
```

### Remove all containers + images (clean install)

```shell
./docker-gophish/clean.sh
