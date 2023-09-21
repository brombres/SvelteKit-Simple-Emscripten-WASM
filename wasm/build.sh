emcc Hello.c \
  -sMODULARIZE \
  -sEXPORT_ES6 \
  -sENVIRONMENT=web \
  -sEXPORTED_FUNCTIONS="['_main','_add','_hello']" \
  -sEXPORTED_RUNTIME_METHODS="['ccall','cwrap']" \
  --post-js WrapFunctions.js \
  -o ../src/routes/Hello.js

# Typescript Declaration File
cp Hello.d.ts ../src/routes
