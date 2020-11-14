

all: \
	sample-LF \
	sample-LF_test \
	sample-LFP \
	sample-LFP_test \
	sample-LFV \
	sample-LFV_test \
	sample-LFV_multi \
	sample-LFV_multi_test \
	sample-LFVI \
	sample-LFVI_test \
	sample-LFVI_multi \
	sample-LFVI_multi_test \
	sample-LF_full \
	sample-LFP_full \
	sample-LFV_full \
	sample-LFV_multi_full \
	sample-LFVI_multi_full

clean:
	rm -rf sampled


sample-LF:
	dt-make-scenarios --output sampled/LF --num 1 --config LF_zigzag.config.yaml
	dt-make-scenarios --output sampled/LF --num 1 --config LF_loop.config.yaml
	dt-make-scenarios --output sampled/LF --num 1 --config LF_small_loop.config.yaml
	dt-make-scenarios --output sampled/LF --num 1 --config LF_techtrack.config.yaml

sample-LF_test:
	dt-make-scenarios --output sampled/LF_test --num 1 --config LF_zigzag.config.yaml
	dt-make-scenarios --output sampled/LF_test --num 1 --config LF_loop.config.yaml
	dt-make-scenarios --output sampled/LF_test --num 1 --config LF_small_loop.config.yaml
	dt-make-scenarios --output sampled/LF_test --num 1 --config LF_techtrack.config.yaml

sample-LF_full:
	dt-make-scenarios --output sampled/LF_full --num 1 --config LF_full_zigzag.config.yaml
	dt-make-scenarios --output sampled/LF_full --num 1 --config LF_full_loop.config.yaml
	dt-make-scenarios --output sampled/LF_full --num 1 --config LF_full_small_loop.config.yaml
	dt-make-scenarios --output sampled/LF_full --num 1 --config LF_full_techtrack.config.yaml

sample-LFP_full:
	dt-make-scenarios --output sampled/LFP_full --num 1 --config LFP_full_zigzag.config.yaml
	dt-make-scenarios --output sampled/LFP_full --num 1 --config LFP_full_loop.config.yaml
	dt-make-scenarios --output sampled/LFP_full --num 1 --config LFP_full_small_loop.config.yaml
	dt-make-scenarios --output sampled/LFP_full --num 1 --config LFP_full_techtrack.config.yaml


sample-LFP:
	dt-make-scenarios --output sampled/LFP --num 1 --config LFP_zigzag.config.yaml
	dt-make-scenarios --output sampled/LFP --num 1 --config LFP_loop.config.yaml
	dt-make-scenarios --output sampled/LFP --num 1 --config LFP_small_loop.config.yaml
	dt-make-scenarios --output sampled/LFP --num 1 --config LFP_techtrack.config.yaml

sample-LFP_test:
	dt-make-scenarios --output sampled/LFP_test --num 1 --config LFP_zigzag.config.yaml
	dt-make-scenarios --output sampled/LFP_test --num 1 --config LFP_loop.config.yaml
	dt-make-scenarios --output sampled/LFP_test --num 1 --config LFP_small_loop.config.yaml
	dt-make-scenarios --output sampled/LFP_test --num 1 --config LFP_techtrack.config.yaml


sample-LFV:
	dt-make-scenarios --output sampled/LFV --num 1 --config LFV_zigzag.config.yaml
	dt-make-scenarios --output sampled/LFV --num 1 --config LFV_loop.config.yaml
	dt-make-scenarios --output sampled/LFV --num 1 --config LFV_small_loop.config.yaml
	dt-make-scenarios --output sampled/LFV --num 1 --config LFV_techtrack.config.yaml

sample-LFV_full:
	dt-make-scenarios --output sampled/LFV_full --num 1 --config LFV_full_zigzag.config.yaml
	dt-make-scenarios --output sampled/LFV_full --num 1 --config LFV_full_loop.config.yaml
	dt-make-scenarios --output sampled/LFV_full --num 1 --config LFV_full_small_loop.config.yaml
	dt-make-scenarios --output sampled/LFV_full --num 1 --config LFV_full_techtrack.config.yaml



sample-LFV_test:
	dt-make-scenarios --output sampled/LFV_test --num 1 --config LFV_zigzag.config.yaml
	dt-make-scenarios --output sampled/LFV_test --num 1 --config LFV_loop.config.yaml
	dt-make-scenarios --output sampled/LFV_test --num 1 --config LFV_small_loop.config.yaml
	dt-make-scenarios --output sampled/LFV_test --num 1 --config LFV_techtrack.config.yaml




sample-LFV_multi:
	dt-make-scenarios --output sampled/LFV_multi --num 1 --config LFV_multi_zigzag.config.yaml
	dt-make-scenarios --output sampled/LFV_multi --num 1 --config LFV_multi_loop.config.yaml
	dt-make-scenarios --output sampled/LFV_multi --num 1 --config LFV_multi_small_loop.config.yaml
	dt-make-scenarios --output sampled/LFV_multi --num 1 --config LFV_multi_techtrack.config.yaml

sample-LFV_multi_full:
	dt-make-scenarios --output sampled/LFV_multi_full --num 1 --config LFV_multi_full_zigzag.config.yaml
	dt-make-scenarios --output sampled/LFV_multi_full --num 1 --config LFV_multi_full_loop.config.yaml
	dt-make-scenarios --output sampled/LFV_multi_full --num 1 --config LFV_multi_full_small_loop.config.yaml
	dt-make-scenarios --output sampled/LFV_multi_full --num 1 --config LFV_multi_full_techtrack.config.yaml





sample-LFV_multi_test:
	dt-make-scenarios --output sampled/LFV_multi_test --num 1 --config LFV_multi_zigzag.config.yaml
	dt-make-scenarios --output sampled/LFV_multi_test --num 1 --config LFV_multi_loop.config.yaml
	dt-make-scenarios --output sampled/LFV_multi_test --num 1 --config LFV_multi_small_loop.config.yaml
	dt-make-scenarios --output sampled/LFV_multi_test --num 1 --config LFV_multi_techtrack.config.yaml


sample-LFVI:
	dt-make-scenarios --output sampled/LFVI --num 1 --config LFVI_4way.config.yaml
	dt-make-scenarios --output sampled/LFVI --num 1 --config LFVI_udem1.config.yaml

sample-LFVI_test:
	dt-make-scenarios --output sampled/LFVI_test --num 1 --config LFVI_4way.config.yaml
	dt-make-scenarios --output sampled/LFVI_test --num 1 --config LFVI_udem1.config.yaml

sample-LFVI_multi:
	dt-make-scenarios --output sampled/LFVI_multi --num 1 --config LFVI_multi_4way.config.yaml
	dt-make-scenarios --output sampled/LFVI_multi --num 1 --config LFVI_multi_udem1.config.yaml

sample-LFVI_multi_test:
	dt-make-scenarios --output sampled/LFVI_multi_test --num 1 --config LFVI_multi_4way.config.yaml
	dt-make-scenarios --output sampled/LFVI_multi_test --num 1 --config LFVI_multi_udem1.config.yaml


sample-LFVI_multi_full:
	dt-make-scenarios --output sampled/LFVI_multi_full --num 1 --config LFVI_multi_full_4way.config.yaml
	dt-make-scenarios --output sampled/LFVI_multi_full --num 1 --config LFVI_multi_full_udem1.config.yaml
