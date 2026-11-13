# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
### Added
- v1 artifacts refreshed from Verification report `29465fa3…` (the
  Integration audit grows to 165 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `577cca61…` (the
  Integration audit grows to 156 rules; this rule set is unchanged).
- OSR v1 rule set and verification report in `v1/`, generated from the Lean
  proofs of `OpenSymbolicRules/Lean` and copied from the published
  `OpenSymbolicRules/Verification` report, with a CI check of schema
  validity, source digest and byte identity (`scripts/check-v1.sh`).
- `justfile` entry points (`check`, `validate`, `closure`, `v1`, `update-v1`).
- CI validation that every operator used by a rule has a declared OpenMath
  semantic mapping.
- Sum-to-product identities in a dedicated `sum_to_product` profile, keeping
  the opposite product-to-sum orientation out of that profile.
- Stable `identity` values for rule files, completing canonical `identity:id`
  rule identifiers.
- Product-to-sum identities for `sin(a) cos(b)` and `sin(a) sin(b)`, with
  OpenMath semantics and Fungrim-derived fixtures.
- Sine-square and cosine-square power-reduction identities, with OpenMath
  semantics and fixtures.
- Complex-domain cancellation rule `tan(atan(z)) = z`, encoded from Fungrim.
- Machine-readable provenance for every rule.
- Initial trigonometric rules structure.
- Pythagorean identity rule.
- Sine angle-sum and cosine angle-difference identities with OpenMath semantics.
- Sine and cosine double-angle identities with OpenMath semantics.
- GitHub Actions validation of schemas, rules, and test fixtures.
- MIT licensing, an OpenMath attribution notice, and SPDX metadata in the rule manifest.

### Changed
- Refresh the generated OSR v1 files from Lean source digest `dcad68f4…`
  (the calculus rewriter decides closed conditions; this rule set is
  unchanged).
- Refresh the generated OSR v1 files from Lean source digest `a8eff8f4…`
  (Integration rules with residual integrals; this set is unchanged).
- Refresh the generated OSR v1 files from Lean source digest `be6f672a…`
  (Integration rules with conditions; this set is unchanged).
- Refresh the generated OSR v1 files from Lean source digest `68dfb6f0…`,
  which adds the Integration rule set; rule statements and certification
  counts of this set are unchanged.
- Refresh the generated OSR v1 files from Lean source digest `4032322e…`
  after the structural Calculus premise audit; rule statements and
  certification counts are unchanged.
- `v1/report.json` and `v1/report.md` are renamed `v1/trigonometry.report.json`
  and `v1/trigonometry.report.md`, as published by Verification.
- Updated the Specification submodule to the OSR v1 draft.
- Normalized arithmetic operators and wildcards to OSR v0.1 conventions.
