# Image building
docker build -t django-docker:0.0.1 .

# Docker composition
docker-compose down
docker-compose pull
docker-compose up
docker-compose build # To rebuild
docker-compose exec web python mysite/manage.py migrate
docker-compose exec web python mysite/manage.py createsuperuser
docker-compose exec web python mysite/manage.py makemigrations --empty myapp
python mysite/manage.py startapp myapp

# Misc
brew install postgresql
pip install psycopg2
pip list --outdated
pip install --upgrade wheel
pip install --upgrade setuptools
env LDFLAGS="-I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib" pip install psycopg2