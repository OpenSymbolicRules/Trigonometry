# OSR v1 files

`v1/` holds the Trigonometry rule set in the OSR v1 interchange format
(Specification, `docs/osr-v1.md`).  These files are generated, never edited
by hand:

| File | Content |
|---|---|
| `v1/trigonometry.osr.json` | The 13 rules: OpenMath patterns, conditions, profiles, and per-domain verification records (Lean theorem, status, assurance). |
| `v1/trigonometry.report.json` | Machine-readable audit: metrics per domain and the termination proof of every profile. |
| `v1/trigonometry.report.md` | The same audit for humans. |

## Where they come from

1. `OpenSymbolicRules/Lean` states each rule and proves it with Mathlib, over
   ℝ and ℂ.  `scripts/Export.lean` writes the files above.
2. `OpenSymbolicRules/Verification` publishes the export under
   `reports/<source digest>/` and can rebuild it independently
   (`scripts/recheck.sh`).
3. This repository copies the published files.  The CI checks that they
   validate against the v1 schema, share one source digest, and are
   byte-identical to the published report.

## Differences from v0.1

The v0.1 files in `rules/` remain for the v0.1 loader of OpenSymbolicRules.jl
and will be removed in a later breaking release.  In v1:

- the four profiles `default`, `product_to_sum`, `power_reduction` and
  `sum_to_product` are proved to terminate under the reference strategy
  (Lean `OSR.Trigonometry.normalize_terminates`); the v0.1 profiles
  contained three cycles (angle sum and product to sum, angle difference and
  product to sum, double angle and power reduction);
- every rule carries a proof record instead of a provenance note;
- `tan(arctan z) = z` is certified over ℝ only: its complex proof exists, but
  the complex mapping of `transc1#arctan` is provisional.

## Updating

```bash
just update-v1 <Verification>/reports/<digest>
```

Then update the Verification commit pinned in
`.github/workflows/validate-schemas.yml`.
