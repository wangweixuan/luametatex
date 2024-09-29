find_package(PkgConfig REQUIRED)

pkg_check_modules(harfbuzz REQUIRED IMPORTED_TARGET harfbuzz)
pkg_check_modules(graphite2 REQUIRED IMPORTED_TARGET graphite2)

add_library(luaharfbuzz STATIC
    source/libraries/luaharfbuzz/src/luaharfbuzz/blob.c
    source/libraries/luaharfbuzz/src/luaharfbuzz/buffer.c
    source/libraries/luaharfbuzz/src/luaharfbuzz/class_utils.c
    source/libraries/luaharfbuzz/src/luaharfbuzz/direction.c
    source/libraries/luaharfbuzz/src/luaharfbuzz/face.c
    source/libraries/luaharfbuzz/src/luaharfbuzz/feature.c
    source/libraries/luaharfbuzz/src/luaharfbuzz/font.c
    source/libraries/luaharfbuzz/src/luaharfbuzz/language.c
    source/libraries/luaharfbuzz/src/luaharfbuzz/luaharfbuzz.c
    source/libraries/luaharfbuzz/src/luaharfbuzz/ot.c
    source/libraries/luaharfbuzz/src/luaharfbuzz/script.c
    source/libraries/luaharfbuzz/src/luaharfbuzz/tag.c
    source/libraries/luaharfbuzz/src/luaharfbuzz/unicode.c
    source/libraries/luaharfbuzz/src/luaharfbuzz/variation.c
)

target_include_directories(luaharfbuzz PRIVATE
    source/luacore/lua55/src
)

target_link_libraries(luaharfbuzz PRIVATE
    PkgConfig::harfbuzz
    PkgConfig::graphite2
)
