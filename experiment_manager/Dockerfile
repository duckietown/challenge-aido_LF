ARG AIDO_REGISTRY
FROM ${AIDO_REGISTRY}/duckietown/aido-base-python3:daffy-aido4


COPY requirements.* ./
#RUN pip uninstall -y aido-protocols-daffy-aido4
RUN pip install -U -r requirements.resolved
RUN pip list
RUN pipdeptree



COPY . .

RUN  python3 -c "from  experiment_manager import *"

ENTRYPOINT ["python3", "experiment_manager.py"]
