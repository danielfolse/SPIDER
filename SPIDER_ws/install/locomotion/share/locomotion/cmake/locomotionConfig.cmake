# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_locomotion_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED locomotion_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(locomotion_FOUND FALSE)
  elseif(NOT locomotion_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(locomotion_FOUND FALSE)
  endif()
  return()
endif()
set(_locomotion_CONFIG_INCLUDED TRUE)

# output package information
if(NOT locomotion_FIND_QUIETLY)
  message(STATUS "Found locomotion: 0.0.0 (${locomotion_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'locomotion' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${locomotion_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(locomotion_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${locomotion_DIR}/${_extra}")
endforeach()
