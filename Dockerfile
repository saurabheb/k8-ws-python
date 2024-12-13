
FROM python:latest
WORKDIR /order_service
COPY ../requirements.txt .
RUN pip install -r requirements.txt
COPY order_service /order_service
EXPOSE 8083
CMD [ "python", "order_app.py" ]