#!/usr/bin/env bash
# Check the generated OSR v1 files in v1/.
#
# Usage: scripts/check-v1.sh [<Verification report directory>]
#
# 1. the rule set validates against the v1 schema of the Specification
#    submodule;
# 2. the rule set and the report come from the same Lean source digest;
# 3. with a report directory, every file in v1/ is byte-identical to the
#    published verification report.
set -euo pipefail

cd "$(dirname "$0")/.."

check-jsonschema --schemafile Specification/schemas/v1/ruleset.schema.json \
  v1/trigonometry.osr.json

python3 - <<'EOF'
import json
import sys

ruleset = json.load(open("v1/trigonometry.osr.json"))
report = json.load(open("v1/report.json"))
a = ruleset["build"]["source_digest"]
b = report["build"]["source_digest"]
if a != b:
    sys.exit(f"source digest mismatch: rule set {a}, report {b}")
digest = a.removeprefix("sha256:")
if digest not in open("v1/report.md").read():
    sys.exit(f"report.md does not mention the source digest {digest}")
print(f"v1/: {len(ruleset['rules'])} rules, source digest {a}")
EOF

if [ $# -ge 1 ]; then
  status=0
  for f in trigonometry.osr.json report.json report.md; do
    if cmp -s "v1/$f" "$1/$f"; then
      echo "identical: $f"
    else
      echo "DIFFERENT: $f" >&2
      status=1
    fi
  done
  exit $status
fi
