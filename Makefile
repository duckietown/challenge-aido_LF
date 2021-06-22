
# define-challenge:
# 	echo REMOVED

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
	define-challenge-mooc-BV1 \
	define-challenge-GT


sample-%:
	# $(MAKE) -C sampling sample-$*

define-challenge-mooc-BV1: # sample-mooc-BV1
	dts challenges define --config mooc-BV1.challenge.yaml --replicate sim:5


# LF
define-challenge-LF-norm-vali: sample-LF-norm-vali
	dts challenges define --config LF-norm-vali.challenge.yaml --replicate sim:4
define-challenge-LF-norm-test: sample-LF-norm-test define-challenge-LF-norm-vali define-challenge-sanity
	dts challenges define --config LF-norm-test.challenge.yaml --replicate sim:4
define-challenge-LF-full-vali: sample-LF-full-vali
	dts challenges define --config LF-full-vali.challenge.yaml --replicate sim:4
define-challenge-LF-full-test: sample-LF-full-test
	echo TODO
# LFP

define-challenge-LFP-norm-vali: sample-LFP-norm-vali
	dts challenges define --config LFP-norm-vali.challenge.yaml --replicate sim:4

define-challenge-LFP-norm-test: sample-LFP-norm-test define-challenge-LFP-norm-vali
	dts challenges define --config LFP-norm-test.challenge.yaml --replicate sim:4

define-challenge-LFP-full-vali: sample-LFP-full-vali
	dts challenges define --config LFP-full-vali.challenge.yaml --replicate sim:4

define-challenge-LFP-full-test: sample-LFP-full-test
	echo TODO

# LFV

define-challenge-LFV-norm-vali: sample-LFV-norm-vali define-challenge-LF-norm-vali define-challenge-sanity
	dts challenges define --config LFV-norm-vali.challenge.yaml --replicate sim:4

define-challenge-LFV-norm-test: sample-LFV-norm-test define-challenge-LFV-norm-vali define-challenge-LF-norm-test define-challenge-sanity
	dts challenges define --config LFV-norm-test.challenge.yaml --replicate sim:4

define-challenge-LFV-full-vali: sample-LFV-full-vali
	dts challenges define --config LFV-full-vali.challenge.yaml --replicate sim:4

define-challenge-LFV-full-test: sample-LFV-full-test
	echo TODO

# LFI

define-challenge-%: sample-%
	dts challenges define --config $*.challenge.yaml --replicate sim:4

# LFVI

define-challenge-LFVI-norm-vali: sample-LFVI-norm-vali define-challenge-LFV-norm-vali define-challenge-sanity
	dts challenges define --config LFVI-norm-vali.challenge.yaml --replicate sim:4

define-challenge-LFVI-norm-test: sample-LFVI-norm-test \
	define-challenge-LFVI-norm-vali define-challenge-LFV-norm-test \
	define-challenge-sanity
	dts challenges define --config LFVI-norm-test.challenge.yaml --replicate sim:4

define-challenge-LFVI-full-vali: sample-LFVI-full-vali
	echo TODO

define-challenge-LFVI-full-test: sample-LFVI-full-test
	echo TODO

# LFV_multi



define-challenge-LFV_multi-norm-vali: sample-LFV_multi-norm-vali define-challenge-sanity
	dts challenges define --config LFV_multi-norm-vali.challenge.yaml --replicate sim:2

define-challenge-LFV_multi-norm-test: sample-LFV_multi-norm-test define-challenge-sanity define-challenge-LFV_multi-norm-vali
	dts challenges define --config LFV_multi-norm-test.challenge.yaml --replicate sim:2

#
#define-challenge-LFV_multi-full-vali: sample-LFV_multi-full-vali
#	dts challenges define --config LFV_multi-full-vali.challenge.yaml


define-challenge-LFV_multi-full-test: sample-LFV_multi-full-test define-challenge-sanity define-challenge-LFV_multi-norm-vali
	echo TODO

# LFVI_multi

#
#define-challenge-LFVI_multi-norm-vali: sample-LFVI_multi-norm-vali define-challenge-sanity
#	dts challenges define --config LFVI_multi-norm-vali.challenge.yaml

define-challenge-LFVI_multi-norm-test: sample-LFVI_multi-norm-test define-challenge-sanity
	echo TODO


#define-challenge-LFVI_multi-full-vali: sample-LFVI_multi-full-vali
#	dts challenges define --config LFVI_multi-full-vali.challenge.yaml


define-challenge-LFVI_multi-full-test: sample-LFVI_multi-full-test
	echo TODO





define-challenge-sanity:
	echo "SKIP"
	# dts challenges define --config aido5-LF-sanity-sim-valiation.challenge.yaml

#
#define-challenge-LFP2: sample-sanity
#	./make_challenges.py
#	dts challenges define --config LFP2.challenge.yaml


#


black:
	black -l 120 -t py38 .


define-challenge-GT:
	dts challenges define --config LFV_multi-state-vali.challenge.yaml --replicate sim:3
