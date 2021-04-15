#!/bin/bash
set -euxo pipefail

poetry run isort mde/ tests/
poetry run black mde/ tests/
