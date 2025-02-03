FROM python:3.9-slim
WORKDIR /
RUN apt update && apt -y install curl wget ca-certificates wget libcurl4 libjansson4 libgomp1 libnuma-dev
# Copies the trainer code to the docker image.
COPY point /point
#port setup
EXPOSE 80
#run test
RUN python m/T*py
RUN ["python", "-m", "point.point"]
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "point.point"]
