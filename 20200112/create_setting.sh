docker-compose run --rm web django-admin startproject myDjangoWebsite .
sudo chown -R ${USER}:${USER} .
cp ./project/conf/settings.py ./project/myDjangoWebsite/.
