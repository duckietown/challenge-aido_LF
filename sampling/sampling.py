#!/usr/bin/env python

import sys

from docker import DockerClient
from duckietown_docker_utils import ENV_REGISTRY, generic_docker_run, logger

# cmd=dt-make-scenarios
# image=$(AIDO_REGISTRY)/duckietown/challenge-aido_lf-simulator-gym:daffy-amd64
# cmd=docker run --rm -it -v $(PWD):$(PWD) -w $(PWD) --entrypoint /project/launch1.sh  $(image)
# dt-make-scenarios

image = "${%s}/duckietown/challenge-aido_lf-simulator-gym:daffy-amd64" % ENV_REGISTRY

rest = sys.argv[1:]
logname = "a.log"
container_name = None


client = DockerClient.from_env()
gdr = generic_docker_run(
    client,
    as_root=False,
    image=image,
    commands=rest,
    shell=False,
    docker_secret=None,
    docker_username=None,
    dt1_token=None,
    development=True,
    container_name=container_name,
    pull=False,
    read_only=False,
    detach=True,
    logname=logname,
    share_tmp=False,
    # working_dir='/tmp',
    # entrypoint="xvfb-run",
    entrypoint="/project/launch1.sh",
)
if gdr.retcode:
    logger.error(gdr.message)

sys.exit(gdr.retcode)
