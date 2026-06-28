FROM python:3.12-slim
WORKDIR /app
COPY app ./app
EXPOSE 8000
RUN groupadd --system appgroup && \
    useradd --system --no-create-home --gid appgroup appuser
USER appuser
CMD ["python", "app/app.py"]
