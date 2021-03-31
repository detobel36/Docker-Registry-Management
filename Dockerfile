FROM python
COPY . /drm-cli
WORKDIR ./drm-cli
RUN ln -s /env/.env /drm-cli/.env
RUN pip install -r requirements.txt
CMD [ "python", "drm-cli", "--list" ]
