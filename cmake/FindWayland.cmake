# Find the Wayland package
find_path(WAYLAND_INCLUDE_DIR
  NAMES wayland-client.h
  PATH_SUFFIXES wayland
)

find_library(WAYLAND_LIBRARY
  NAMES wayland-client
)

find_library(WAYLAND_EGL_LIBRARY
  NAMES wayland-egl
)

# Handle the QUIETLY and REQUIRED arguments and set WAYLAND_FOUND to TRUE if all listed variables are TRUE
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Wayland DEFAULT_MSG WAYLAND_LIBRARY WAYLAND_INCLUDE_DIR)

if(WAYLAND_FOUND)
  set(WAYLAND_LIBRARIES ${WAYLAND_LIBRARY} ${WAYLAND_EGL_LIBRARY})
  set(WAYLAND_INCLUDE_DIRS ${WAYLAND_INCLUDE_DIR})
endif()

mark_as_advanced(WAYLAND_INCLUDE_DIR WAYLAND_LIBRARY)