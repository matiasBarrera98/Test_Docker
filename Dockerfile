FROM python:3.10-slim

WORKDIR  /code

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/matiasBarrera98/Test_Docker.git .
RUN pip install -r requirements.txt

EXPOSE 8501

CMD ["streamlit", "run", "src/app.py"]