# Docker Registry Management
This is a python based CLI script which can be used to manage self hosted docker registry.
It can 

 - List all the repos
 - List all the tags
 - Delete tags from a repo
 - Delete all tags from all repos except the specified recent number of tags

Create a `.env` file in the same directory with following variables
```
DOCKER_USER = 'xxxxxxxxxx'
DOCKER_PASS = 'xxxxxxxxxx'
REPO = 'https://registry.example.com'
```

## Usage
```
$ drm-cli --list
$ drm-cli --tag [REPO]
$ drm-cli --delete [REPO] [TAG]
$ drm-cli ---delete-all-but-keep-last [NUMBER]
$ drm-cli --help
```

## Requirements
Following python modules are required

 - requests
 - python-dotenv

## Cronjob file for k8
`cronjob.yaml` is also present in the repo.
You can use it in your k8 cluster.
