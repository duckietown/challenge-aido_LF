


define-challenge:  \
	define-challenge-sanity \
	define-challenge-LF-norm-vali \
	define-challenge-LF-norm-test \
	define-challenge-LF-full-vali \
	define-challenge-LF-full-test \
	\
	define-challenge-LFP-norm-vali \
	define-challenge-LFP-norm-test \
	define-challenge-LFP-full-vali \
	define-challenge-LFP-full-test \
	\
	define-challenge-LFV-full-vali \
	define-challenge-LFV-full-test \
	define-challenge-LFV-norm-vali \
	define-challenge-LFV-norm-test \
	\
	define-challenge-LFV_multi-norm-vali \
	define-challenge-LFV_multi-norm-test \
	define-challenge-LFV_multi-full-vali \
	define-challenge-LFV_multi-full-test \
	\
	define-challenge-LFVI-norm-vali \
	define-challenge-LFVI-norm-test \
	define-challenge-LFVI-full-vali \
	define-challenge-LFVI-full-test \
	\
	define-challenge-LFVI_multi-norm-vali \
	define-challenge-LFVI_multi-norm-test \
	define-challenge-LFVI_multi-full-vali \
	define-challenge-LFVI_multi-full-test


# LF
define-challenge-LF-norm-vali:
	dts challenges define --config LF-norm-vali.challenge.yaml
define-challenge-LF-norm-test: define-challenge-LF-norm-vali define-challenge-sanity
	dts challenges define --config LF-norm-test.challenge.yaml
define-challenge-LF-full-vali:
	dts challenges define --config LF-full-vali.challenge.yaml
define-challenge-LF-full-test:
	echo TODO
# LFP

define-challenge-LFP-norm-vali:
	dts challenges define --config LFP-norm-vali.challenge.yaml

define-challenge-LFP-norm-test: define-challenge-LFP-norm-vali
	dts challenges define --config LFP-norm-test.challenge.yaml

define-challenge-LFP-full-vali:
	dts challenges define --config LFP-full-vali.challenge.yaml

define-challenge-LFP-full-test:
	echo TODO

# LFV

define-challenge-LFV-norm-vali: define-challenge-LF-norm-vali define-challenge-sanity
	dts challenges define --config LFV-norm-vali.challenge.yaml

define-challenge-LFV-norm-test: define-challenge-LFV-norm-vali define-challenge-LF-norm-test define-challenge-sanity
	dts challenges define --config LFV-norm-test.challenge.yaml

define-challenge-LFV-full-vali:
	dts challenges define --config LFV-full-vali.challenge.yaml

define-challenge-LFV-full-test:
	echo TODO

# LFVI

define-challenge-LFVI-norm-vali: define-challenge-LFV-norm-vali define-challenge-sanity
	dts challenges define --config LFVI-norm-vali.challenge.yaml

define-challenge-LFVI-norm-test: define-challenge-LFVI-norm-vali  define-challenge-LFV-norm-test define-challenge-sanity
	dts challenges define --config LFVI-norm-test.challenge.yaml

define-challenge-LFVI-full-vali:
	echo TODO

define-challenge-LFVI-full-test:
	echo TODO

# LFV_multi



define-challenge-LFV_multi-norm-vali: define-challenge-sanity
	dts challenges define --config LFV_multi-norm-vali.challenge.yaml

define-challenge-LFV_multi-norm-test: define-challenge-sanity define-challenge-LFV_multi-norm-vali
	dts challenges define --config LFV_multi-norm-test.challenge.yaml


define-challenge-LFV_multi-full-vali:
	dts challenges define --config LFV_multi-full-vali.challenge.yaml


define-challenge-LFV_multi-full-test: define-challenge-sanity define-challenge-LFV_multi-norm-vali
	echo TODO

# LFVI_multi


define-challenge-LFVI_multi-norm-vali: define-challenge-sanity
	dts challenges define --config LFVI_multi-norm-vali.challenge.yaml

define-challenge-LFVI_multi-norm-test: define-challenge-sanity
	echo TODO


define-challenge-LFVI_multi-full-vali:
	dts challenges define --config LFVI_multi-full-vali.challenge.yaml


define-challenge-LFVI_multi-full-test:
	echo TODO





define-challenge-sanity:
	dts challenges define --config aido5-LF-sanity-sim-validation.challenge.yaml

#
#define-challenge-LFP2: define-challenge-sanity
#	./make_challenges.py
#	dts challenges define --config LFP2.challenge.yaml


#


black:
	black -l 120 -t py38 .
