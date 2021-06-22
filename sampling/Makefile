

all: \
	sampled/LF-full-test \
	sampled/LF-full-vali \
	sampled/LF-norm-test \
	sampled/LF-norm-vali \
	sampled/LF-state-test \
	sampled/LF-state-vali \
	\
	sampled/LFI-full-test \
	sampled/LFI-full-vali \
	sampled/LFI-norm-test \
	sampled/LFI-norm-vali \
	sampled/LFI-state-test \
	sampled/LFI-state-vali \
	\
	sampled/LFP-full-test \
	sampled/LFP-full-vali \
	sampled/LFP-norm-test \
	sampled/LFP-norm-vali \
	sampled/LFP-state-test \
	sampled/LFP-state-vali \
	\
	sampled/LFV-full-test \
	sampled/LFV-full-vali \
	sampled/LFV-norm-test \
	sampled/LFV-norm-vali \
	sampled/LFV-state-test \
	sampled/LFV-state-vali \
	\
	sampled/LFVI-norm-test \
	sampled/LFVI-norm-vali \
	sampled/LFVI-full-test \
	sampled/LFVI-full-vali \
	sampled/LFVI-state-test \
	sampled/LFVI-state-vali \
	\
	sampled/LFVI_multi-full-test \
	sampled/LFVI_multi-full-vali \
	sampled/LFVI_multi-norm-test \
	sampled/LFVI_multi-norm-vali \
	sampled/LFVI_multi-state-test \
	sampled/LFVI_multi-state-vali \
	\
	sampled/LFV_multi-full-test \
	sampled/LFV_multi-full-vali \
	sampled/LFV_multi-norm-test \
	sampled/LFV_multi-norm-vali \
	sampled/LFV_multi-state-test \
	sampled/LFV_multi-state-vali \
	\
	sampled/mooc-BV1


BV=python -m duckietown_world.world_duckietown.sample_braitenberg
sampled/mooc-BV1:
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

sampled/%-vali:
	$(cmd) --seed 43 --output sampled/$*-vali.tmp --num 1 $*.multiconfig.yaml
	rm -rf sampled/$*-vali
	mv sampled/$*-vali.tmp sampled/$*-vali

sampled/%-test:
	$(cmd) --seed 45 --output sampled/$*-test.tmp --num 1 $*.multiconfig.yaml
	rm -rf sampled/$*-vali
	mv sampled/$*-test.tmp sampled/$*-test
