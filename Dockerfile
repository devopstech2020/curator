from  python:3.8-slim

RUN pip3 install elasticsearch-curator

ADD curator.yaml ./
ADD delete.yaml ./
ADD run_script.sh ./

RUN chmod 755 run_script.sh

ENTRYPOINT ["./run/script.sh"]

