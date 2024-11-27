project(SoundProcessorCore)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

file(GLOB CORE_FILES *)
file(GLOB WAV_FILES Wav/*)
file(GLOB CONVS_FILES Converters/*)

add_library(SoundProcessorCore 
    ${CORE_FILES}
    ${WAV_FILES}
    ${CONVS_FILES}
    Converters/IConverter.h
    )
set_target_properties(SoundProcessorCore PROPERTIES LINKER_LANGUAGE CXX)

include_directories(src/SoundProcessorCore)