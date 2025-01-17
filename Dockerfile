FROM python:3.8

WORKDIR /usr/src/app

COPY ./project/techtrends/requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY ./project/techtrends ./

RUN python init_db.py

EXPOSE 3111

CMD [ "python", "app.py" ]