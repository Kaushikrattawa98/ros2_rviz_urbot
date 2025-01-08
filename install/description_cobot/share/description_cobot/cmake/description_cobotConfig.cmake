# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_description_cobot_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED description_cobot_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(description_cobot_FOUND FALSE)
  elseif(NOT description_cobot_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(description_cobot_FOUND FALSE)
  endif()
  return()
endif()
set(_description_cobot_CONFIG_INCLUDED TRUE)

# output package information
if(NOT description_cobot_FIND_QUIETLY)
  message(STATUS "Found description_cobot: 0.0.0 (${description_cobot_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'description_cobot' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT description_cobot_DEPRECATED_QUIET)
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(description_cobot_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${description_cobot_DIR}/${_extra}")
endforeach()
