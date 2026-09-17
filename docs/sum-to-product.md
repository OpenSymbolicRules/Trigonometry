# Sum-to-product profile

The `sum_to_product` profile converts sums of sines or cosines into products.
It deliberately excludes the `1.4-product-to-sum` file: loading both
orientations into an unrestricted repeated rewrite strategy can create cycles.

All heads are mapped directly to OpenMath `arith1` and `transc1` symbols.
The rules are algebraic identities, but a consumer still chooses the profile
according to its desired normal form rather than treating either direction as
an unconditional simplification.
