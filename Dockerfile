FROM python
ENV LISTEN_PORT=5755
EXPOSE 5755
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["python", "npi_app.py"]