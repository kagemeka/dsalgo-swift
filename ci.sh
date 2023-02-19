#!/bin/bash

swift-format -i -r -p .
swiftlint --strict Sources Tests Package.swift
pre-commit run --all-files

swift test
