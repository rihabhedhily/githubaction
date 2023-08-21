From python:3-alpine3.9
WORKDIR /api
copy requirements.txt ./
RUN pip install --upgrade pip
RUN python3 -m pip install -r requirements.txt
copy . /api
expose 3000 
cmd ["python", "./app.py"]
