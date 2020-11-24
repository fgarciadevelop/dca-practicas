project (helloworld)

add_executable ( hw src/hw.c )
add_subdirectory(src)

set(CPACK_SOURCE_GENERATOR "TGZ")

add_custom_target(dist COMMAND ${CMAKE_MAKE_PROGRAM} package_source)

include(CPack)
