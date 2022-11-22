
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
	define-challenge-sanity


sample-%:
	 $(MAKE) -C sampling sampled/$*


define-challenge-%: sample-%
	$(DTC) define  --write-debug $@  --config $*.challenge.yaml --replicate sim:4

define-challenge-mooc-BV1: # sample-mooc-BV1
	$(DTC) define --write-debug $@ --config mooc-BV1.challenge.yaml --replicate sim:5

define-challenge-GT:
	$(DTC) define  --write-debug $@  --config LFV_multi-state-GT-vali.challenge.yaml --replicate sim:3




define-challenge-sanity: define-challenge-sanity1 define-challenge-sanity2 define-challenge-sanity3

define-challenge-sanity1:
	$(DTC) define --write-debug $@ --config aido-hello-sim-validation.challenge.yaml
define-challenge-sanity2:
	$(DTC) define --write-debug $@  --config aido-hello-sim-full-validation.challenge.yaml
define-challenge-sanity3:
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
