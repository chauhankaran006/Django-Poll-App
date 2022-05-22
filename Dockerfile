FROM vclick2cloud/nanoserver:1.0

RUN md c:\pollapp

WORKDIR c:/pollapp

COPY . c:/pollapp

RUN python -m pip install --upgrade pip

RUN pip install -r requirements.txt

RUN cmd python manage.py makemigrations

EXPOSE 8000

CMD python manage.py runserver 0.0.0.0:8000
