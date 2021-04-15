#!/bin/bash
set -euxo pipefail

poetry run cruft check
poetry run mypy --ignore-missing-imports mde/
poetry run isort --check --diff mde/ tests/
poetry run black --check mde/ tests/
poetry run flake8 mde/ tests/
poetry run safety check -i 39462
poetry run bandit -r mde/
