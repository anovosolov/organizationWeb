How to install
Mac
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install node
npm install -g grunt-cli bower

npm install -g grunt-cli bower
npm install
bower install
grunt


#create virtual env
virtualenv env
#activate env
source env/bin/activate
#install Django dependencies
pip install -r requirements.txt

#python setup.py install
python setup.py develop

python manage.py makemigrations --noinput
python manage.py migrate --noinput
python manage.py createsuperuser --username=root --email=root@example.com --noinput
python manage.py runserver


#make create_database; make make_fixtures


Please see
http://localhost:8000/crud
Organization CRUD operation
CRUD - Create, Update , Delete
It uses fake data


http://localhost:8000/editor
Organization CRUD operation
uses django backend (in progress)