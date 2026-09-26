# libxlsxwriter.vapi
Vala bindings for the libxlsxwriter of John McNamara

```bash
declare -ar VAR=(
    --verbose
    --fatal-warnings
    --Xcc=-O3
    --cc=clang
    --vapidir=src
    --enable-{checking,mem-profiler,gobject-tracing}
    --pkg=libxlsxwriter
    -X -lxlsxwriter
)
vala "${VAR[@]}" 'test/test_bindings.vala'
vala "${VAR[@]}" 'examples/simple.vala'
vala "${VAR[@]}" 'examples/advanced.vala'
```
