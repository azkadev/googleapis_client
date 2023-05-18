cmake_minimum_required(VERSION 3.10)
project(googleapis_client_flutter_library VERSION 0.0.0 LANGUAGES C CXX)

add_library(googleapis_client_flutter SHARED
  "googleapis_client.cpp"
)

set_target_properties(googleapis_client_flutter PROPERTIES
  # PUBLIC_HEADER googleapis_client_flutter.h
  OUTPUT_NAME "googleapis_client"
)

target_compile_definitions(googleapis_client_flutter PUBLIC DART_SHARED_LIB)
