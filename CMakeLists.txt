cmake_minimum_required(VERSION 2.6)

set(APP_NAME magicTower)
project (${APP_NAME})

option(USE_CHIPMUNK "Use chipmunk for physics library" ON)
option(USE_BOX2D "Use box2d for physics library" OFF)
option(DEBUG_MODE "Debug or release?" ON)

if(DEBUG_MODE)
  set(CMAKE_BUILD_TYPE Debug)
else(DEBUG_MODE)
  set(CMAKE_BUILD_TYPE Release)
endif(DEBUG_MODE)

set(CMAKE_C_FLAGS_DEBUG "-DCOCOS2D_DEBUG=1")
set(CMAKE_CXX_FLAGS_DEBUG ${CMAKE_C_FLAGS_DEBUG})

ADD_DEFINITIONS(-DUNICODE -D_UNICODE)

if(WIN32)
  ADD_DEFINITIONS (-D_USRDLL -DCOCOS2DXWIN32_EXPORTS -D_WINDOWS -DWIN32)
  if(MSVC)
    ADD_DEFINITIONS(-D_CRT_SECURE_NO_WARNINGS 
					-D_SCL_SECURE_NO_WARNINGS 
					-wd4251 -wd4244 -wd4334 
					-wd4005 -wd4820 -wd4710
					-wd4514 -wd4056 -wd4996 -wd4099
					-MP)
    if(DEBUG_MODE)
      ADD_DEFINITIONS(-MDd)
    else(DEBUG_MODE)
    endif(DEBUG_MODE)
  else(MSVC)#MINGW
  
  endif(MSVC)
elseif(APPLE)

else()#Linux
  ADD_DEFINITIONS(-DLINUX)
endif()

if(NOT MSVC)# all gcc
set(CMAKE_C_FLAGS_DEBUG "-g -Wall -DCOCOS2D_DEBUG=1")
set(CMAKE_CXX_FLAGS_DEBUG ${CMAKE_C_FLAGS_DEBUG})
set(CMAKE_C_FLAGS ${CMAKE_C_FLAGS} "-std=c99")
set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} "-std=c++11")
endif()

if(MINGW)
  add_definitions(-DGLEW_STATIC)
endif()

if(USE_CHIPMUNK)
  message("Using chipmunk ...")
  add_definitions(-DCC_ENABLE_CHIPMUNK_INTEGRATION=1)
elseif(USE_BOX2D)
  message("Using box2d ...")
  add_definitions(-DCC_ENABLE_BOX2D_INTEGRATION=1)
else(USE_CHIPMUNK)
  message(FATAL_ERROR "Must choose a physics library.")
endif(USE_CHIPMUNK)

# architecture
if ( CMAKE_SIZEOF_VOID_P EQUAL 8 )
set(ARCH_DIR "64-bit")
else()
set(ARCH_DIR "32-bit")
endif()

# platform
if(WIN32) # Win32
  set(PLATFORM_FOLDER win32)
elseif(APPLE)# osx or ios
  set(PLATFORM_FOLDER mac)
else() # Assume Linux
  set(PLATFORM_FOLDER linux)
endif()

# src
set(COMMON_SRC
  Classes/AppDelegate.cpp
  Classes/AppDelegate.h
  Classes/HelloWorldScene.cpp
  Classes/HelloWorldScene.h
  proj.${PLATFORM_FOLDER}/main.cpp
)

if(WIN32) # Win32
set(GAME_SRC
  proj.${PLATFORM_FOLDER}/main.h
  proj.${PLATFORM_FOLDER}/resource.h
)
elseif(APPLE)# osx or ios
else() # Assume Linux
endif()

set(COCOS2D_ROOT ${CMAKE_SOURCE_DIR}/../cocos2d-x-3.0rc0)

