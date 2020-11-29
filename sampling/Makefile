

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
	sample-LFVI_multi-full-vali

clean:
	rm -rf sampled

cmd=dt-make-scenarios
image=$(AIDO_REGISTRY)/duckietown/challenge-aido_lf-simulator-gym:daffy-amd64
cmd=docker run --rm -it -v $(PWD):$(PWD) -w $(PWD) --entrypoint /project/launch1.sh  $(image) dt-make-scenarios
cmd=./sampling.py dt-make-scenarios --styles smooth

outdir=$(PWD)/sampled
indir=$(PWD)

sample-%-vali:
	$(cmd) --output sampled/$*-vali --num 1 $**.config.yaml
sample-%-test:
	$(cmd) --output sampled/$*-test --num 1 $**.config.yaml


# sample-LF-norm-vali:
# 	$(cmd) --output sampled/LF --num 1 --config LF_zigzag.config.yaml
# 	$(cmd) --output sampled/LF --num 1 --config LF_loop.config.yaml
# 	$(cmd) --output sampled/LF --num 1 --config LF_small_loop.config.yaml
# 	$(cmd) --output sampled/LF --num 1 --config LF_techtrack.config.yaml

# sample-LF-norm-test:
# 	$(cmd) --output sampled/LF_test --num 1 --config LF_zigzag.config.yaml
# 	$(cmd) --output sampled/LF_test --num 1 --config LF_loop.config.yaml
# 	$(cmd) --output sampled/LF_test --num 1 --config LF_small_loop.config.yaml
# 	$(cmd) --output sampled/LF_test --num 1 --config LF_techtrack.config.yaml

# sample-LF-full-vali:
# 	$(cmd) --output sampled/LF_full --num 1 --config LF_full_zigzag.config.yaml
# 	$(cmd) --output sampled/LF_full --num 1 --config LF_full_loop.config.yaml
# 	$(cmd) --output sampled/LF_full --num 1 --config LF_full_small_loop.config.yaml
# 	$(cmd) --output sampled/LF_full --num 1 --config LF_full_techtrack.config.yaml

# sample-LFP-full-vali:
# 	$(cmd) --output sampled/LFP_full --num 1 --config LFP_full_zigzag.config.yaml
# 	$(cmd) --output sampled/LFP_full --num 1 --config LFP_full_loop.config.yaml
# 	$(cmd) --output sampled/LFP_full --num 1 --config LFP_full_small_loop.config.yaml
# 	$(cmd) --output sampled/LFP_full --num 1 --config LFP_full_techtrack.config.yaml


# sample-LFP-norm-vali:
# 	$(cmd) --output sampled/LFP --num 1 --config LFP_zigzag.config.yaml
# 	$(cmd) --output sampled/LFP --num 1 --config LFP_loop.config.yaml
# 	$(cmd) --output sampled/LFP --num 1 --config LFP_small_loop.config.yaml
# 	$(cmd) --output sampled/LFP --num 1 --config LFP_techtrack.config.yaml

# sample-LFP-norm-test:
# 	$(cmd) --output sampled/LFP_test --num 1 --config LFP_zigzag.config.yaml
# 	$(cmd) --output sampled/LFP_test --num 1 --config LFP_loop.config.yaml
# 	$(cmd) --output sampled/LFP_test --num 1 --config LFP_small_loop.config.yaml
# 	$(cmd) --output sampled/LFP_test --num 1 --config LFP_techtrack.config.yaml


# sample-LFV-norm-vali:
# 	$(cmd) --output sampled/LFV --num 1 --config LFV_zigzag.config.yaml
# 	$(cmd) --output sampled/LFV --num 1 --config LFV_loop.config.yaml
# 	$(cmd) --output sampled/LFV --num 1 --config LFV_small_loop.config.yaml
# 	$(cmd) --output sampled/LFV --num 1 --config LFV_techtrack.config.yaml

