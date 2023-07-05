
#bazel build --cxxopt=-std=c++17 //aby3:common_lib
#bazel build --cxxopt=-std=c++17 //aby3:circuit_lib
#bazel build --cxxopt=-std=c++17 //aby3:ot_lib
#bazel build --cxxopt=-std=c++17 //aby3:sh3_lib
#bazel build --cxxopt=-std=c++17 //aby3_tests:aby3_test_lib

#aby3-db
#bazel build --cxxopt=-std=c++17 //aby3-DB:aby3_db_lib
#bazel build --cxxopt=-std=c++17 //aby3-DB_tests:aby3_db_test_lib
#bazel build --cxxopt=-std=c++17 //aby3-ML:aby3_ml_lib

TARGET = //frontend:main

release:
	bazel build --config=x86_64 ${TARGET}
	#bazel build --config=aarch64 ${TARGET}

.PHONY: clean

clean:
	bazel clean
