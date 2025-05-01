#!/bin/bash
CURRENT_DATE="$1"
VERSION="$2"
NOTES="$3"
cat > release_notes.md <<-EOF
	qss-parser v${VERSION}

	## Overview
	Version ${VERSION} of qss-parser.

	## Changes
	${NOTES}
	## Installation
	\`\`\`bash
	pip install qss-parser==${VERSION}
	\`\`\`

	See the [README.md](README.md) for more details.
EOF