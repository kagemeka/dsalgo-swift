#!/bin/bash

swift-format -i -r -p Sources Tests Package.swift
swiftlint --strict Sources Tests Package.swift
pre-commit run --all-files

swift test
