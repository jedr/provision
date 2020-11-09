#!/bin/bash
set -exuo pipefail

# Requires Go to be installed
GO111MODULE="on" go get sigs.k8s.io/kind@v0.9.0
