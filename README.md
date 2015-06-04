# Docker image for Superhero module
This Container builds upon the Enonic XP image from `enonic/xp-app` and includes the superhero module from [https://github.com/enonic/module-superhero-blog]() downloaded from the official enonic repository

## Building the image
To build the image, either build from local files:
```
docker build --rm -t superhero-site .
```

Or direcly from the git repository:
```
docker build --rm -t superhero-site https://github.com/drerik/docker-enonic-xp-superhero
```

## Running the application
To run the application, simply run the following command after building the image as described above

```
$ docker run -d --name superhero -p 8080 superhero-site
```
