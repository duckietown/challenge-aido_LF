
# define-challenge:
# 	echo REMOVED
DTC=dts challenges
DTC=dt-challenges-cli

define-challenge:  \
	define-challenge-LF-norm-vali \
	define-challenge-LF-norm-test \
	define-challenge-LF-full-vali \
	define-challenge-LF-full-test \
	define-challenge-LF-state-vali \
	define-challenge-LF-state-test \
	\
	define-challenge-LFP-norm-vali \
	define-challenge-LFP-norm-test \
	define-challenge-LFP-full-vali \
	define-challenge-LFP-full-test \
	define-challenge-LFP-state-vali \
	define-challenge-LFP-state-test \
	\
	define-challenge-LFV-full-vali \
	define-challenge-LFV-full-test \
	define-challenge-LFV-norm-vali \
	define-challenge-LFV-norm-test \
	define-challenge-LFV-state-vali \
	define-challenge-LFV-state-test \
	\
	define-challenge-LFV_multi-norm-vali \
	define-challenge-LFV_multi-norm-test \
	define-challenge-LFV_multi-full-vali \
	define-challenge-LFV_multi-full-test \
	define-challenge-LFV_multi-state-vali \
	define-challenge-LFV_multi-state-test \
	\
	define-challenge-LFVI-norm-vali \
	define-challenge-LFVI-norm-test \
	define-challenge-LFVI-full-vali \
	define-challenge-LFVI-full-test \
	define-challenge-LFVI-state-vali \
	define-challenge-LFVI-state-test \
	\
	define-challenge-LFI-norm-vali \
	define-challenge-LFI-norm-test \
	define-challenge-LFI-full-vali \
	define-challenge-LFI-full-test \
	define-challenge-LFI-state-vali \
	define-challenge-LFI-state-test \
	\
	define-challenge-LFVI_multi-norm-vali \
	define-challenge-LFVI_multi-norm-test \
	define-challenge-LFVI_multi-full-vali \
	define-challenge-LFVI_multi-full-test \
	define-challenge-LFVI_multi-state-vali \
	define-challenge-LFVI_multi-state-test \
	\
	define-challenge-lx22-BV1 \
	define-challenge-GT \
	define-special-sanity


sample-%:
	 $(MAKE) -C sampling sampled/$*


define-challenge-%: sample-%
	$(DTC) define  --write-debug $@  --config $*.challenge.yaml --replicate sim:4

define-challenge-lx22-BV1: # sample-mooc-BV1
	$(DTC) define --write-debug $@ --config lx22-BV1.challenge.yaml --replicate sim:5

define-challenge-GT:
	$(DTC) define  --write-debug $@  --config LFV_multi-state-GT-vali.challenge.yaml --replicate sim:3




define-special-sanity: define-special-sanity1 define-special-sanity2 define-special-sanity3

define-special-sanity1:
	$(DTC) define --write-debug $@ --config aido-hello-sim-validation.challenge.yaml
define-special-sanity2:
	$(DTC) define --write-debug $@  --config aido-hello-sim-full-validation.challenge.yaml
define-special-sanity3:
	$(DTC) define --write-debug $@  --config aido-hello-sim-state-validation.challenge.yaml

#
#define-challenge-LFP2: sample-sanity
#	./make_challenges.py
#	$(DTC) define --config LFP2.challenge.yaml


#

#
#black:
#	black -l 120 -t py38 .

baselines-submit:
	make -C baselines



quick:
	make -C ../../src/aido-base-python3 build
	make -C ../../src/gym-duckietown build
	make -C ../../aido/challenge-aido_LF-simulator-gym build
	make -C ../../aido/challenge-aido_LF-experiment_manager build


BUILD=dt-build_utils-cli aido-container-build --use-branch daffy --ignore-untagged --ignore-dirty --force-login --push --platforms linux/amd64,linux/arm64 --buildx

dn=..

build-evals:
	# $(BUILD) -C ../../src/aido-base-python3
	# $(BUILD) -C ../../src/gym-duckietown
	# $(BUILD) -C ../../aido/challenge-aido_LF-simulator-gym
	$(BUILD) -C ../../aido/challenge-aido_LF-experiment_manager
build-npcs:
	$(BUILD) -C ../../src/aido-base-python3
	$(BUILD) -C ${dn}/challenge-aido_LF-baseline-simple-yield
	$(BUILD) -C ${dn}/challenge-aido_LF-minimal-agent-full
	$(BUILD) -C ${dn}/challenge-aido_LF-minimal-agent-state
	$(BUILD) -C ${dn}/challenge-aido_LF-minimal-agent
	$(BUILD) -C ${dn}/challenge-aido_LF-template-pytorch
	$(BUILD) -C ${dn}/challenge-aido_LF-template-random
	$(BUILD) -C ${dn}/challenge-aido_LF-template-ros
	$(BUILD) -C ${dn}/challenge-aido_LF-template-tensorflow

	$(BUILD) -C ${dn}/challenge-aido_LF-baseline-RPL-ros
	$(BUILD) -C ${dn}/challenge-aido_LF-baseline-duckietown
	$(BUILD) -C ${dn}/challenge-aido_LF-baseline-duckietown-ml
