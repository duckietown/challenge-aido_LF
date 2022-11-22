dn=../..

submit=dt-challenges-cli submit --retire-same-label --impersonate 1639 --buildx

all:


#
#template-random:
#	dt-challenges-cli submit --config baselines.yaml
##
#	$(submit) -C ${dn}/challenge-aido_LF-baseline-JBR \
#	          --image ${DOCKER_REGISTRY}/duckietown/challenge-aido_LF-baseline-JBR:daffy

#	$(submit) -C ${dn}/challenge-aido_LF-baseline-RL-sim-pytorch \
#	          --image ${DOCKER_REGISTRY}/duckietown/challenge-aido_LF-baseline-RL-sim-pytorch:daffy
	$(submit) -C ${dn}/challenge-aido_LF-baseline-RPL-ros \
	          --image ${DOCKER_REGISTRY}/duckietown/challenge-aido_LF-baseline-RPL-ros:daffy
	$(submit) -C ${dn}/challenge-aido_LF-baseline-duckietown-ml \
	          --image ${DOCKER_REGISTRY}/duckietown/challenge-aido_LF-baseline-duckietown-ml:daffy
	$(submit) -C ${dn}/challenge-aido_LF-baseline-duckietown \
	          --image ${DOCKER_REGISTRY}/duckietown/challenge-aido_LF-baseline-duckietown:daffy
	$(submit) -C ${dn}/challenge-aido_LF-baseline-simple-yield \
	          --image ${DOCKER_REGISTRY}/duckietown/challenge-aido_LF-baseline-simple-yield:daffy
	$(submit) -C ${dn}/challenge-aido_LF-minimal-agent-full \
	          --image ${DOCKER_REGISTRY}/duckietown/challenge-aido_LF-minimal-agent-full:daffy
	$(submit) -C ${dn}/challenge-aido_LF-minimal-agent-state \
	          --image ${DOCKER_REGISTRY}/duckietown/challenge-aido_LF-minimal-agent-state:daffy
	$(submit) -C ${dn}/challenge-aido_LF-minimal-agent \
	          --image ${DOCKER_REGISTRY}/duckietown/challenge-aido_LF-minimal-agent:daffy

	$(submit) -C ${dn}/challenge-aido_LF-template-pytorch \
	          --image ${DOCKER_REGISTRY}/duckietown/challenge-aido_LF-template-pytorch:daffy
	$(submit) -C ${dn}/challenge-aido_LF-template-random \
	          --image ${DOCKER_REGISTRY}/duckietown/challenge-aido_LF-template-random:daffy
	$(submit) -C ${dn}/challenge-aido_LF-template-ros \
	          --image ${DOCKER_REGISTRY}/duckietown/challenge-aido_LF-template-ros:daffy
	$(submit) -C ${dn}/challenge-aido_LF-template-tensorflow \
	          --image ${DOCKER_REGISTRY}/duckietown/challenge-aido_LF-template-tensorflow:daffy
