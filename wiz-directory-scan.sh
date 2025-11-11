#!/bin/bash

source ~/wiz-git-hook.conf

# Auth to Wiz CLI 
$cli_path auth --id "$WIZ_CLIENT_ID" --secret "$WIZ_CLIENT_SECRET" 2>/dev/null

# Run Wiz CLI directory scan
$cli_path dir scan --path . --no-publish --sensitive-data --policy graham-schuckman-vulnerability-scanning-policy,graham-schuckman-secrets-scanning-policy 2>/dev/null
