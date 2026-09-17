# Fungrim sources

The product-to-sum rules are independent OSR encodings of the following
MathJSON Fungrim corpus identities:

- `012eba`: `sin(a) cos(b)` as a sum of sines.
- `ad6c1c`: `sin(a) sin(b)` as a difference of cosines.
- `cf6e35`: sine-square power reduction.
- `1f026d`: `tan(atan(z)) = z` for complex `z`.

Both source entries state that the identity holds for complex arguments.  OSR
therefore has no real-domain side condition for either rewrite.  The source
corpus is MIT licensed and its provenance is documented in the Compute Engine
Fungrim data README.

The cosine-square rule follows from the Pythagorean and cosine double-angle
identities already represented in this profile.

The reverse composition is not a global rewrite: `atan(tan(z))` requires a
principal-branch restriction and would be unsound for arbitrary complex `z`.
