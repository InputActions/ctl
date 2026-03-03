find_package(CLI11 CONFIG REQUIRED)
find_package(Qt6 ${QT_MIN_VERSION} CONFIG REQUIRED COMPONENTS
    DBus
)

add_executable(inputactions
    main.cpp
)
target_link_libraries(inputactions PRIVATE
    CLI11::CLI11
    Qt6::DBus
)

install(
    TARGETS inputactions
    COMPONENT ctl
)