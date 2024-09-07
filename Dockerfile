FROM python:3.10

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip install -U pip && pip install -U -r requirements.txt
WORKDIR /app

COPY . .

# Expose port 8080 for your application (replace with your desired port)
EXPOSE 8080

CMD ["python", "bot.py
