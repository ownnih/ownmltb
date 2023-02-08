# using own builder 
FROM ghcr.io/troublescoope/docker:delta-mltb

ENV PATH="/opt/venv/bin:$PATH"
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY . .
CMD ["bash", "start.sh"]
