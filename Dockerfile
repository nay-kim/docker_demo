FROM python:3.8.2
COPY app.py app.py
COPY templates templates
COPY requiremnts.txt requiremnts.txt
RUN pip install -r requiremnts.txt
# CMD [ "python3", "-m" , "flask", "--app", "app", "run", "-p", "5000", "-h", "0.0.0.0"]
CMD python3 -m flask --app app run -p 5000 -h 0.0.0.0