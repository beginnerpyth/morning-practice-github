FROM python:3.11

WORKDIR /home/app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["uvicorn", "fastapproject:med", "--host", "0.0.0.0", "--port", "10000"]