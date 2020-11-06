PIP_INDEX_URL ?= https://pypi.org/simple


#define-challenge-serial:
#	$(MAKE) define-challenge-LF
#	$(MAKE) define-challenge-LFP
#	$(MAKE) define-challenge-LF_test
#	$(MAKE) define-challenge-LFV
#	$(MAKE) define-challenge-LFV_test
#	$(MAKE) define-challenge-LFV_multi
#	# missing test
#	$(MAKE) define-challenge-LFVI
#	$(MAKE) define-challenge-LFVI_test
#	$(MAKE) define-challenge-LFVI_multi
#	# missing test


define-challenge:  \
	define-challenge-sanity \
	define-challenge-LF \
	define-challenge-LF_test \
	define-challenge-LFP \
	define-challenge-LFP_test \
	define-challenge-LFV_multi \
	define-challenge-LFV_multi_test \
	define-challenge-LFV \
	define-challenge-LFV_test \
	define-challenge-LFVI \
	define-challenge-LFVI_test \
	define-challenge-LFVI_multi

define-challenge-sanity:
	dts challenges define --config aido5-LF-sanity-sim-validation.challenge.yaml

define-challenge-LF: define-challenge-sanity
	dts challenges define --config LF.challenge.yaml

define-challenge-LFP: define-challenge-sanity
	dts challenges define --config LFP.challenge.yaml

define-challenge-LFP_test: define-challenge-LFP define-challenge-sanity
	dts challenges define --config LFP_test.challenge.yaml
#
#define-challenge-LFP2: define-challenge-sanity
#	./make_challenges.py
#	dts challenges define --config LFP2.challenge.yaml

define-challenge-LFV: define-challenge-LF define-challenge-sanity
	dts challenges define --config LFV.challenge.yaml

define-challenge-LFV_multi: define-challenge-sanity
	dts challenges define --config LFV_multi.challenge.yaml

define-challenge-LFV_multi_test: define-challenge-sanity define-challenge-LFV_multi
	dts challenges define --config LFV_multi_test.challenge.yaml

define-challenge-LFVI: define-challenge-LFV define-challenge-sanity
	dts challenges define --config LFVI.challenge.yaml

define-challenge-LFVI_multi: define-challenge-sanity
	dts challenges define --config LFVI_multi.challenge.yaml

define-challenge-LF_test: define-challenge-LF define-challenge-sanity
	dts challenges define --config LF_test.challenge.yaml

define-challenge-LFV_test: define-challenge-LFV define-challenge-LF_test define-challenge-sanity
	dts challenges define --config LFV_test.challenge.yaml

define-challenge-LFVI_test: define-challenge-LFVI  define-challenge-LFV_test define-challenge-sanity
	dts challenges define --config LFVI_test.challenge.yaml
#


black:
	black -l 120 -t py38 .
