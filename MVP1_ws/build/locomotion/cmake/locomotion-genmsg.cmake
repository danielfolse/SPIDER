# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "locomotion: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ilocomotion:/home/danielfolse/repos/SPIDER/MVP1_ws/src/locomotion/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(locomotion_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/danielfolse/repos/SPIDER/MVP1_ws/src/locomotion/msg/move_command_data.msg" NAME_WE)
add_custom_target(_locomotion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "locomotion" "/home/danielfolse/repos/SPIDER/MVP1_ws/src/locomotion/msg/move_command_data.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(locomotion
  "/home/danielfolse/repos/SPIDER/MVP1_ws/src/locomotion/msg/move_command_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/locomotion
)

### Generating Services

### Generating Module File
_generate_module_cpp(locomotion
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/locomotion
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(locomotion_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(locomotion_generate_messages locomotion_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/danielfolse/repos/SPIDER/MVP1_ws/src/locomotion/msg/move_command_data.msg" NAME_WE)
add_dependencies(locomotion_generate_messages_cpp _locomotion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locomotion_gencpp)
add_dependencies(locomotion_gencpp locomotion_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locomotion_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(locomotion
  "/home/danielfolse/repos/SPIDER/MVP1_ws/src/locomotion/msg/move_command_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/locomotion
)

### Generating Services

### Generating Module File
_generate_module_eus(locomotion
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/locomotion
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(locomotion_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(locomotion_generate_messages locomotion_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/danielfolse/repos/SPIDER/MVP1_ws/src/locomotion/msg/move_command_data.msg" NAME_WE)
add_dependencies(locomotion_generate_messages_eus _locomotion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locomotion_geneus)
add_dependencies(locomotion_geneus locomotion_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locomotion_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(locomotion
  "/home/danielfolse/repos/SPIDER/MVP1_ws/src/locomotion/msg/move_command_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/locomotion
)

### Generating Services

### Generating Module File
_generate_module_lisp(locomotion
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/locomotion
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(locomotion_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(locomotion_generate_messages locomotion_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/danielfolse/repos/SPIDER/MVP1_ws/src/locomotion/msg/move_command_data.msg" NAME_WE)
add_dependencies(locomotion_generate_messages_lisp _locomotion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locomotion_genlisp)
add_dependencies(locomotion_genlisp locomotion_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locomotion_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(locomotion
  "/home/danielfolse/repos/SPIDER/MVP1_ws/src/locomotion/msg/move_command_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/locomotion
)

### Generating Services

### Generating Module File
_generate_module_nodejs(locomotion
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/locomotion
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(locomotion_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(locomotion_generate_messages locomotion_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/danielfolse/repos/SPIDER/MVP1_ws/src/locomotion/msg/move_command_data.msg" NAME_WE)
add_dependencies(locomotion_generate_messages_nodejs _locomotion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locomotion_gennodejs)
add_dependencies(locomotion_gennodejs locomotion_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locomotion_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(locomotion
  "/home/danielfolse/repos/SPIDER/MVP1_ws/src/locomotion/msg/move_command_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locomotion
)

### Generating Services

### Generating Module File
_generate_module_py(locomotion
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locomotion
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(locomotion_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(locomotion_generate_messages locomotion_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/danielfolse/repos/SPIDER/MVP1_ws/src/locomotion/msg/move_command_data.msg" NAME_WE)
add_dependencies(locomotion_generate_messages_py _locomotion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locomotion_genpy)
add_dependencies(locomotion_genpy locomotion_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locomotion_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/locomotion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/locomotion
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(locomotion_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/locomotion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/locomotion
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(locomotion_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/locomotion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/locomotion
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(locomotion_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/locomotion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/locomotion
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(locomotion_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locomotion)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locomotion\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locomotion
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(locomotion_generate_messages_py std_msgs_generate_messages_py)
endif()
