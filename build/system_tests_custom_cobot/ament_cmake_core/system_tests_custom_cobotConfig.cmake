# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_system_tests_custom_cobot_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED system_tests_custom_cobot_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(system_tests_custom_cobot_FOUND FALSE)
  elseif(NOT system_tests_custom_cobot_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(system_tests_custom_cobot_FOUND FALSE)
  endif()
  return()
endif()
set(_system_tests_custom_cobot_CONFIG_INCLUDED TRUE)

# output package information
if(NOT system_tests_custom_cobot_FIND_QUIETLY)
  message(STATUS "Found system_tests_custom_cobot: 1.0.0 (${system_tests_custom_cobot_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'system_tests_custom_cobot' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT system_tests_custom_cobot_DEPRECATED_QUIET)
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(system_tests_custom_cobot_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${system_tests_custom_cobot_DIR}/${_extra}")
endforeach()