# include
include_directories(
  ${CMAKE_SOURCE_DIR}/Classes
  ${COCOS2D_ROOT}
  ${COCOS2D_ROOT}/cocos
  ${COCOS2D_ROOT}/cocos/audio/include
  ${COCOS2D_ROOT}/cocos/2d
  ${COCOS2D_ROOT}/cocos/2d/renderer
  ${COCOS2D_ROOT}/cocos/2d/platform
  ${COCOS2D_ROOT}/cocos/2d/platform/desktop
  ${COCOS2D_ROOT}/cocos/2d/platform/${PLATFORM_FOLDER}
  ${COCOS2D_ROOT}/cocos/base
  ${COCOS2D_ROOT}/cocos/physics
  ${COCOS2D_ROOT}/cocos/editor-support
  ${COCOS2D_ROOT}/cocos/math/kazmath
  ${COCOS2D_ROOT}/extensions
  ${COCOS2D_ROOT}/external
  ${COCOS2D_ROOT}/external/edtaa3func
  ${COCOS2D_ROOT}/external/jpeg/include/${PLATFORM_FOLDER}
  ${COCOS2D_ROOT}/external/tiff/include/${PLATFORM_FOLDER}
  ${COCOS2D_ROOT}/external/webp/include/${PLATFORM_FOLDER}
  ${COCOS2D_ROOT}/external/tinyxml2
  ${COCOS2D_ROOT}/external/unzip
  ${COCOS2D_ROOT}/external/chipmunk/include/chipmunk
  ${COCOS2D_ROOT}/external/freetype2/include/${PLATFORM_FOLDER}
  ${COCOS2D_ROOT}/external/websockets/include/${PLATFORM_FOLDER}
  ${COCOS2D_ROOT}/external/spidermonkey/include/${PLATFORM_FOLDER}
)

if(WIN32)
  include_directories(
    ${COCOS2D_ROOT}/external/${PLATFORM_FOLDER}-specific/gles/include/OGLES
    ${COCOS2D_ROOT}/external/${PLATFORM_FOLDER}-specific/icon/include
    ${COCOS2D_ROOT}/external/${PLATFORM_FOLDER}-specific/zlib/include
    ${COCOS2D_ROOT}/external/glfw3/include/${PLATFORM_FOLDER}
    ${COCOS2D_ROOT}/external/curl/include/${PLATFORM_FOLDER}
  )
elseif(APPLE)
  include_directories(
    ${COCOS2D_ROOT}/external/glfw3/include/${PLATFORM_FOLDER}
  	${COCOS2D_ROOT}/external/curl/include/${PLATFORM_FOLDER}
  )
else()
  include_directories(
    /usr/include
    /usr/include/GLFW
    /usr/local/include/GLFW
    ${COCOS2D_ROOT}/external/${PLATFORM_FOLDER}-specific/fmod/include/${ARCH_DIR}
  )
endif()

# link
if(WIN32)
  if(NOT MINGW)
    link_directories(
      ${COCOS2D_ROOT}/build/${CMAKE_BUILD_TYPE}.win32
      ${COCOS2D_ROOT}/external/jpeg/prebuilt/${PLATFORM_FOLDER}
      ${COCOS2D_ROOT}/external/tiff/prebuilt/${PLATFORM_FOLDER}
      ${COCOS2D_ROOT}/external/png/prebuilt/${PLATFORM_FOLDER}
      ${COCOS2D_ROOT}/external/freetype2/prebuilt/${PLATFORM_FOLDER}
      ${COCOS2D_ROOT}/external/glfw3/prebuilt/${PLATFORM_FOLDER}
      ${COCOS2D_ROOT}/external/curl/prebuilt/${PLATFORM_FOLDER}
      ${COCOS2D_ROOT}/external/${PLATFORM_FOLDER}-specific/icon/prebuilt
      ${COCOS2D_ROOT}/external/${PLATFORM_FOLDER}-specific/zlib/prebuilt
      ${COCOS2D_ROOT}/external/${PLATFORM_FOLDER}-specific/gles/prebuilt
    )
  endif()
elseif(APPLE)
  link_directories(
    ${COCOS2D_ROOT}/external/glfw3/prebuilt/${PLATFORM_FOLDER}
  )
