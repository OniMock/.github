#!/bin/bash
CURRENT_DATE="$1"
VERSION="$2"
FORMATTED_NOTES="$3"
CHANGELOG_PATH="$4"

if [ -f "$CHANGELOG_PATH" ]; then
  echo -e "## [$VERSION] - $CURRENT_DATE\n\n$FORMATTED_NOTES\n\n$(cat $CHANGELOG_PATH)" > "$CHANGELOG_PATH"
else
  cat > "$CHANGELOG_PATH" <<-EOF
	# Changelog

	All notable changes to the **qss-parser** project will be documented in this file.

	The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

	## [$VERSION] - $CURRENT_DATE

	$FORMATTED_NOTES
EOF
fi