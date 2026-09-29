# libxlsxwriter.vapi

Vala bindings for [John McNamara's libxlsxwriter](https://libxlsxwriter.github.io).

## Requirements

- Vala (`valac`)
- libxlsxwriter (`libxlsxwriter.h`; Debian/Ubuntu: `libxlsxwriter-dev`)

## Tests and Examples

```bash
vala --fatal-warnings --vapidir src --pkg libxlsxwriter tests/simple.vala
vala --fatal-warnings --vapidir src --pkg libxlsxwriter examples/simple.vala
```
Tests speak TAP.

## License

LGPL-2.1, same family as libcsv.
