from  python:3.8-slim

RUN pip3 install elasticsearch-curator

ADD curator.yaml ./
ADD delete.yaml ./
ADD run_script.sh ./

ENTRYPOINT (sed -i 's/change_elasticsearch_host/'"$ELASTICSEARCH_HOST"'/g' curator.yaml) && (sed -i 's/change_elasticsearch_port/'"$ELASTICSEARCH_PORT"'/g' curator.yaml) && (sed -i 's/change_pattern/'"$PATTERN"'/g' delete.yaml) && (sed -i 's/change_unitcount/'"$UNITCOUNT"'/g' delete.yaml) && (curator --config curator.yaml delete.yaml)