else()
  link_directories(
    /usr/local/lib
    ${COCOS2D_ROOT}/external/jpeg/prebuilt/${PLATFORM_FOLDER}/${ARCH_DIR}
    ${COCOS2D_ROOT}/external/tiff/prebuilt/${PLATFORM_FOLDER}/${ARCH_DIR}
    ${COCOS2D_ROOT}/external/webp/prebuilt/${PLATFORM_FOLDER}/${ARCH_DIR}
    ${COCOS2D_ROOT}/external/png/prebuilt/${PLATFORM_FOLDER}/${ARCH_DIR}
    ${COCOS2D_ROOT}/external/freetype2/prebuilt/${PLATFORM_FOLDER}/${ARCH_DIR}
    ${COCOS2D_ROOT}/external/websockets/prebuilt/${PLATFORM_FOLDER}/${ARCH_DIR}
    ${COCOS2D_ROOT}/external/${PLATFORM_FOLDER}-specific/fmod/prebuilt/${ARCH_DIR}
  )
endif()

# add the executable
add_executable(${APP_NAME}
  ${COMMON_SRC}
  ${GAME_SRC}
)

if ( CMAKE_SIZEOF_VOID_P EQUAL 8 )
set(FMOD_LIB "fmodex64")
else()
set(FMOD_LIB "fmodex")
endif()

if(WIN32)
  target_link_libraries(${APP_NAME}
	glew32
    libGUI
	libNetwork
	libLocalStorage
	libSpine
	libCocosStudio
	libCocosBuilder
	libExtensions
	libAudio
	libcocos2d
  )
elseif(APPLE)
else()
  target_link_libraries(${APP_NAME}
    ui
    network
    storage
    spine
    cocostudio
    cocosbuilder
    extensions
    audio
    cocos2d
    )
endif()

set(APP_BIN_DIR "${CMAKE_BINARY_DIR}/bin")

set_target_properties(${APP_NAME} PROPERTIES
     RUNTIME_OUTPUT_DIRECTORY  "${APP_BIN_DIR}")

macro(configure_files srcDir destDir)
    make_directory(${destDir})

    file(GLOB templateFiles ${srcDir})
    foreach(templateFile ${templateFiles})
        if(NOT IS_DIRECTORY ${templateFile})
			# message(STATUS "Configuring file ${templateFile}")
            configure_file(${templateFile} ${destDir})
        endif(NOT IS_DIRECTORY ${templateFile})
    endforeach(templateFile)
endmacro(configure_files)

macro(configure_libs srcDir destDir)
    make_directory(${destDir})

    file(GLOB templateFiles ${srcDir})
    foreach(templateFile ${templateFiles})
        if(NOT IS_DIRECTORY ${templateFile})
			# message(STATUS "Configuring file ${templateFile}")
            configure_file(${templateFile} ${destDir} COPYONLY)
        endif(NOT IS_DIRECTORY ${templateFile})
    endforeach(templateFile)
endmacro(configure_libs)

# copy libraries
if(WIN32)
    configure_libs(${COCOS2D_ROOT}/external/tiff/prebuilt/${PLATFORM_FOLDER}/*.dll ${APP_BIN_DIR}/)
    configure_libs(${COCOS2D_ROOT}/external/curl/prebuilt/${PLATFORM_FOLDER}/*.dll ${APP_BIN_DIR}/)
    configure_libs(${COCOS2D_ROOT}/external/${PLATFORM_FOLDER}-specific/icon/prebuilt/*.dll ${APP_BIN_DIR}/)
    configure_libs(${COCOS2D_ROOT}/external/${PLATFORM_FOLDER}-specific/zlib/prebuilt/*.dll ${APP_BIN_DIR}/)
    configure_libs(${COCOS2D_ROOT}/external/${PLATFORM_FOLDER}-specific/gles/prebuilt/*.dll ${APP_BIN_DIR}/)
elseif(APPLE)

else()

endif()

# copy objects，以后新加物体不用再加一条了
make_directory(${APP_BIN_DIR}/Resources/)
configure_files(${CMAKE_CURRENT_SOURCE_DIR}/Resources/* ${APP_BIN_DIR}/Resources/)

