FROM python
ENV LISTEN_PORT=5755
EXPOSE 5755
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
# Shell form (/bin/sh)
# CMD python -u npi_app.py
# Exec form
CMD ["python","-u", "npi_app.py"]