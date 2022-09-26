# Django with AWS S3 and PythonAnywhere
This is a django project template that is production-ready for AWS S3 static/media file storage and PythonAnywhere database backends.

## Getting Started
The entire application is containorized using Docker leveraging a standard NGINX reverse proxy server image and a web container holding the application. There is also a local database container for local development but for production a PythonAnywhere MySQL database instance can be used. 
1. Bring up the docker containers run the following command in the root directory of the project (i.e. not the app directory):
``` bash
$ docker-compose up -d --build
```
2. Once the container is built and running you should collect all the static files using the following command:
```bash
$ docker-compose exec web python manage.py collectstatic
``` 
Depending on whether you are in production mode or not will determine whether the static files are served/saved to your connected S3 instance or to your local docker volume.

### Python Dependency Management
[Poetry](https://python-poetry.org/docs/) is used as our python dependency management framework. All packages should be maintained with Poetry using the ```add``` command. If any changes are made they should be converted into a requirements.txt file using the following Poetry command:
```bash
$ poetry export --without-hashes --format=requirements.txt > requirements.txt
```
