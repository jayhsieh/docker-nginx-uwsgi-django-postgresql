#!/usr/bin/env bash
set -e
set -u

# create a django project which name is myDjangoWebsite
docker-compose run --rm web django-admin startproject myDjangoWebsite .
# create a new application which name is script_user_friendly 
docker-compose run --rm web python manage.py startapp script_user_friendly
sudo chown -R ${USER}:${USER} .
cp ./project/conf/settings.py ./project/myDjangoWebsite/.

# =========================================================================
# Below content is customized for me, so please do not use it directly.
# =========================================================================
dockerProjectPath="${HOME}/quant_master/src/main/quant/docker/docker-nginx-uwsgi-django-postgresql-master/20200112/project"

cd /home/jay/quant_master/src/main/quant/projects_py/myDjangoWebsite
cp ./myDjangoWebsite/* ${dockerProjectPath}/myDjangoWebsite
cp -r ./script_user_friendly ${dockerProjectPath}
cp -r ./static ${dockerProjectPath}
cp -r ./templates ${dockerProjectPath}
