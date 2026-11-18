FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN python -m pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLET_FORCE_WEB_SERVER=true
ENV FLET_SERVER_PORT=8550
ENV FLET_NO_CDN=true

EXPOSE 8550

CMD ["python", "src/app.py"]
