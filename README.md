# OpenSymbolicRules - Trigonometry

This repository hosts the **Trigonometry** domain for the OpenSymbolicRules (OSR) standard.

## Features
- Fundamental trigonometric identities (Pythagorean, angle addition,
  double-angle, and product-to-sum).
- Definitions and reductions.

Each mathematical operator is explicitly mapped to its OpenMath Content Dictionary
symbol in the corresponding rule file.

The product-to-sum rules are independently encoded from the MathJSON Fungrim
corpus entries `012eba` and `ad6c1c`; their complex-domain assumptions permit
unconditional use of these analytic identities.

The inverse-tangent cancellation follows Fungrim entry `1f026d`; the reverse
direction is excluded because it requires a principal-branch restriction.

## OSR v1

`v1/` holds the rule set in the OSR v1 format, generated from Lean proofs
(`OpenSymbolicRules/Lean`) and published by `OpenSymbolicRules/Verification`.
See [docs/osr-v1.md](docs/osr-v1.md).  Check it with:
```bash
./scripts/check-v1.sh [<Verification report directory>]
```

## Validation
To validate the rules against the OSR schemas, run:
```bash
just check        # v0.1 schemas, semantic closure and v1 files
just v1 <report>  # also compare v1/ with a Verification report directory
```

## License

This repository is licensed under the [MIT License](LICENSE). OpenMath
identifiers are referenced for semantic interoperability; see [NOTICE.md](NOTICE.md).
