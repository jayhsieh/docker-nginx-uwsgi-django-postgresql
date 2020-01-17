#!/usr/bin/env bash
set -e
set -u

# ====================================================
# It is customized for nyself, so do not COPY directly
# ====================================================

cd project
rm -r manage.py
sudo /bin/rm -rf myDjangoWebsite/
sudo /bin/rm -rf script_user_friendly/
sudo /bin/rm -rf templates/
sudo /bin/rm -rf static/
