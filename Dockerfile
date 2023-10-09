FROM jupyter/base-notebook

WORKDIR /repo

ADD . .

RUN --mount=type=cache,target=/root/.cache pip install -r ./requirements.txt

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]