# sample-LFV-full-vali:
# 	$(cmd) --output sampled/LFV_full --num 1 --config LFV_full_zigzag.config.yaml
# 	$(cmd) --output sampled/LFV_full --num 1 --config LFV_full_loop.config.yaml
# 	$(cmd) --output sampled/LFV_full --num 1 --config LFV_full_small_loop.config.yaml
# 	$(cmd) --output sampled/LFV_full --num 1 --config LFV_full_techtrack.config.yaml



# sample-LFV-norm-test:
# 	$(cmd) --output sampled/LFV_test --num 1 --config LFV_zigzag.config.yaml
# 	$(cmd) --output sampled/LFV_test --num 1 --config LFV_loop.config.yaml
# 	$(cmd) --output sampled/LFV_test --num 1 --config LFV_small_loop.config.yaml
# 	$(cmd) --output sampled/LFV_test --num 1 --config LFV_techtrack.config.yaml




# sample-LFV_multi-norm-vali:
# 	$(cmd) --output sampled/LFV_multi --num 1 --config LFV_multi_small_loop.config.yaml
# 	$(cmd) --output sampled/LFV_multi --num 1 --config LFV_multi_zigzag.config.yaml
# 	$(cmd) --output sampled/LFV_multi --num 1 --config LFV_multi_loop.config.yaml

# 	$(cmd) --output sampled/LFV_multi --num 1 --config LFV_multi_techtrack.config.yaml

# sample-LFV_multi-full-vali:
# 	$(cmd) --output sampled/LFV_multi_full --num 1 --config LFV_multi_full_zigzag.config.yaml
# 	$(cmd) --output sampled/LFV_multi_full --num 1 --config LFV_multi_full_loop.config.yaml
# 	$(cmd) --output sampled/LFV_multi_full --num 1 --config LFV_multi_full_small_loop.config.yaml
# 	$(cmd) --output sampled/LFV_multi_full --num 1 --config LFV_multi_full_techtrack.config.yaml





# sample-LFV_multi-norm-test:
# 	$(cmd) --output sampled/LFV_multi_test --num 1 --config LFV_multi_zigzag.config.yaml
# 	$(cmd) --output sampled/LFV_multi_test --num 1 --config LFV_multi_loop.config.yaml
# 	$(cmd) --output sampled/LFV_multi_test --num 1 --config LFV_multi_small_loop.config.yaml
# 	$(cmd) --output sampled/LFV_multi_test --num 1 --config LFV_multi_techtrack.config.yaml


# sample-LFVI-norm-vali:
# 	$(cmd) --output sampled/LFVI --num 1 --config LFVI_4way.config.yaml
# 	$(cmd) --output sampled/LFVI --num 1 --config LFVI_udem1.config.yaml

# sample-LFVI-norm-test:
# 	$(cmd) --output sampled/LFVI_test --num 1 --config LFVI_4way.config.yaml
# 	$(cmd) --output sampled/LFVI_test --num 1 --config LFVI_udem1.config.yaml

# sample-LFVI_multi-norm-vali:
# 	$(cmd) --output sampled/LFVI_multi --num 1 --config LFVI_multi_4way.config.yaml
# 	$(cmd) --output sampled/LFVI_multi --num 1 --config LFVI_multi_udem1.config.yaml

# sample-LFVI_multi-norm-test:
# 	$(cmd) --output sampled/LFVI_multi_test --num 1 --config LFVI_multi_4way.config.yaml
# 	$(cmd) --output sampled/LFVI_multi_test --num 1 --config LFVI_multi_udem1.config.yaml


# sample-LFVI_multi-full-vali:
# 	$(cmd) --output sampled/LFVI_multi_full --num 1 --config LFVI_multi_full_4way.config.yaml
# 	$(cmd) --output sampled/LFVI_multi_full --num 1 --config LFVI_multi_full_udem1.config.yaml


# sample-LF-full-test:
# 	echo TODO
# sample-LFP-full-test:
# 	echo TODO
# sample-LFV-full-test:
# 	echo TODO
# sample-LFVI-full-vali:
# 	echo TODO
# sample-LFVI-full-test:
# 	echo TODO
# sample-LFV_multi-full-test:
# 	echo TODO
# sample-LFVI_multi-full-test:
# 	echo TODO
