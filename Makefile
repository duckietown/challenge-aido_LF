PIP_INDEX_URL ?= https://pypi.org/simple

update-reqs:
	pur --index-url $(PIP_INDEX_URL) -r experiment_manager/requirements.txt -f -m '*' -o experiment_manager/requirements.resolved
	aido-update-reqs experiment_manager/requirements.resolved

define-challenge:
	$(MAKE) define-challenge-LF
	$(MAKE) define-challenge-LF_test
	$(MAKE) define-challenge-LFV
	$(MAKE) define-challenge-LFV_test
	$(MAKE) define-challenge-LFV_multi
	# missing test
	$(MAKE) define-challenge-LFVI
	$(MAKE) define-challenge-LFVI_test
	$(MAKE) define-challenge-LFVI_multi
	# missing test


define-challenge-parallel:  \
	define-challenge-LF \
	define-challenge-LF_test \
	define-challenge-LFV \
	define-challenge-LFV_test \
	define-challenge-LFV_multi \
	define-challenge-LFVI \
	define-challenge-LFVI_test \
	define-challenge-LFVI_multi
	# missing test

#define-challenge-no-cache:
#	$(MAKE) define-challenge-LF-no-cache
#	$(MAKE) define-challenge-LFV-no-cache
#	$(MAKE) define-challenge-LFVI-no-cache
#	$(MAKE) define-challenge-LF_test-no-cache
#	$(MAKE) define-challenge-LFV_test-no-cache
#	$(MAKE) define-challenge-LFVI_test-no-cache

define-challenge-LF: update-reqs
	dts challenges define --config LF.challenge.yaml

define-challenge-LFV: update-reqs
	dts challenges define --config LFV.challenge.yaml

define-challenge-LFV_multi: update-reqs
	dts challenges define --config LFV_multi.challenge.yaml

define-challenge-LFVI: update-reqs
	dts challenges define --config LFVI.challenge.yaml

define-challenge-LFVI_multi: update-reqs
	dts challenges define --config LFVI_multi.challenge.yaml

define-challenge-LF_test: update-reqs
	dts challenges define --config LF_test.challenge.yaml

define-challenge-LFV_test: update-reqs
	dts challenges define --config LFV_test.challenge.yaml

define-challenge-LFVI_test: update-reqs
	dts challenges define --config LFVI_test.challenge.yaml
#
#define-challenge-LF-no-cache: update-reqs
#	dts challenges define --config LF.challenge.yaml  --no-cache
#
#define-challenge-LFV-no-cache: update-reqs
#	dts challenges define --config LFV.challenge.yaml  --no-cache
#
#define-challenge-LFVI-no-cache: update-reqs
#	dts challenges define --config LFVI.challenge.yaml  --no-cache
#
#
#define-challenge-LF_test-no-cache: update-reqs
#	dts challenges define --config LF_test.challenge.yaml  --no-cache
#
#define-challenge-LFV_test-no-cache: update-reqs
#	dts challenges define --config LFV_test.challenge.yaml  --no-cache
#
#define-challenge-LFVI_test-no-cache: update-reqs
#	dts challenges define --config LFVI_test.challenge.yaml  --no-cache


test-with-local-repos:
	docker-compose -f docker-compose-devel.yaml down -v
	#docker-compose -f docker-compose-devel.yaml build
	docker-compose -f docker-compose-devel.yaml up -V --build

test-regular:
	docker-compose -f docker-compose.yaml down -v
	docker-compose -f docker-compose.yaml build --pull
	docker-compose -f docker-compose.yaml up -V --build

test-regular-no-pull:
	docker-compose -f docker-compose.yaml down -v
	docker-compose -f docker-compose.yaml build
	docker-compose -f docker-compose.yaml up -V --build


test-regular-no-cache:
	docker-compose -f docker-compose.yaml down -v
	docker-compose -f docker-compose.yaml build --pull --no-cache
	docker-compose -f docker-compose.yaml up -V --build

black:
	black -l 120 -t py38 .
