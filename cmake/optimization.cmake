if (CMAKE_COMPILER_IS_GNUCXX  OR  "${CMAKE_C_COMPILER_ID}" MATCHES Clang OR "${CMAKE_C_COMPILER_ID}" MATCHES GNU)
set (CMAKE_C_FLAGS_DEBUG "-O0 -g")
set (CMAKE_C_FLAGS_RELEASE "-O2")
set (CMAKE_CXX_FLAGS_DEBUG "-O0 -g")
set (CMAKE_CXX_FLAGS_RELEASE "-O2")
set (CMAKE_C_FLAGS_RELWITHDEBINFO "-O2 -g")
set (CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O2 -g")
else (MSVC)
set (CMAKE_C_FLAGS_DEBUG "/Od /Zi /MDd /D_DEBUG")
set (CMAKE_C_FLAGS_RELEASE "/O2 /MD /D NDEBUG")
set (CMAKE_CXX_FLAGS_DEBUG "/Od /Zi /MDd /D_DEBUG")
set (CMAKE_CXX_FLAGS_RELEASE "/O2 /MD /D NDEBUG")
set (CMAKE_C_FLAGS_RELWITHDEBINFO "/O2 /Zi /MD /D NDEBUG")
set (CMAKE_CXX_FLAGS_RELWITHDEBINFO "/O2 /Zi /MD /D NDEBUG")
endif()
message(status "Set optimization flags")
