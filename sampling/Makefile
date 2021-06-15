

all: \
	sample-LF-norm-vali \
	sample-LF-norm-test \
	sample-LFI-norm-vali \
	sample-LFI-norm-test \
	sample-LFI-full-vali \
	sample-LFI-full-test \
	sample-LFP-norm-vali \
	sample-LFP-norm-test \
	sample-LFV-norm-vali \
	sample-LFV-norm-test \
	sample-LFV_multi-norm-vali \
	sample-LFV_multi-norm-test \
	sample-LFVI-norm-vali \
	sample-LFVI-norm-test \
	sample-LFVI_multi-norm-vali \
	sample-LFVI_multi-norm-test \
	sample-LF-full-vali \
	sample-LFP-full-vali \
	sample-LFV-full-vali \
	sample-LFV_multi-full-vali \
	sample-LFVI_multi-full-vali \
	sample-LFV_multi-state-vali


BV=python -m duckietown_world.world_duckietown.sample_braitenberg
sample-BV:
	rm -rf  sampled/mooc-BV1
	$(BV) --nduckies 30 --ntiles 8 --scenario-name d30 -o sampled/mooc-BV1/d30/scenario.yaml
	$(BV) --nduckies 40 --ntiles 8 --scenario-name d40 -o sampled/mooc-BV1/d40/scenario.yaml
	$(BV) --nduckies 45 --ntiles 8 --scenario-name d45 -o sampled/mooc-BV1/d45/scenario.yaml
	$(BV) --nduckies 50 --ntiles 8 --scenario-name d50 -o sampled/mooc-BV1/d50/scenario.yaml
	$(BV) --nduckies 60 --ntiles 8 --scenario-name d60 -o sampled/mooc-BV1/d60/scenario.yaml


clean:
	# rm -rf sampled


image=$(AIDO_REGISTRY)/duckietown/challenge-aido_lf-simulator-gym:daffy-amd64
cmd=docker run --rm -it -v $(PWD):$(PWD) -w $(PWD) --entrypoint /project/launch1.sh  $(image) dt-make-scenarios
cmd=./sampling.py dt-make-scenarios --styles synthetic
cmd=dt-make-scenarios --styles synthetic
outdir=$(PWD)/sampled
indir=$(PWD)

sample-%-vali:
	$(cmd) --output sampled/$*-vali --num 1 $**.config.yaml
sample-%-test:
	$(cmd) --output sampled/$*-test --num 1 $**.config.yaml
