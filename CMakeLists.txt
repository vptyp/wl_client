
cmake_minimum_required(VERSION 3.20)
project(wayland-cli)

add_executable(${PROJECT_NAME})

target_sources(${PROJECT_NAME} PRIVATE main.cc)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
find_package(Wayland REQUIRED)

include_directories(${WAYLAND_INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME} ${WAYLAND_LIBRARIES})
