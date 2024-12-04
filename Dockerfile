FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .

#RUN pip install -U pip
RUN pip install --no-cache-dir -r requirements.txt

RUN python -m nltk.downloader stopwords

COPY training.py .
COPY test.py . 

#CMD ["python", "training.py"]
CMD ["python", "test.py"]


