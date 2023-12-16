add_subdirectory(glfw-3.3.9)

add_library(vendor src/glad.c)
target_include_directories(vendor PUBLIC include)
target_link_libraries(vendor glfw)