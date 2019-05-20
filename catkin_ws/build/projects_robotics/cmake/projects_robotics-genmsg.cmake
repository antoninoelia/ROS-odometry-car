# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "projects_robotics: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iprojects_robotics:/home/antonino/project/catkin_ws/src/projects_robotics/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(projects_robotics_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/antonino/project/catkin_ws/src/projects_robotics/msg/floatStamped.msg" NAME_WE)
add_custom_target(_projects_robotics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "projects_robotics" "/home/antonino/project/catkin_ws/src/projects_robotics/msg/floatStamped.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(projects_robotics
  "/home/antonino/project/catkin_ws/src/projects_robotics/msg/floatStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/projects_robotics
)

### Generating Services

### Generating Module File
_generate_module_cpp(projects_robotics
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/projects_robotics
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(projects_robotics_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(projects_robotics_generate_messages projects_robotics_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/antonino/project/catkin_ws/src/projects_robotics/msg/floatStamped.msg" NAME_WE)
add_dependencies(projects_robotics_generate_messages_cpp _projects_robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(projects_robotics_gencpp)
add_dependencies(projects_robotics_gencpp projects_robotics_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS projects_robotics_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(projects_robotics
  "/home/antonino/project/catkin_ws/src/projects_robotics/msg/floatStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/projects_robotics
)

### Generating Services

### Generating Module File
_generate_module_eus(projects_robotics
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/projects_robotics
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(projects_robotics_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(projects_robotics_generate_messages projects_robotics_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/antonino/project/catkin_ws/src/projects_robotics/msg/floatStamped.msg" NAME_WE)
add_dependencies(projects_robotics_generate_messages_eus _projects_robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(projects_robotics_geneus)
add_dependencies(projects_robotics_geneus projects_robotics_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS projects_robotics_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(projects_robotics
  "/home/antonino/project/catkin_ws/src/projects_robotics/msg/floatStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/projects_robotics
)

### Generating Services

### Generating Module File
_generate_module_lisp(projects_robotics
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/projects_robotics
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(projects_robotics_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(projects_robotics_generate_messages projects_robotics_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/antonino/project/catkin_ws/src/projects_robotics/msg/floatStamped.msg" NAME_WE)
add_dependencies(projects_robotics_generate_messages_lisp _projects_robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(projects_robotics_genlisp)
add_dependencies(projects_robotics_genlisp projects_robotics_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS projects_robotics_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(projects_robotics
  "/home/antonino/project/catkin_ws/src/projects_robotics/msg/floatStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/projects_robotics
)

### Generating Services

### Generating Module File
_generate_module_nodejs(projects_robotics
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/projects_robotics
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(projects_robotics_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(projects_robotics_generate_messages projects_robotics_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/antonino/project/catkin_ws/src/projects_robotics/msg/floatStamped.msg" NAME_WE)
add_dependencies(projects_robotics_generate_messages_nodejs _projects_robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(projects_robotics_gennodejs)
add_dependencies(projects_robotics_gennodejs projects_robotics_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS projects_robotics_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(projects_robotics
  "/home/antonino/project/catkin_ws/src/projects_robotics/msg/floatStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/projects_robotics
)

### Generating Services

### Generating Module File
_generate_module_py(projects_robotics
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/projects_robotics
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(projects_robotics_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(projects_robotics_generate_messages projects_robotics_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/antonino/project/catkin_ws/src/projects_robotics/msg/floatStamped.msg" NAME_WE)
add_dependencies(projects_robotics_generate_messages_py _projects_robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(projects_robotics_genpy)
add_dependencies(projects_robotics_genpy projects_robotics_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS projects_robotics_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/projects_robotics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/projects_robotics
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(projects_robotics_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/projects_robotics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/projects_robotics
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(projects_robotics_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/projects_robotics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/projects_robotics
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(projects_robotics_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/projects_robotics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/projects_robotics
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(projects_robotics_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/projects_robotics)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/projects_robotics\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/projects_robotics
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(projects_robotics_generate_messages_py std_msgs_generate_messages_py)
endif()
