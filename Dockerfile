FROM python:3.12-slim

WORKDIR /app

COPY app ./app

EXPOSE 8000

RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

CMD ["python", "app/app.py"]
