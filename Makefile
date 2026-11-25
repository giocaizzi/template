.PHONY: help lint test check check-fast prepush
.DEFAULT_GOAL := help

help: ## Show this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-10s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

lint: ## Lint (replace with the project's linters)
	@test -s README.md

test: ## Test (replace with the project's test runner)
	@echo "no tests yet"

check: lint test ## lint + test (the CI gate)

# Optional: a cheap gate scoped to the change (seconds to ~2 minutes, no heavy
# suites). Replace with build, vet, cheap lints and the affected tests, or delete
# it if `check` is already fast. The local gate is check-fast where defined, else check.
check-fast: lint ## Cheap local gate scoped to the change (replace with build, vet, cheap lints, affected tests)

prepush: check ## Optional advisory local gate (= check; tiered repos: light tier + touched integration tests)
