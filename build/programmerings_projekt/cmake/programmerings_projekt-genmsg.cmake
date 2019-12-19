# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "programmerings_projekt: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iprogrammerings_projekt:/home/ros/catkin_ws/src/programmerings_projekt/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(programmerings_projekt_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ros/catkin_ws/src/programmerings_projekt/msg/Num.msg" NAME_WE)
add_custom_target(_programmerings_projekt_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "programmerings_projekt" "/home/ros/catkin_ws/src/programmerings_projekt/msg/Num.msg" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(programmerings_projekt
  "/home/ros/catkin_ws/src/programmerings_projekt/msg/Num.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/programmerings_projekt
)

### Generating Services

### Generating Module File
_generate_module_cpp(programmerings_projekt
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/programmerings_projekt
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(programmerings_projekt_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(programmerings_projekt_generate_messages programmerings_projekt_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/programmerings_projekt/msg/Num.msg" NAME_WE)
add_dependencies(programmerings_projekt_generate_messages_cpp _programmerings_projekt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(programmerings_projekt_gencpp)
add_dependencies(programmerings_projekt_gencpp programmerings_projekt_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS programmerings_projekt_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(programmerings_projekt
  "/home/ros/catkin_ws/src/programmerings_projekt/msg/Num.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/programmerings_projekt
)

### Generating Services

### Generating Module File
_generate_module_eus(programmerings_projekt
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/programmerings_projekt
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(programmerings_projekt_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(programmerings_projekt_generate_messages programmerings_projekt_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/programmerings_projekt/msg/Num.msg" NAME_WE)
add_dependencies(programmerings_projekt_generate_messages_eus _programmerings_projekt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(programmerings_projekt_geneus)
add_dependencies(programmerings_projekt_geneus programmerings_projekt_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS programmerings_projekt_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(programmerings_projekt
  "/home/ros/catkin_ws/src/programmerings_projekt/msg/Num.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/programmerings_projekt
)

### Generating Services

### Generating Module File
_generate_module_lisp(programmerings_projekt
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/programmerings_projekt
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(programmerings_projekt_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(programmerings_projekt_generate_messages programmerings_projekt_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/programmerings_projekt/msg/Num.msg" NAME_WE)
add_dependencies(programmerings_projekt_generate_messages_lisp _programmerings_projekt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(programmerings_projekt_genlisp)
add_dependencies(programmerings_projekt_genlisp programmerings_projekt_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS programmerings_projekt_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(programmerings_projekt
  "/home/ros/catkin_ws/src/programmerings_projekt/msg/Num.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/programmerings_projekt
)

### Generating Services

### Generating Module File
_generate_module_nodejs(programmerings_projekt
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/programmerings_projekt
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(programmerings_projekt_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(programmerings_projekt_generate_messages programmerings_projekt_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/programmerings_projekt/msg/Num.msg" NAME_WE)
add_dependencies(programmerings_projekt_generate_messages_nodejs _programmerings_projekt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(programmerings_projekt_gennodejs)
add_dependencies(programmerings_projekt_gennodejs programmerings_projekt_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS programmerings_projekt_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(programmerings_projekt
  "/home/ros/catkin_ws/src/programmerings_projekt/msg/Num.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/programmerings_projekt
)

### Generating Services

### Generating Module File
_generate_module_py(programmerings_projekt
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/programmerings_projekt
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(programmerings_projekt_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(programmerings_projekt_generate_messages programmerings_projekt_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/programmerings_projekt/msg/Num.msg" NAME_WE)
add_dependencies(programmerings_projekt_generate_messages_py _programmerings_projekt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(programmerings_projekt_genpy)
add_dependencies(programmerings_projekt_genpy programmerings_projekt_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS programmerings_projekt_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/programmerings_projekt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/programmerings_projekt
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(programmerings_projekt_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/programmerings_projekt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/programmerings_projekt
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(programmerings_projekt_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/programmerings_projekt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/programmerings_projekt
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(programmerings_projekt_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/programmerings_projekt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/programmerings_projekt
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(programmerings_projekt_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/programmerings_projekt)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/programmerings_projekt\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/programmerings_projekt
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(programmerings_projekt_generate_messages_py geometry_msgs_generate_messages_py)
endif()
