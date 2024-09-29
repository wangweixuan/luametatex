find_package(PkgConfig REQUIRED)

pkg_check_modules(kpathsea REQUIRED IMPORTED_TARGET kpathsea)

add_library(luakpse STATIC
    source/libraries/luakpse/lkpselib.c
)

target_include_directories(luakpse PRIVATE
    source/luacore/lua55/src
)

target_link_libraries(luakpse PRIVATE
    PkgConfig::kpathsea
)
