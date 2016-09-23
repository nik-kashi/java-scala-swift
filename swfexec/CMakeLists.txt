cmake_minimum_required(VERSION 3.6)
project(swfexec)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
    Sources/main.swift
    Package.swift)

add_executable(swfexec ${SOURCE_FILES})