
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
	define-challenge-mooc-BV1 \
	define-challenge-GT \
	define-challenge-sanity


sample-%:
	 $(MAKE) -C sampling sampled/$*


define-challenge-%: sample-%
	$(DTC) define --config $*.challenge.yaml --replicate sim:4

define-challenge-mooc-BV1: # sample-mooc-BV1
	$(DTC) define --config mooc-BV1.challenge.yaml --replicate sim:5

define-challenge-GT:
	$(DTC) define --config LFV_multi-state-GT-vali.challenge.yaml --replicate sim:3


# LF
#define-challenge-LF-norm-vali: sample-LF-norm-vali
#	$(DTC) define --config LF-norm-vali.challenge.yaml --replicate sim:4
#define-challenge-LF-norm-test: sample-LF-norm-test define-challenge-LF-norm-vali define-challenge-sanity
#	$(DTC) define --config LF-norm-test.challenge.yaml --replicate sim:4
#define-challenge-LF-full-vali: sample-LF-full-vali
#	$(DTC) define --config LF-full-vali.challenge.yaml --replicate sim:4
#define-challenge-LF-full-test: sample-LF-full-test
#	echo TODO
# LFP
#
#define-challenge-LFP-norm-vali: sample-LFP-norm-vali
#	$(DTC) define --config LFP-norm-vali.challenge.yaml --replicate sim:4
#
#define-challenge-LFP-norm-test: sample-LFP-norm-test define-challenge-LFP-norm-vali
#	$(DTC) define --config LFP-norm-test.challenge.yaml --replicate sim:4
#
#define-challenge-LFP-full-vali: sample-LFP-full-vali
#	$(DTC) define --config LFP-full-vali.challenge.yaml --replicate sim:4
#
#define-challenge-LFP-full-test: sample-LFP-full-test
#	echo TODO

# LFV
#
#define-challenge-LFV-norm-vali: sample-LFV-norm-vali define-challenge-LF-norm-vali define-challenge-sanity
#	$(DTC) define --config LFV-norm-vali.challenge.yaml --replicate sim:4
#
#define-challenge-LFV-norm-test: sample-LFV-norm-test define-challenge-LFV-norm-vali define-challenge-LF-norm-test define-challenge-sanity
#	$(DTC) define --config LFV-norm-test.challenge.yaml --replicate sim:4
#
#define-challenge-LFV-full-vali: sample-LFV-full-vali
#	$(DTC) define --config LFV-full-vali.challenge.yaml --replicate sim:4
#
#define-challenge-LFV-full-test: sample-LFV-full-test
#	$(DTC) define --config LFVI-full-vali.challenge.yaml --replicate sim:4

# LFI

## LFVI
#
#define-challenge-LFVI-norm-vali: sample-LFVI-norm-vali define-challenge-LFV-norm-vali define-challenge-sanity
#	$(DTC) define --config LFVI-norm-vali.challenge.yaml --replicate sim:4
#
#define-challenge-LFVI-norm-test: sample-LFVI-norm-test \
#	define-challenge-LFVI-norm-vali define-challenge-LFV-norm-test \
#	define-challenge-sanity
#	$(DTC) define --config LFVI-norm-test.challenge.yaml --replicate sim:4
#
#define-challenge-LFVI-full-vali: sample-LFVI-full-vali
#	$(DTC) define --config LFVI-full-vali.challenge.yaml --replicate sim:4
#
#define-challenge-LFVI-full-test: sample-LFVI-full-test
#	$(DTC) define --config LFVI-full-test.challenge.yaml --replicate sim:4
#
## LFV_multi
#
#
#
#define-challenge-LFV_multi-norm-vali: sample-LFV_multi-norm-vali define-challenge-sanity
#	$(DTC) define --config LFV_multi-norm-vali.challenge.yaml --replicate sim:2
#
#define-challenge-LFV_multi-norm-test: sample-LFV_multi-norm-test define-challenge-sanity define-challenge-LFV_multi-norm-vali
#	$(DTC) define --config LFV_multi-norm-test.challenge.yaml --replicate sim:2
#
##
##define-challenge-LFV_multi-full-vali: sample-LFV_multi-full-vali
##	$(DTC) define --config LFV_multi-full-vali.challenge.yaml
#
#
#define-challenge-LFV_multi-full-test: sample-LFV_multi-full-test define-challenge-sanity define-challenge-LFV_multi-norm-vali
#	$(DTC) define --config LFV_multi-full-test.challenge.yaml --replicate sim:2
#
## LFVI_multi
#
##
##define-challenge-LFVI_multi-norm-vali: sample-LFVI_multi-norm-vali define-challenge-sanity
##	$(DTC) define --config LFVI_multi-norm-vali.challenge.yaml
#
#define-challenge-LFVI_multi-norm-test: sample-LFVI_multi-norm-test define-challenge-sanity
#	$(DTC) define --config LFVO_multi-norm-test.challenge.yaml --replicate sim:2
#
#
##define-challenge-LFVI_multi-full-vali: sample-LFVI_multi-full-vali
##	$(DTC) define --config LFVI_multi-full-vali.challenge.yaml
#
#
#define-challenge-LFVI_multi-full-test: sample-LFVI_multi-full-test
#	$(DTC) define --config LFV_multi-full-test.challenge.yaml --replicate sim:2
#




define-challenge-sanity:
	$(DTC) define --config aido-hello-sim-validation.challenge.yaml
	$(DTC) define --config aido-hello-sim-full-validation.challenge.yaml
	$(DTC) define --config aido-hello-sim-state-validation.challenge.yaml

#
#define-challenge-LFP2: sample-sanity
#	./make_challenges.py
#	$(DTC) define --config LFP2.challenge.yaml


#

#
#black:
#	black -l 120 -t py38 .
