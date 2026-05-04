CHALLENGE_DIR := challenges
CHALLENGE_FILES := $(sort $(wildcard $(CHALLENGE_DIR)/*.challenge.yaml))

.PHONY: define-challenge define-challenges define-challenge-% list-challenges black

define-challenge:
	dts challenges define --config $(CHALLENGE_DIR)/LF-norm-vali.challenge.yaml

define-challenges:
	@set -e; for config in $(CHALLENGE_FILES); do \
		echo "Defining $$config"; \
		dts challenges define --config "$$config"; \
	done

define-challenge-%:
	dts challenges define --config $(CHALLENGE_DIR)/$*.challenge.yaml

list-challenges:
	@printf '%s\n' $(notdir $(CHALLENGE_FILES))

black:
	black -l 120 -t py38 .
