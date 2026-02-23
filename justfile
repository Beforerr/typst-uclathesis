install:
    ln -s $(pwd) ~/Library/Caches/typst/packages/local/uclathesis/0.1.0

compile:
    typst compile --root . example/main.typ