# Django with AWS S3 and PythonAnywhere
This is a django project template that is production-ready for AWS S3 static/media file storage and PythonAnywhere database backends.

## Getting Started
### Python Dependency Management
[Poetry](https://python-poetry.org/docs/) is used as our python dependency management framework. All packages should be maintained with Poetry using the ```add``` command. If any changes are made they should be converted into a requirements.txt file using the following Poetry command:
```bash
$ poetry export --without-hashes --format=requirements.txt > requirements.txt
```
