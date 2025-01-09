#syntax=docker/dockerfile:1
FROM docker.io/tensorflow/tensorflow:2.11.1-gpu

RUN pip install --upgrade pip
RUN pip install notebook
RUN pip install scikit-learn
RUN pip install natsort
RUN pip install pillow
RUN pip install matplotlib 
RUN pip install papermill

CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]

