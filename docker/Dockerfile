FROM python:3.6-jessie
RUN pip install voila pandas ipywidgets bqplot ipyaggrid ipyvuetify ipyhc matplotlib ipympl ipyvolume scipy
RUN mkdir /voila
COPY start_voila.sh /voila/start_voila.sh
RUN chmod 777 /voila/start_voila.sh
ENTRYPOINT /voila/start_voila.sh
