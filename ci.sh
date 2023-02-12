#!/bin/bash

swift-format -i -r -p .
swiftlint
pre-commit run --all-files
