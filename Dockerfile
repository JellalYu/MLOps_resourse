FROM python
RUN pip install boto3
RUN pip3 install psycopg2
RUN pip install configparser
RUN pip install datetime
RUN pip install awscli
RUN mkdir /src
COPY . /src 
# CMD ["python","/src/index.py"]

