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

## Validation
To validate the rules against the OSR schemas, run:
```bash
./scripts/validate.sh
```

## License

This repository is licensed under the [MIT License](LICENSE). OpenMath
identifiers are referenced for semantic interoperability; see [NOTICE.md](NOTICE.md).
